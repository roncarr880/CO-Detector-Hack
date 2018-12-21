; # include "p16f883.h" 
; # asm 

        LIST

;==========================================================================
;  MPASM PIC16F883 processor include
; 
;  (c) Copyright 1999-2011 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F883 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC16F883
;       2. LIST directive in the source file
;               LIST   P=PIC16F883
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
;       IFNDEF __16F883
;           MESSG "Processor-header file mismatch.  Verify selected processor."
;        ENDIF



;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                EQU  H'0000'
F                EQU  H'0001'

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF             EQU  H'0000'
TMR0             EQU  H'0001'
PCL              EQU  H'0002'
STATUS           EQU  H'0003'
FSR              EQU  H'0004'
PORTA            EQU  H'0005'
PORTB            EQU  H'0006'
PORTC            EQU  H'0007'
PORTE            EQU  H'0009'
PCLATH           EQU  H'000A'
INTCON           EQU  H'000B'
PIR1             EQU  H'000C'
PIR2             EQU  H'000D'
TMR1L            EQU  H'000E'
TMR1H            EQU  H'000F'
T1CON            EQU  H'0010'
TMR2             EQU  H'0011'
T2CON            EQU  H'0012'
SSPBUF           EQU  H'0013'
SSPCON           EQU  H'0014'
CCPR1L           EQU  H'0015'
CCPR1H           EQU  H'0016'
CCP1CON          EQU  H'0017'
RCSTA            EQU  H'0018'
TXREG            EQU  H'0019'
RCREG            EQU  H'001A'
CCPR2L           EQU  H'001B'
CCPR2H           EQU  H'001C'
CCP2CON          EQU  H'001D'
ADRESH           EQU  H'001E'
ADCON0           EQU  H'001F'

;-----Bank1------------------
OPTION_REG       EQU  H'0081'
TRISA            EQU  H'0085'
TRISB            EQU  H'0086'
TRISC            EQU  H'0087'
TRISE            EQU  H'0089'
PIE1             EQU  H'008C'
PIE2             EQU  H'008D'
PCON             EQU  H'008E'
OSCCON           EQU  H'008F'
OSCTUNE          EQU  H'0090'
SSPCON2          EQU  H'0091'
PR2              EQU  H'0092'
MSK              EQU  H'0093'
SSPADD           EQU  H'0093'
SSPMSK           EQU  H'0093'
SSPSTAT          EQU  H'0094'
WPUB             EQU  H'0095'
IOCB             EQU  H'0096'
VRCON            EQU  H'0097'
TXSTA            EQU  H'0098'
SPBRG            EQU  H'0099'
SPBRGH           EQU  H'009A'
PWM1CON          EQU  H'009B'
ECCPAS           EQU  H'009C'
PSTRCON          EQU  H'009D'
ADRESL           EQU  H'009E'
ADCON1           EQU  H'009F'

;-----Bank2------------------
WDTCON           EQU  H'0105'
CM1CON0          EQU  H'0107'
CM2CON0          EQU  H'0108'
CM2CON1          EQU  H'0109'
EEDAT            EQU  H'010C'
EEDATA           EQU  H'010C'
EEADR            EQU  H'010D'
EEDATH           EQU  H'010E'
EEADRH           EQU  H'010F'

;-----Bank3------------------
SRCON            EQU  H'0185'
BAUDCTL          EQU  H'0187'
ANSEL            EQU  H'0188'
ANSELH           EQU  H'0189'
EECON1           EQU  H'018C'
EECON2           EQU  H'018D'

;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
NOT_PD           EQU  H'0003'
NOT_TO           EQU  H'0004'
IRP              EQU  H'0007'

RP0              EQU  H'0005'
RP1              EQU  H'0006'


;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'
RA7              EQU  H'0007'


;----- PORTB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'


;----- PORTC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC3              EQU  H'0003'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'


;----- PORTE Bits -----------------------------------------------------
RE3              EQU  H'0003'


;----- INTCON Bits -----------------------------------------------------
RBIF             EQU  H'0000'
INTF             EQU  H'0001'
T0IF             EQU  H'0002'
RBIE             EQU  H'0003'
INTE             EQU  H'0004'
T0IE             EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'

TMR0IF           EQU  H'0002'
TMR0IE           EQU  H'0005'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
SSPIF            EQU  H'0003'
TXIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           EQU  H'0000'
ULPWUIF          EQU  H'0002'
BCLIF            EQU  H'0003'
EEIF             EQU  H'0004'
C1IF             EQU  H'0005'
C2IF             EQU  H'0006'
OSFIF            EQU  H'0007'


;----- T1CON Bits -----------------------------------------------------
TMR1ON           EQU  H'0000'
TMR1CS           EQU  H'0001'
NOT_T1SYNC       EQU  H'0002'
T1OSCEN          EQU  H'0003'
TMR1GE           EQU  H'0006'
T1GINV           EQU  H'0007'

T1INSYNC         EQU  H'0002'
T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'
T1GIV            EQU  H'0007'

T1SYNC           EQU  H'0002'


;----- T2CON Bits -----------------------------------------------------
TMR2ON           EQU  H'0002'

T2CKPS0          EQU  H'0000'
T2CKPS1          EQU  H'0001'
TOUTPS0          EQU  H'0003'
TOUTPS1          EQU  H'0004'
TOUTPS2          EQU  H'0005'
TOUTPS3          EQU  H'0006'


;----- SSPCON Bits -----------------------------------------------------
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'

SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'
DC1B0            EQU  H'0004'
DC1B1            EQU  H'0005'
P1M0             EQU  H'0006'
P1M1             EQU  H'0007'

CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADDEN            EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'

RCD8             EQU  H'0000'
RC9              EQU  H'0006'

NOT_RC8          EQU  H'0006'

RC8_9            EQU  H'0006'


;----- CCP2CON Bits -----------------------------------------------------
DC2B0            EQU  H'0004'
DC2B1            EQU  H'0005'

CCP2M0           EQU  H'0000'
CCP2M1           EQU  H'0001'
CCP2M2           EQU  H'0002'
CCP2M3           EQU  H'0003'
CCP2Y            EQU  H'0004'
CCP2X            EQU  H'0005'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO_NOT_DONE      EQU  H'0001'

GO               EQU  H'0001'
CHS0             EQU  H'0002'
CHS1             EQU  H'0003'
CHS2             EQU  H'0004'
CHS3             EQU  H'0005'
ADCS0            EQU  H'0006'
ADCS1            EQU  H'0007'

NOT_DONE         EQU  H'0001'

GO_DONE          EQU  H'0001'


;----- OPTION_REG Bits -----------------------------------------------------
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
INTEDG           EQU  H'0006'
NOT_RBPU         EQU  H'0007'

PS0              EQU  H'0000'
PS1              EQU  H'0001'
PS2              EQU  H'0002'


;----- TRISA Bits -----------------------------------------------------
TRISA0           EQU  H'0000'
TRISA1           EQU  H'0001'
TRISA2           EQU  H'0002'
TRISA3           EQU  H'0003'
TRISA4           EQU  H'0004'
TRISA5           EQU  H'0005'
TRISA6           EQU  H'0006'
TRISA7           EQU  H'0007'


;----- TRISB Bits -----------------------------------------------------
TRISB0           EQU  H'0000'
TRISB1           EQU  H'0001'
TRISB2           EQU  H'0002'
TRISB3           EQU  H'0003'
TRISB4           EQU  H'0004'
TRISB5           EQU  H'0005'
TRISB6           EQU  H'0006'
TRISB7           EQU  H'0007'


;----- TRISC Bits -----------------------------------------------------
TRISC0           EQU  H'0000'
TRISC1           EQU  H'0001'
TRISC2           EQU  H'0002'
TRISC3           EQU  H'0003'
TRISC4           EQU  H'0004'
TRISC5           EQU  H'0005'
TRISC6           EQU  H'0006'
TRISC7           EQU  H'0007'


;----- TRISE Bits -----------------------------------------------------
TRISE3           EQU  H'0003'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           EQU  H'0000'
ULPWUIE          EQU  H'0002'
BCLIE            EQU  H'0003'
EEIE             EQU  H'0004'
C1IE             EQU  H'0005'
C2IE             EQU  H'0006'
OSFIE            EQU  H'0007'


;----- PCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
SBOREN           EQU  H'0004'
ULPWUE           EQU  H'0005'

NOT_BO           EQU  H'0000'


;----- OSCCON Bits -----------------------------------------------------
SCS              EQU  H'0000'
LTS              EQU  H'0001'
HTS              EQU  H'0002'
OSTS             EQU  H'0003'

IRCF0            EQU  H'0004'
IRCF1            EQU  H'0005'
IRCF2            EQU  H'0006'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'


;----- SSPCON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- MSK Bits -----------------------------------------------------
MSK0             EQU  H'0000'
MSK1             EQU  H'0001'
MSK2             EQU  H'0002'
MSK3             EQU  H'0003'
MSK4             EQU  H'0004'
MSK5             EQU  H'0005'
MSK6             EQU  H'0006'
MSK7             EQU  H'0007'


;----- SSPMSK Bits -----------------------------------------------------
MSK0             EQU  H'0000'
MSK1             EQU  H'0001'
MSK2             EQU  H'0002'
MSK3             EQU  H'0003'
MSK4             EQU  H'0004'
MSK5             EQU  H'0005'
MSK6             EQU  H'0006'
MSK7             EQU  H'0007'


;----- SSPSTAT Bits -----------------------------------------------------
BF               EQU  H'0000'
UA               EQU  H'0001'
R_NOT_W          EQU  H'0002'
S                EQU  H'0003'
P                EQU  H'0004'
D_NOT_A          EQU  H'0005'
CKE              EQU  H'0006'
SMP              EQU  H'0007'

R                EQU  H'0002'
D                EQU  H'0005'

I2C_READ         EQU  H'0002'
I2C_START        EQU  H'0003'
I2C_STOP         EQU  H'0004'
I2C_DATA         EQU  H'0005'

NOT_W            EQU  H'0002'
NOT_A            EQU  H'0005'

NOT_WRITE        EQU  H'0002'
NOT_ADDRESS      EQU  H'0005'

R_W              EQU  H'0002'
D_A              EQU  H'0005'

READ_WRITE       EQU  H'0002'
DATA_ADDRESS     EQU  H'0005'


;----- WPUB Bits -----------------------------------------------------
WPUB0            EQU  H'0000'
WPUB1            EQU  H'0001'
WPUB2            EQU  H'0002'
WPUB3            EQU  H'0003'
WPUB4            EQU  H'0004'
WPUB5            EQU  H'0005'
WPUB6            EQU  H'0006'
WPUB7            EQU  H'0007'


;----- IOCB Bits -----------------------------------------------------
IOCB0            EQU  H'0000'
IOCB1            EQU  H'0001'
IOCB2            EQU  H'0002'
IOCB3            EQU  H'0003'
IOCB4            EQU  H'0004'
IOCB5            EQU  H'0005'
IOCB6            EQU  H'0006'
IOCB7            EQU  H'0007'


;----- VRCON Bits -----------------------------------------------------
VRSS             EQU  H'0004'
VRR              EQU  H'0005'
VROE             EQU  H'0006'
VREN             EQU  H'0007'

VR0              EQU  H'0000'
VR1              EQU  H'0001'
VR2              EQU  H'0002'
VR3              EQU  H'0003'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'

TXD8             EQU  H'0000'
NOT_TX8          EQU  H'0006'

TX8_9            EQU  H'0006'


;----- SPBRG Bits -----------------------------------------------------
BRG0             EQU  H'0000'
BRG1             EQU  H'0001'
BRG2             EQU  H'0002'
BRG3             EQU  H'0003'
BRG4             EQU  H'0004'
BRG5             EQU  H'0005'
BRG6             EQU  H'0006'
BRG7             EQU  H'0007'


;----- SPBRGH Bits -----------------------------------------------------
BRG8             EQU  H'0000'
BRG9             EQU  H'0001'
BRG10            EQU  H'0002'
BRG11            EQU  H'0003'
BRG12            EQU  H'0004'
BRG13            EQU  H'0005'
BRG14            EQU  H'0006'
BRG15            EQU  H'0007'


;----- PWM1CON Bits -----------------------------------------------------
PRSEN            EQU  H'0007'

PDC0             EQU  H'0000'
PDC1             EQU  H'0001'
PDC2             EQU  H'0002'
PDC3             EQU  H'0003'
PDC4             EQU  H'0004'
PDC5             EQU  H'0005'
PDC6             EQU  H'0006'


;----- ECCPAS Bits -----------------------------------------------------
ECCPASE          EQU  H'0007'

PSSBD0           EQU  H'0000'
PSSBD1           EQU  H'0001'
PSSAC0           EQU  H'0002'
PSSAC1           EQU  H'0003'
ECCPAS0          EQU  H'0004'
ECCPAS1          EQU  H'0005'
ECCPAS2          EQU  H'0006'


;----- PSTRCON Bits -----------------------------------------------------
STRA             EQU  H'0000'
STRB             EQU  H'0001'
STRC             EQU  H'0002'
STRD             EQU  H'0003'
STRSYNC          EQU  H'0004'


;----- ADCON1 Bits -----------------------------------------------------
VCFG0            EQU  H'0004'
VCFG1            EQU  H'0005'
ADFM             EQU  H'0007'


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           EQU  H'0000'

WDTPS0           EQU  H'0001'
WDTPS1           EQU  H'0002'
WDTPS2           EQU  H'0003'
WDTPS3           EQU  H'0004'


;----- CM1CON0 Bits -----------------------------------------------------
C1R              EQU  H'0002'
C1POL            EQU  H'0004'
C1OE             EQU  H'0005'
C1OUT            EQU  H'0006'
C1ON             EQU  H'0007'

C1CH0            EQU  H'0000'
C1CH1            EQU  H'0001'


;----- CM2CON0 Bits -----------------------------------------------------
C2R              EQU  H'0002'
C2POL            EQU  H'0004'
C2OE             EQU  H'0005'
C2OUT            EQU  H'0006'
C2ON             EQU  H'0007'

C2CH0            EQU  H'0000'
C2CH1            EQU  H'0001'


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           EQU  H'0000'
T1GSS            EQU  H'0001'
C2RSEL           EQU  H'0004'
C1RSEL           EQU  H'0005'
MC2OUT           EQU  H'0006'
MC1OUT           EQU  H'0007'


;----- SRCON Bits -----------------------------------------------------
FVREN            EQU  H'0000'
PULSR            EQU  H'0002'
PULSS            EQU  H'0003'
C2REN            EQU  H'0004'
C1SEN            EQU  H'0005'
SR0              EQU  H'0006'
SR1              EQU  H'0007'


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'


;----- ANSEL Bits -----------------------------------------------------
ANS0             EQU  H'0000'
ANS1             EQU  H'0001'
ANS2             EQU  H'0002'
ANS3             EQU  H'0003'
ANS4             EQU  H'0004'


;----- ANSELH Bits -----------------------------------------------------
ANS8             EQU  H'0000'
ANS9             EQU  H'0001'
ANS10            EQU  H'0002'
ANS11            EQU  H'0003'
ANS12            EQU  H'0004'
ANS13            EQU  H'0005'


;----- EECON1 Bits -----------------------------------------------------
RD               EQU  H'0000'
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
EEPGD            EQU  H'0007'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'01FF'
       __BADRAM  H'0008'
       __BADRAM  H'0088'
       __BADRAM  H'0110'-H'011F'
       __BADRAM  H'018E'-H'018F'
       __BADRAM  H'0190'-H'01EF'

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           2007h
;   CONFIG2           2008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1         EQU  H'2007'
_CONFIG2         EQU  H'2008'

;----- CONFIG1 Options --------------------------------------------------
_LP_OSC              EQU  H'3FF8'    ; LP oscillator: Low-power crystal on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_XT_OSC              EQU  H'3FF9'    ; XT oscillator: Crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_HS_OSC              EQU  H'3FFA'    ; HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_EC_OSC              EQU  H'3FFB'    ; EC: I/O function on RA6/OSC2/CLKOUT pin, CLKIN on RA7/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT  EQU  H'3FFC'    ; INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
_INTOSCIO            EQU  H'3FFC'    ; INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
_INTRC_OSC_CLKOUT    EQU  H'3FFD'    ; INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
_INTOSC              EQU  H'3FFD'    ; INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
_EXTRC_OSC_NOCLKOUT  EQU  H'3FFE'    ; RCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
_EXTRCIO             EQU  H'3FFE'    ; RCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
_EXTRC_OSC_CLKOUT    EQU  H'3FFF'    ; RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
_EXTRC               EQU  H'3FFF'    ; RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN

_WDT_OFF             EQU  H'3FF7'    ; WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_ON              EQU  H'3FFF'    ; WDT enabled

_PWRTE_ON            EQU  H'3FEF'    ; PWRT enabled
_PWRTE_OFF           EQU  H'3FFF'    ; PWRT disabled

_MCLRE_OFF           EQU  H'3FDF'    ; RE3/MCLR pin function is digital input, MCLR internally tied to VDD
_MCLRE_ON            EQU  H'3FFF'    ; RE3/MCLR pin function is MCLR

_CP_ON               EQU  H'3FBF'    ; Program memory code protection is enabled
_CP_OFF              EQU  H'3FFF'    ; Program memory code protection is disabled

_CPD_ON              EQU  H'3F7F'    ; Data memory code protection is enabled
_CPD_OFF             EQU  H'3FFF'    ; Data memory code protection is disabled

_BOR_OFF             EQU  H'3CFF'    ; BOR disabled
_BOR_SBODEN          EQU  H'3DFF'    ; BOR controlled by SBOREN bit of the PCON register
_BOR_NSLEEP          EQU  H'3EFF'    ; BOR enabled during operation and disabled in Sleep
_BOR_ON              EQU  H'3FFF'    ; BOR enabled

_IESO_OFF            EQU  H'3BFF'    ; Internal/External Switchover mode is disabled
_IESO_ON             EQU  H'3FFF'    ; Internal/External Switchover mode is enabled

_FCMEN_OFF           EQU  H'37FF'    ; Fail-Safe Clock Monitor is disabled
_FCMEN_ON            EQU  H'3FFF'    ; Fail-Safe Clock Monitor is enabled

_LVP_OFF             EQU  H'2FFF'    ; RB3 pin has digital I/O, HV on MCLR must be used for programming
_LVP_ON              EQU  H'3FFF'    ; RB3/PGM pin has PGM function, low voltage programming enabled

_DEBUG_ON            EQU  H'1FFF'    ; In_Circuit Debugger enabled, RB6/ICSPCLK and RB7/ICSPDAT are dedicated to the debugger
_DEBUG_OFF           EQU  H'3FFF'    ; In-Circuit Debugger disabled, RB6/ICSPCLK and RB7/ICSPDAT are general purpose I/O pins

;----- CONFIG2 Options --------------------------------------------------
_BOR21V              EQU  H'3EFF'    ; Brown-out Reset set to 2.1V
_BOR40V              EQU  H'3FFF'    ; Brown-out Reset set to 4.0V

_WRT_HALF            EQU  H'39FF'    ; 0000h to 07FFh write protected, 0800h to 0FFFh may be modified by EECON control
_WRT_1FOURTH         EQU  H'3BFF'    ; 0000h to 03FFh write protected, 0400h to 0FFFh may be modified by EECON control
_WRT_256             EQU  H'3DFF'    ; 0000h to 00FFh write protected, 0100h to 0FFFh may be modified by EECON control
_WRT_OFF             EQU  H'3FFF'    ; Write protection off

;----- DEVID Equates --------------------------------------------------
_DEVID1          EQU  H'2006'

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          EQU  H'2000'
_IDLOC1          EQU  H'2001'
_IDLOC2          EQU  H'2002'
_IDLOC3          EQU  H'2003'

        LIST
	list		p=16f883		; list directive to define processor
        LIST
               radix  decimal
               errorlevel -302
               errorlevel -306

;**********************************************************************
	ORG		0x000			; processor reset vector
        pagesel         init
        call            init
        pagesel         main
  	goto		main			; go to beginning of program


	ORG		0x004			; interrupt vector location
	movwf		w_temp			; save off current W register contents
	movf		STATUS,w		; move status register into W register
	movwf		status_temp		; save off contents of STATUS register
	movf		PCLATH,w		; move pclath register into W register
	movwf		pclath_temp		; save off contents of PCLATH register

        pagesel _interrupt
        goto    _interrupt

;   restore code is in _interrupt routine


;   runtime code
; locate runtime at top of each page
; and restore org to page 0


          org 0x7eA

 ; -------------------- run time library  -------------------- */

        ; shifting, shift _temp with count in W
_rshift
        btfsc   STATUS,Z    
        return             ; ret if shift amount is zero
        bcf     STATUS,C   ; unsigned shift, mask bits
        rrf     _temp,F
        addlw   255        ; sub one
        goto    _rshift

_lshift
        btfsc   STATUS,Z    
        return             ; ret if shift amount is zero
        bcf     STATUS,C   ; arithmetic shift
        rlf     _temp,F
        addlw   255        ; sub one
        goto    _lshift

_eeadr                     ; set up EEDATA to contain desired data
        banksel EEADR
        movwf   EEADR      ; correct address in W
        bsf     STATUS,RP0
        bsf     EECON1,RD
        bcf     STATUS,RP0
        movf    EEDATA,W
        movwf   _eedata    ; in access ram
        return


          org 0xfeA
; shadow runtime in page1
        ; shifting, shift _temp with count in W
_rshift2
        btfsc   STATUS,Z    
        return             ; ret if shift amount is zero
        bcf     STATUS,C   ; unsigned shift, mask bits
        rrf     _temp,F
        addlw   255        ; sub one
        goto    _rshift

_lshift2
        btfsc   STATUS,Z    
        return             ; ret if shift amount is zero
        bcf     STATUS,C   ; arithmetic shift
        rlf     _temp,F
        addlw   255        ; sub one
        goto    _lshift

_eeadr2                     ; set up EEDATA to contain desired data
        banksel EEADR
        movwf   EEADR      ; correct address in W
        bsf     STATUS,RP0
        bsf     EECON1,RD
        bcf     STATUS,RP0
        movf    EEDATA,W
        movwf   _eedata    ; in access ram
        return

; arithmetic shift macros
ASR     MACRO   var1
        errorlevel +302    ; banksel elsewhere for some speed
        bcf     STATUS,C
        btfsc   var1,7     ; check sign
        bsf     STATUS,C
        rrf     var1,F
        errorlevel -302
        ENDM

ASRD    MACRO   varh,varl  ; Shift 16 bit
        errorlevel +302    ; banksel elsewhere for some speed
        bcf     STATUS,C
        btfsc   varh,7     ; check sign
        bsf     STATUS,C
        rrf     varh,F
        rrf     varl,F
        errorlevel -302
        ENDM

        

          org 12           ; rest of code starts in page 0
         

TLF1
; # pragma pic 0 
; char INDF ; 
	;data
INDF	equ 0
; char TMR0 ; 
TMR0	equ 1
; char PCL ; 
PCL	equ 2
; char STATUS ; 
STATUS	equ 3
; char FSR ; 
FSR	equ 4
; char PORTA ; 
PORTA	equ 5
; char PORTB ; 
PORTB	equ 6
; char PORTC ; 
PORTC	equ 7
; # pragma pic 9 
; char PORTE ; 
PORTE	equ 9
; # pragma pic 10 
; char PCLATH ; 
PCLATH	equ 10
; char INTCON ; 
INTCON	equ 11
; char PIR1 ; 
PIR1	equ 12
; char PIR2 ; 
PIR2	equ 13
; char TMR1L ; 
TMR1L	equ 14
; char TMR1H ; 
TMR1H	equ 15
; char T1CON ; 
T1CON	equ 16
; char TMR2 ; 
TMR2	equ 17
; char T2CON ; 
T2CON	equ 18
; char SSPBUF ; 
SSPBUF	equ 19
; char SSPCON ; 
SSPCON	equ 20
; char CCPR1L ; 
CCPR1L	equ 21
; char CCPR1H ; 
CCPR1H	equ 22
; char CCP1CON ; 
CCP1CON	equ 23
; char RCSTA ; 
RCSTA	equ 24
; char TXREG ; 
TXREG	equ 25
; char RCREG ; 
RCREG	equ 26
; char CCPR2L ; 
CCPR2L	equ 27
; char CCPR2H ; 
CCPR2H	equ 28
; char CCP2CON ; 
CCP2CON	equ 29
; char ADRESH ; 
ADRESH	equ 30
; char ADCON0 ; 
ADCON0	equ 31
; # pragma pic 129 
; char OPTION_REG ; 
OPTION_REG	equ 129
; # pragma pic 133 
; char TRISA ; 
TRISA	equ 133
; char TRISB ; 
TRISB	equ 134
; char TRISC ; 
TRISC	equ 135
; # pragma pic 137 
; char TRISE ; 
TRISE	equ 137
; # pragma pic 140 
; char PIE1 ; 
PIE1	equ 140
; char PIE2 ; 
PIE2	equ 141
; char PCON ; 
PCON	equ 142
; char OSCCON ; 
OSCCON	equ 143
; char OSCTUNE ; 
OSCTUNE	equ 144
; char SSPCON2 ; 
SSPCON2	equ 145
; char PR2 ; 
PR2	equ 146
; char SSPMSK ; 
SSPMSK	equ 147
; char SSPSTAT ; 
SSPSTAT	equ 148
; char WPUB ; 
WPUB	equ 149
; char IOCB ; 
IOCB	equ 150
; char VRCON ; 
VRCON	equ 151
; char TXSTA ; 
TXSTA	equ 152
; char SPBRG ; 
SPBRG	equ 153
; char SPBRGH ; 
SPBRGH	equ 154
; char PWM1CON ; 
PWM1CON	equ 155
; char ECCPAS ; 
ECCPAS	equ 156
; char PSTRCON ; 
PSTRCON	equ 157
; char ADRESL ; 
ADRESL	equ 158
; char ADCON1 ; 
ADCON1	equ 159
; # pragma pic 261 
; char WDTCON ; 
WDTCON	equ 261
; # pragma pic 263 
; char CM1CON0 ; 
CM1CON0	equ 263
; char CM2CON0 ; 
CM2CON0	equ 264
; char CM2CON1 ; 
CM2CON1	equ 265
; # pragma pic 268 
; char EEDATA ; 
EEDATA	equ 268
; char EEADR ; 
EEADR	equ 269
; char EEDATH ; 
EEDATH	equ 270
; char EEADRH ; 
EEADRH	equ 271
; # pragma pic 389 
; char SRCON ; 
SRCON	equ 389
; # pragma pic 391 
; char BAUDCTL ; 
BAUDCTL	equ 391
; char ANSEL ; 
ANSEL	equ 392
; char ANSELH ; 
ANSELH	equ 393
; # pragma pic 396 
; char EECON1 ; 
EECON1	equ 396
; char EECON2 ; 
EECON2	equ 397
; # pragma eesize 256 
; # pragma banksize 128 
; # pragma access 112 127 
; # pragma access 0 0 
; # pragma access 2 4 
; # pragma access 10 11 
; # asm 

	__CONFIG    _CONFIG1, _LVP_OFF & _FCMEN_ON & _IESO_OFF & _BOR_OFF & _CPD_OFF & _CP_OFF & _MCLRE_ON & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT
	__CONFIG    _CONFIG2, _WRT_OFF & _BOR21V

TLF2
; # define T1ON 1 
; # define T1OFF 0 
; # define T1LOW 0x17 
; # define T1HIGH 0xfc 
; extern char segment [ 16 ] = { 0x3f , 0x06 , 0x5b , 0x4f , 0x66 , 0x6d , 0x7d , 0x07 , 0x7f , 0x6f , 0x77 , 0x7c , 0x58 , 0x5e , 0x79 , 0x71 } ; 
















; # pragma pic 112 
; char w_temp ; 
w_temp	equ 112
; char status_temp ; 
status_temp	equ 113
; char pclath_temp ; 
pclath_temp	equ 114
; char _temp ; 
_temp	equ 115
; char _temp2 ; 
_temp2	equ 116
; char _eedata ; 
_eedata	equ 117
; char digits [ 3 ] ; 
digits	equ 118
; char dp ; 
dp	equ 121
; char dig_bit ; 
dig_bit	equ 122
; char dig_count ; 
dig_count	equ 123
; char portb ; 
portb	equ 124
; char ticks ; 
ticks	equ 125
; char switches ; 
switches	equ 126
; # pragma pic 32 
; # pragma pic 160 
; # pragma pic 288 
; # pragma shortcall 
; main ( ) { 
	;code
main
; static char counter ; 
	;data
TLF3	equ 288
; static char adder ; 
TLF4	equ 289
; static char holdoff ; 
TLF5	equ 290
; static char temp ; 
TLF6	equ 291
; holdoff = counter = 0 ; 
	;code
	movlw	0
	BANKSEL	TLF3
	movwf	TLF3
	movwf	TLF5
; adder = 1 ; 
	movlw	1
	movwf	TLF4
; load_display ( counter ) ; 
	movf	TLF3,W
	call	load_display
; temp = ticks ; 
	movf	ticks,W
	BANKSEL	TLF6
	movwf	TLF6
; for ( ; ; ) { 
TLF7
; while ( temp == ticks ) ; 
TLF10
	BANKSEL	TLF6
	movf	TLF6,W
	movwf	_temp
	movf	ticks,W
	subwf	_temp,W
	btfss	STATUS,Z
	goto	TLF11
	goto	TLF10
TLF11
; if ( holdoff ) -- holdoff ; 
	BANKSEL	TLF5
	movf	TLF5,W
	btfsc	STATUS,Z
	goto	TLF12
	decf	TLF5,F
; else { 
	goto	TLF13
TLF12
; if ( switches ) holdoff = 200 ; 
	movf	switches,W
	btfsc	STATUS,Z
	goto	TLF14
	movlw	200
	BANKSEL	TLF5
	movwf	TLF5
; if ( switches & 128 ) adder -= 1 ; 
TLF14
	movf	switches,W
	andlw	128
	btfsc	STATUS,Z
	goto	TLF15
	movlw	1
	BANKSEL	TLF4
	subwf	TLF4,F
; if ( switches & 32 ) adder += 1 ; 
TLF15
	movf	switches,W
	andlw	32
	btfsc	STATUS,Z
	goto	TLF16
	movlw	1
	BANKSEL	TLF4
	addwf	TLF4,F
; } 
TLF16
; } if ( ticks >= 250 ) { 
TLF13
	movf	ticks,W
	addlw	6
	btfss	STATUS,C
	goto	TLF17
; counter += adder ; 
	BANKSEL	TLF4
	movf	TLF4,W
	addwf	TLF3,F
; load_display ( counter ) ; 
	movf	TLF3,W
	call	load_display
; ticks = 0 ; 
;movlw	0
	clrf 	ticks
; } 
; temp = ticks ; 
TLF17
	movf	ticks,W
	BANKSEL	TLF6
	movwf	TLF6
; } 
TLF8
; )  } 
	goto	TLF7
TLF9
	return
; load_display ( char val ) { 
	;data
_load_display	equ	292
	;code
load_display
	banksel	_load_display
	movwf	_load_display
; static char t ; 
	;data
TLF18	equ 293
; t = 0 ; 
	;code
	movlw	0
	BANKSEL	TLF18
	movwf	TLF18
; while ( val >= 100 ) ++ t , val -= 100 ; 
TLF19
	BANKSEL	_load_display
	movf	_load_display,W
	addlw	156
	btfss	STATUS,C
	goto	TLF20
	incf	TLF18,F
	movlw	100
	subwf	_load_display,F
	goto	TLF19
TLF20
; digits [ 2 ] = segment [ t ] ; 
	movlw	digits+2
	movwf	FSR
	BANKSEL	TLF18
	movf	TLF18,W
	addlw	0
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; t = 0 ; 
	movlw	0
	BANKSEL	TLF18
	movwf	TLF18
; while ( val >= 10 ) ++ t , val -= 10 ; 
TLF21
	BANKSEL	_load_display
	movf	_load_display,W
	addlw	246
	btfss	STATUS,C
	goto	TLF22
	incf	TLF18,F
	movlw	10
	subwf	_load_display,F
	goto	TLF21
TLF22
; digits [ 1 ] = segment [ t ] ; 
	movlw	digits+1
	movwf	FSR
	BANKSEL	TLF18
	movf	TLF18,W
	addlw	0
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 0 ] = segment [ val ] ; 
	movlw	digits+0
	movwf	FSR
	BANKSEL	_load_display
	movf	_load_display,W
	addlw	0
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
	return
; } 
; # pragma longcall 
; # asm 
           org  0x800
TLF23
; init ( ) { 
init
; TRISB = 0 ; 
	movlw	0
	BANKSEL	TRISB
	movwf	TRISB
; TRISC = 0xff ^ ( 4 + 8 + 0x10 ) ; 
	movlw	227
	movwf	TRISC
; ANSELH = 0 ; 
	movlw	0
	bsf	STATUS,RP1
	movwf	ANSELH
; dp = dig_count = 0 ; 
	movlw	0
	movwf	dig_count
	movwf	dp
; dig_bit = 4 ; 
	movlw	4
	movwf	dig_bit
; TMR1H = 0xfc  ; 
	movlw	252
	BANKSEL	TMR1H
	movwf	TMR1H
; TMR1L = 0x17  ; 
	movlw	23
	movwf	TMR1L
; T1CON = 1  ; 
	movlw	1
	movwf	T1CON
; PIE1 = 1 ; 
	movlw	1
	bsf	STATUS,RP0
	movwf	PIE1
; INTCON = 0xc0 ; 
	movlw	192
	movwf	INTCON
	return
; } 
; _interrupt ( ) { 
_interrupt
; T1CON = 0  : 
	movlw	0
	BANKSEL	T1CON
	movwf	T1CON
; TMR1H = 0xfc  ; 
	movlw	252
	movwf	TMR1H
; TMR1L += 0x17  - 5 ; 
	movlw	18
	addwf	TMR1L,F
; T1CON = 1  ; 
	movlw	1
	movwf	T1CON
; ++ ticks ; 
	incf	ticks,F
; PORTC &= ( ( 4 + 8 + 0x10 ) ^ 0xff ) ; 
	movlw	227
	andwf	PORTC,F
; PORTB = 0xff ; 
	movlw	255
	movwf	PORTB
; TRISB = 0xff ; 
	movlw	255
	bsf	STATUS,RP0
	movwf	TRISB
; portb = digits [ dig_count ] ; 
	movf	dig_count,W
	addlw	digits
	movwf	FSR
	movf	INDF,W
	movwf	portb
; if ( dp & dig_bit ) portb |= 0x80 ; 
	movf	dp,W
	andwf	dig_bit,W
	btfsc	STATUS,Z
	goto	TLF24
	movlw	128
	iorwf	portb,F
; PORTB = portb ^ 0xff ; 
TLF24
	movf	portb,W
	xorlw	255
	BANKSEL	PORTB
	movwf	PORTB
; switches = ( PORTB & ( 128 + 32 ) ) ^ ( 128 + 32 ) ; 
	movf	PORTB,W
	andlw	160
	xorlw	160
	movwf	switches
; TRISB = 0x00 ; 
	movlw	0
	bsf	STATUS,RP0
	movwf	TRISB
; PORTC = dig_bit ; 
	movf	dig_bit,W
	bcf	STATUS,RP0
	movwf	PORTC
; dig_bit <<= 1 ; 
	bcf	STATUS,C
	rlf	dig_bit,F
; if ( ++ dig_count >= 3 ) { 
	incf	dig_count,F
	movf	dig_count,W
	addlw	253
	btfss	STATUS,C
	goto	TLF25
; dig_count = 0 ; 
;movlw	0
	clrf 	dig_count
; dig_bit = 0x04 ; 
	movlw	4
	movwf	dig_bit
; } 
; # asm 
TLF25
       banksel    PIR1                       ; clear timer 1 interrupt flag
       bcf        PIR1,TMR1IF

	movf		pclath_temp,w		; retrieve copy of PCLATH register
	movwf		PCLATH			; restore pre-isr PCLATH register contents	
	movf		status_temp,w		; retrieve copy of STATUS register
	movwf		STATUS			; restore pre-isr STATUS register contents
	swapf		w_temp,f
	swapf		w_temp,w		; restore pre-isr W register contents
TLF26
	retfie
; } 
	org	0x2100	;eeprom constant data
	de	63,6
	de	91,79
	de	102,109
	de	125,7
	de	127,111
	de	119,124
	de	88,94
	de	121,113
	end
