
/* 16F883 shell for C */

#include "p16f883.h"


#asm

	__CONFIG    _CONFIG1, _LVP_OFF & _FCMEN_ON & _IESO_OFF & _BOR_OFF & _CPD_OFF & _CP_OFF & _MCLRE_ON & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT
	__CONFIG    _CONFIG2, _WRT_OFF & _BOR21V

#endasm

/*  defines */
#define T1ON  1
#define T1OFF  0
#define T1LOW   0x18
#define T1HIGH  0xfc
/* segments */
#define A_  1
#define B_  2
#define C_  4
#define D_  8
#define E_  16
#define F_  32
#define G_  64
#define DP_ 128

/* compiler is buggy with structures, perhaps better to just have a char array */
struct EVENT{
   char age;         /* day when logged, relative to program start */
   char low;         /* voltage limits */
   char high;
   char days;
   char hours;       /* duration */
   char minutes;
   char seconds;
};


/* eeprom   ( uses the extern keyword ) */
/* seven segment data will need to be complimented before displaying for the common anode display */
extern char segment[16] = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x58,0x5e,0x79,0x71};
extern char dummy[1]= 0xff;            /* used to read events as a linear array */
extern struct EVENT eevent[16] = {
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff },
     {0xff,0xff,0xff,0xff,0xff,0xff,0xff }
     };

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
char seconds;
char quarter_sec;
char minutes;
char hours;

char days;
char sum_low;
char sum_high;
char pos_slip;
char neg_slip;
char dis_what;
char in_progress;    /* voltage anomaly happening */
char in_prog_count;  /* noise descriminator count */
char ee_index;       /* next available write slot */
char ee_adr;

char dis_state;
char dis_event;
char new_event;


struct EVENT event0;
char bank_bug;           /* must be in same bank as the structure. Error of missing banksel in generated code */

/* bank 1 ram - 80 bytes - placing variables here may speed code when also accessing bank1 registers */
#pragma pic  160
char result_low;
char result_high;
char res0_l;
char res0_h;
char res1_l;
char res1_h;
char res2_l;
char res2_h;

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
static char nslip_cnt;

   nslip_cnt = holdoff = counter = 0;
   adder = 1;
   char_display( counter );
   temp = ticks;

for(;;){    /* loop main */
   
   while( temp == ticks );    /* waste 1 ms */
   if( ++temp >= 250 ) temp -=250;
 
   if( ticks >= 250 ){                   /* keep time */
      ticks -= 250;
      if( pos_slip >= 250 ){     /* adjust time to 60 cycle line time */
         ++quarter_sec;
         pos_slip -= 250;
       } 
      if( neg_slip >=250 ){      /* do negative slip in time and avoid quarter_sec */
         ++nslip_cnt;                /* becoming less than zero ( ie 255 ) */
         neg_slip -= 250;
      }
      if( nslip_cnt && quarter_sec != 0 ){
           --quarter_sec;
           --nslip_cnt;
      } 
      if( ++quarter_sec >= 4 ){
         quarter_sec -= 4;
         ++seconds;  event0.seconds = event0.seconds + 1;
         if( seconds >= 60 ) seconds -= 60, ++minutes;
         if(dis_what == 1) char_display(seconds);
         if( dis_what == 3 ) dis_events();
         if( new_event ) dp ^= 8;          /* blink middle dp */
      }
   }
   /* more time counters */
   if( minutes >= 60 ) minutes -= 60, ++hours;
   if( hours >= 24 ){
      hours -= 24, ++days;
      /* set a flag to wipe out any events logged 256 days ago, ie age = days */
      /* empty flag can be value 255 in the hours field ( normally not over 23 ) */
   }
   /* event time, just let this run all the time and reset to zero when detect an AC line event */
   if( event0.seconds >= 60 ) event0.seconds = event0.seconds - 60, event0.minutes = event0.minutes + 1;
   if( event0.minutes >= 60 ) event0.minutes = event0.minutes - 60, event0.hours = event0.hours + 1;
   if( event0.hours >= 24 ) event0.hours = event0.hours - 24, event0.days = event0.days + 1;

   convert_timer();      /* do the A/D conversions on the powerline voltage */

   if( holdoff ) --holdoff;   /* switch debounce */
   else{
      if( switches ) holdoff = 200;
      if( switches & 32 ){                             /* display events, previous event */
          dis_state = 0;
          if( dis_what != 3 ) dis_what = 3;
          else dis_event = (dis_event - 1) & 15;       /* right is previous event */
      }
      if( switches &  128) dis_what = (dis_what + 1) & 3 , dis_state = 0;   /* left is display what */
   }   

}
}



dis_events(){        /* display events saved in eeprom */
static char i;
static char index;
static char j;
static char t;

   /* get here once a second */
   new_event = 0;            /* remove the dp blinking */

   if( t ){    /* extra second delay for displaying values */
     t = 0;
     return;
   }

   switch( dis_state ){

      case 0:      /* starting a new event to display */
         for(j = 0; j < 16; ++j){
            index = 1;              
            i = dis_event;
            while( i-- ) index += 7;
            if( dummy[index + 4] != 0xff ) break;    /* check hours has been written with a value */
            --dis_event;
            dis_event &= 15;
         }
         char_display( dis_event );
         digits[2] = segment[14];    /* overwrite msb with the letter E */         
      break;

      case 1:    /* word age */
         digits[2] = segment[10];   /* A */
         digits[1] = segment[6];    /* 6 for a G */
         digits[0] = segment[14];   /* E */
      break;

      case 2:    /* value age */                
         char_display( days - dummy[index] );
         t = 1;
      break;

      case 3:    /* word low */
         digits[2] = D_ + E_ + F_;
         digits[1] = C_ + D_ + E_ + G_;
         digits[0] = 0;      /* blank */
      break;

      case 5:    /* word high */
          digits[2] = B_ + C_ + E_ + F_ + G_;
          digits[1] = E_;
          digits[0] = 0;
      break;

      case 7:    /* word days */
          digits[2] = B_ + C_ + E_ + D_ + G_;
          digits[1] = segment[10];
          digits[0] = segment[4];
      break;

      case 9:    /* word hours */
          digits[2] = B_ + C_ + E_ + F_ + G_;
          digits[1] = E_ + G_;
          digits[0] = segment[5]; 
      break;

      case 11:   /* word minutes */
          digits[2] = A_ + B_ + C_ + E_ + F_;
          digits[1] = E_;
          digits[0] = E_ + G_ + C_;
      break;

      case 13:   /* word seconds */
          digits[2] = segment[5];
          digits[1] = segment[14];
          digits[0] = G_ + E_ + D_;
      break;

      case 14:     /* sub out 4 seconds if event is short */
          i = dummy[index+6];
          if( dummy[index+5] ) char_display(i);   /* minutes has non zero time, so just ignore the extra 4 seconds */
          else{                                   /* ignored so don't have to borrow from minutes hours days */
               i = i - 3;                         /* leave a second in for the detect start time taken */
               if( i > 59 ) i = 0;
               char_display(i);                   /* 4 seconds is the time taken to detect the end of the event */
          }
          t = 1;                                  
      break;

      default:    /* values */   
          i = ( dis_state - 2 ) >> 1;
          char_display( dummy[index + i] );
          t = 1;
      break;

   }
   
   ++dis_state;
   if( dis_state >= 15 ) dis_state = 1;
}

convert_timer(){   /* get a result from 3 conversions every 200 ms. 5 results a second */
static char slip;  /* attempt to lock on 60 cycle phase */
static char timer;

   --timer;

   if( timer == 147 ){   /* phase 240 */
      ad_convert();
      res2_l = result_low;
      res2_h = result_high;
   }

   if( timer == 75 ){   /* phase 120 */
      ad_convert();
      res1_l = result_low;
      res1_h = result_high;
   }

   if( timer == 3 ){    /* phase 0 */
      ad_convert();
      res0_l = result_low;
      res0_h = result_high;
      if( looks_ok() ) ave_values();
   }
   
   if( timer == 0 ){
      slip = 0;
      dp = 0;

      /* do some integer compares.   Want to lock so lowest val is at 0 phase */
      
      acch = res2_h;   accl = res2_l;
      argh = 0;        argl = 30;     dadd();   /* add deadband, argl was 20 here and working */
      argh = res1_h;   argl = res1_l;
      if( dsub() ) ++slip, ++neg_slip, dp = 0x10;   /* too fast, add an extra count to sample timer */

      acch = res1_h;   accl = res1_l;
      argh = 0;        argl = 30;     dadd();
      argh = res2_h;   argl = res2_h;
      if( dsub() ) --slip, ++pos_slip, dp = 4;     /* clock too slow, loosing time */

      timer = 200 + slip;
   }

}

ave_values(){   /* average 4 values, convert to voltage and then display */
static char t;  /* rough voltage calculation is ( raw - 48 ) / 2 */
                /* better calculation is (raw - 20) / 2.25 */
                /* or (raw - 20 ) * 4 / 9 */

   acch = sum_high;
   accl = sum_low;
   argh = res0_h;
   argl = res0_l;
   dadd();
   if( ++t >= 4 ){
      argl = 4*20;
      argh = 0;
      if( dsub() ) zacc();    /* sub out 4 * 20 and if borrow then call it zero */

      /* argl = accl;  argh = acch; */
      /* dadd(); dadd(); dadd(); */    /* mult by 4 not needed as already 4 times the proper value */

      argl = 9;  argh = 0;   /* set up for divide by repeated subtraction, assume result is 8 bits */
      t = 0;
      while( dsub() == 0 ) ++t;
      if( dis_what == 0 ) char_display(t);
      else if( dis_what == 2 ){
         acch = res0_h;  accl = res0_l;  int_display();  /* display raw */
      }
      event_check(t);
      t = sum_high = sum_low = 0;
   }
   else{
      sum_high = acch;
      sum_low  = accl;
   }
}

char looks_ok(){   /* avoid saving values when the timers and 60 cycle look out of sync */

     /* nominal value is 283, lowest value is the correct value */

      if( res0_h == 0 && res0_l < 60 ) return 1;    /* no ac voltage is ok */

      acch = res1_h;   accl = res1_l;
      argh = 0;        argl = 10;     dadd();   /* add small deadband for noise */
      argh = res0_h;   argl = res0_l;
      if( dsub() ) return 0;              /* desired value is greater than unwanted value + 10 */

      acch = res2_h;   accl = res2_l;
      argh = 0;        argl = 10;     dadd();   /* add deadband */
      argh = res0_h;   argl = res0_l;
      if( dsub() ) return 0;              /* desired value is greater than unwanted value + 10 */

      return 1;    /* passed ok test */
}

ad_convert( ){   /* special ad conversion on channel AD0 with pre-discharge and sample and hold */

   no_interrupts();
   ADCON0 =  1 + 64;    /* on, fosc/8 for 4 meg clock */
   ADCON1 = 128;                        /* right justified result */
   PORTA = 0;          
   TRISA = ( 1+64 ) ^ 0xff;     /* discharge */

   #asm
     nop
     nop
     nop
     nop
     nop

    ; nop      ; double discharge time any different? one count with zero series resistance
    ; nop
    ; nop
    ; nop
    ; nop

   #endasm
   TRISA = 64 ^ 0xff;
   PORTA = 64;          /* sample */
   #asm
   ;  nop               one us when commented out
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
   interrupts();
   while( ADCON0 & 2 );  /* wait for done */


   result_high = ADRESH;
   result_low = ADRESL;

}

char_display( char val ){    /* displays 0 to 255 */


accl  = val;
acch = 0;
int_display();

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


interrupts(){

   #asm
      bsf   INTCON,GIE   
   #endasm
}

no_interrupts(){

   #asm
      bcf   INTCON,GIE
      btfsc INTCON,GIE    ;see AN576
      goto $-2
   #endasm

}

#pragma longcall

/* 
   can use long call stub functions here to call page 1 from page 0
   without the need to always use long calls 
*/

event_check( char val ){
   lc_event_check( val );
}
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
   days = hours = minutes = dis_what = seconds = quarter_sec = 0;
   pos_slip = neg_slip = 0;
   ee_index = in_progress = in_prog_count = 0;
   dis_event = new_event = 0;

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
   TMR1L += (T1LOW + 6 + 2);   /*  adjust for timer off time */
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

/*   check if voltage is nominal and handle event starts, ends, and logging */
#define DEADBAND 5
#define NOMINAL  117

#pragma shortcall
/*  if only call functions in this page, otherwise leave as longcall */

lc_event_check( char value ){

   if( in_progress ){
      check_end( value );
      return;
   }

   /* else we are looking for an event start */
   if( in_band( value ) ) return;   /* voltage ok */

   /* maybe an event */
   if( ++in_prog_count >= 2 ){
      /* start an event, save time and set hi and low to nominal */
     event0.age = days;     /* day logged, age calculated when display the data */
     event0.low = event0.high = NOMINAL;
     event0.days = event0.hours = event0.minutes = event0.seconds = 0;
     in_progress = 1;
     in_prog_count = 0;
   }

}


check_end( char value ){
static char t;                 /* expression simplifier needed */

  t = in_band( value );
  if( t == 0 ){          /* still have an issue on AC line */
      /* before returning, want to log highest and lowest voltage */
     if( value > event0.high ){
        bank_bug = value;
        event0.high = bank_bug;
     }
     if( value < event0.low  ){
        bank_bug = value;
        event0.low  = bank_bug;
     }                           
     in_prog_count = 0;
  }else{          /* detect if the end and save */
     if( ++in_prog_count > 5 ){   /* yes it is ok for 4 seconds */
        /* save event to eeprom */
        event_save();
        in_progress = 0;
        in_prog_count = 0; 
     }
  }

}

char in_band( char val ){    /* check if value is in bounds */

   if( val > NOMINAL + DEADBAND ) return 0;
   if( val < NOMINAL - DEADBAND ) return 0;
   return 1;

}

#asm
_eewrite
      
      banksel EEADR
      movwf   EEADR
      movf    _eedata,W
      movwf   EEDATA

      banksel EECON1
      bsf     EECON1,WREN
      bcf     INTCON,GIE
      btfsc   INTCON,GIE
      goto    $-2

      movlw   0x55
      movwf   EECON2
      movlw   0xaa
      movwf   EECON2
      bsf     EECON1,WR

      nop
      nop
      bsf     INTCON,GIE
      bcf     EECON1,WREN

      nop
      nop
      btfsc   EECON1,WR
      goto    $-2
      return      

#endasm

event_save(){
static char i;
 

     /* multiply not supported with this compiler, calculate an offset */
     
     ee_adr = 17; i = ee_index;     /* hardcoded offset, don't move ee data around */
     while( i-- ) ee_adr += 7;

     _eedata = event0.age;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

     ++ee_adr;
     _eedata = event0.low;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

     ++ee_adr;
     _eedata = event0.high;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

     ++ee_adr;
     _eedata = event0.days;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

     ++ee_adr;
     _eedata = event0.hours;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

     ++ee_adr;
     _eedata = event0.minutes;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

     ++ee_adr;
     _eedata = event0.seconds;
     #asm
     movf  ee_adr,W
     call _eewrite
     #endasm

    dis_event = ee_index;  /* display the latest when enter the display events routine */
    ++ee_index;           /* point to next one to write */
    ee_index &= 15;
    new_event = 1;
    
}

