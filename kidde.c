
/* 16F883 shell for C */

#include "p16f883.h"


#asm

	__CONFIG    _CONFIG1, _LVP_OFF & _FCMEN_ON & _IESO_OFF & _BOR_OFF & _CPD_OFF & _CP_OFF & _MCLRE_ON & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT
	__CONFIG    _CONFIG2, _WRT_OFF & _BOR21V

#endasm

/*  defines */
#define T1ON  1
#define T1OFF  0
#define T1LOW   0x17
#define T1HIGH  0xfc


/* eeprom   ( uses the extern keyword ) */
/* seven segment data will need to be complimented before displaying for the common anode display */
extern char segment[16] = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x58,0x5e,0x79,0x71};

/* access ram  - 16 locations, use wisely */
#pragma pic 112

char w_temp;    
char status_temp;
char pclath_temp;
char _temp;     /* temp location for subtracts and shifts */
char _temp2;    /* for interrupt subs and shifts */
char _eedata;   /* eedata in access ram */

/* 10 more locations for access ram */
char digits[3];    /* raw display data */
char dp;           /* bits encoded decimal point.  4, 8, or 0x10 normally unless want to display more than one dp */
char dig_bit;      /* bit representation of which multiplexed digit, 4 8 or 0x10 */
char dig_count;    /* count representation of which multiplexed digit 0 1 or 2 */
char portb;        /* ram copy of port b data */
char ticks;        /* ms counter */
char switches;     /* read two bits on the B port */


/* bank 0 ram - 80 locations */
/* any arrays need to be in page 0 or page 1 as the IRP bit is not updated */
#pragma pic  32
/* integer math vars */
char accl;
char acch;
char argl;
char argh;
char overflow;
char carry;



/* bank 1 ram - 80 bytes - placing variables here may speed code when also accessing bank1 registers */
#pragma pic  160
char result_high;
char result_low;

/* bank 2 ram - no arrays - 80 locations - function args and statics are also here */
#pragma pic 288

/*  ********
#pragma shortcall   - use for functions that do not call other pages
#pragma longcall    - use for functions that call other pages
                    - do not allow code to pass over the page boundary
********  */

#pragma shortcall

main(){       /* any page */

/* testing variables, delete these later */
static char counter;
static char adder;
static char holdoff;
static char temp;

   holdoff = counter = 0;
   adder = 1;
   char_display( counter );
   temp = ticks;

for(;;){    /* loop main */
   
   while( temp == ticks );    /* waste 1 ms */

   if( holdoff ) --holdoff;   /* crude switch debounce */
   else{
      if( switches ) holdoff = 200;
      if( switches & 128 ) adder -= 1;   /* left switch counts down, right switch counts up */
      if( switches &  32 ) adder += 1; 
   }

   if( ticks >= 250 ){        /* display changes 4 times a second */
      counter += adder;
      char_display( counter );
      ticks = 0;
   }
   temp = ticks;   

}
}

ad_convert( ){   /* special ad conversion on channel AD0 with pre-discharge and sample and hold */

   ADCON0 =  1 + 64;    /* on, fosc/8 for 4 meg clock */
   ADCON1 = 128;                        /* right justified result */
   TRISA = ( 1+64 ) ^ 0xff;
   PORTA = 0;           /* discharge */
   #asm
     nop
     nop
     nop
     nop
     nop
   #endasm
   TRISA = 64 ^ 0xff;
   PORTA = 64;          /* sample */
   #asm
     nop
     clrf PORTA         ; hold after 2 us
          
     nop
     nop
     nop
     nop
     nop            ;  min sample time 5 us
     
     nop
     nop
     nop
   #endasm

   ADCON0 |= 2;        /* go bit */
   #asm
     nop
     nop
     nop
   #endasm
   while( ADCON0 & 2 );  /* wait for done */


   result_low = ADRESL;
   result_high = ADRESH;

}

char_display( char val ){    /* displays 0 to 255 */
/*static char t;*/


accl  = val;
acch = 0;
int_display();


/*
   t = 0;
   while( val >= 100 ) ++t , val -= 100;
   digits[2] = segment[t];

   t = 0;
   while( val >= 10 ) ++t , val -= 10;
   digits[1] = segment[t];
   digits[0] = segment[val];
*/
}

zacc(){          /* zero accumulator */

   accl = acch = 0;
}

char dadd(){     /* double add, return carry */

   #asm
      BANKSEL overflow
      clrf    overflow
      clrf    carry

      movf	argl,W
      addwf	accl,F          ; add low bytes
      btfsc   STATUS,C
      incf    carry,F          ; save carry

      movf	carry,W        ; add the carry if any to high byte
      addwf	acch,F

      btfsc   STATUS,C
      incf    overflow,F        ; capture and save if adding one caused overflow 

      movf	argh,W          ; add the high bytes
      addwf	acch,F

      btfsc   STATUS,C
      incf    overflow,F        ; merge in if had an overflow here

   #endasm

   return overflow;     /* return 0, 1, or 2 */
   
}

char dsub(){    /* double subb, return borrow as a true value */


   #asm

      BANKSEL overflow
      clrf    overflow
      clrf    carry

      movf	argl,W
      subwf	accl,F          ; sub low bytes
      btfss   STATUS,C         ; carry set means no borrow, skip next
      incf    carry,F          ; save borrow

      movf	carry,W        ; sub the borrow if any from high byte
      subwf	acch,F

      btfss   STATUS,C
      incf    overflow,F        ; capture and save if subbing one caused a borrow 

      movf	argh,W          ; sub the high bytes
      subwf	acch,F

      btfss   STATUS,C
      incf    overflow,F        ; merge in if had a borrow here

   #endasm
   return overflow;     /* return borrow as true */

}

int_display(){   /* assigns digits[].  Display accumulator value in base 10.  0 to 999 */
static char t;

   /* before calling, one must load the accumulator with the value to display */

   /* load the arg with 1000 */
   t = dp = 0;
   argh = 3;
   argl = 0xe8;
   while( dsub() == 0 ) ++t;    /* repeated subtraction is division */
   if( t ) dp = 4 + 8 + 0x10;   /* light all the decimal points to show value is above 999 */
   dadd();                      /* restore accumulator to the value before we overflowed */

   /* load the arg with 100 */
   t = 0;
   argh = 0;
   argl = 100;
   while( dsub() == 0 ) ++t;
   dadd();
   digits[2] = segment[t];

   t = 0;
   argl= 10;
   while( dsub() == 0 ) ++t;
   dadd();
   digits[1] = segment[t];
   
   digits[0] = segment[accl];
      
}

#pragma longcall

/* 
   can use long call stub functions here to call page 1 from page 0
   without the need to always use long calls 
*/

/* end of page 0 program section */


#asm
           org  0x800
#endasm

/********************  start of page 1 code section *************************/


init(){       /* any page, called once from reset */

  /* OSCCON= 0x71;  */      /* 8 meg internal clock */
   /* or the default is 4 meg internal clock */

   TRISB = 0;                /* Port B all outputs !!! not needed later ? */
   TRISC = 0xff ^ ( 4+8+0x10 );    /* LED enables as outputs */

  /* make sure ansel bits are correct for any digital reads on RA and RB ports */
   ANSELH = 0;             /* B port as digital pins read and write */
  
  /* initialize variables that need a known value at startup */
   dp = dig_count = 0;
   dig_bit   = 4;

/* start timer */
   TMR1H = T1HIGH;     /* with 4 meg clock, interrupt at 1ms rate */
   TMR1L = T1LOW;
   T1CON = T1ON;

/* enable interrupts */
   PIE1 = 1;        /* timer 1 interrupt */
   INTCON = 0xc0;

}



/* any page. Save _temp if using any calls to other functions */
_interrupt(){  /* status has been saved */

   T1CON= T1OFF:         /* 1 ms timer rate */
   TMR1H = T1HIGH;  
   TMR1L += T1LOW - 5;   /*  adjust for timer off time */
   T1CON= T1ON;  
   ++ticks;              /* count milliseconds */

   /* mux the display and read the switches */
   PORTC &= (( 4+8+0x10 ) ^ 0xff);        /* display off */
   /* PORTB = 0xff;   */         /* set high to charge bus */
   TRISB = 0xff;            /* quiet time */

   /* set new display data */
   portb = digits[dig_count];
   if( dp & dig_bit ) portb |= 0x80;   /* add the decimal point */
   PORTB = portb ^ 0xff;               /* invert data for the common anode display */

   /* switch read delayed as long as possible for longest settling time */
   switches = (PORTB & (128+32 ) ) ^ (128+32);     /* mask bits, invert bits */
   
   TRISB = 0x00;                       /* enable port b outputs */
   PORTC = dig_bit;                    /* enable drive */ 

   /* set up for the next segment to display */
   dig_bit <<= 1;
   if( ++dig_count >= 3 ){
      dig_count = 0;
      dig_bit = 0x04;
   }

/* restore status */
#asm
       banksel    PIR1                       ; clear timer 1 interrupt flag
       bcf        PIR1,TMR1IF

	movf		pclath_temp,w		; retrieve copy of PCLATH register
	movwf		PCLATH			; restore pre-isr PCLATH register contents	
	movf		status_temp,w		; retrieve copy of STATUS register
	movwf		STATUS			; restore pre-isr STATUS register contents
	swapf		w_temp,f
	swapf		w_temp,w		; restore pre-isr W register contents
#endasm
}

