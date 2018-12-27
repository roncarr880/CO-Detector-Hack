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
; # define T1LOW 0x18 
; # define T1HIGH 0xfc 
; # define A_ 1 
; # define B_ 2 
; # define C_ 4 
; # define D_ 8 
; # define E_ 16 
; # define F_ 32 
; # define G_ 64 
; # define DP_ 128 
; struct EVENT { 
; char age ; 
; char low ; 
; char high ; 
; char days ; 
; char hours ; 
; char minutes ; 
; char seconds ; 
; } ; 
; extern char segment [ 16 ] = { 0x3f , 0x06 , 0x5b , 0x4f , 0x66 , 0x6d , 0x7d , 0x07 , 0x7f , 0x6f , 0x77 , 0x7c , 0x58 , 0x5e , 0x79 , 0x71 } ; 
















; extern char dummy [ 1 ] = 0xff ; 

; ; extern struct EVENT eevent [ 16 ] = { 
; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } , 







; { 0xff , 0xff , 0xff , 0xff , 0xff , 0xff , 0xff } 







; } } ; 
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
; char accl ; 
accl	equ 32
; char acch ; 
acch	equ 33
; char argl ; 
argl	equ 34
; char argh ; 
argh	equ 35
; char overflow ; 
overflow	equ 36
; char carry ; 
carry	equ 37
; char seconds ; 
seconds	equ 38
; char quarter_sec ; 
quarter_sec	equ 39
; char minutes ; 
minutes	equ 40
; char hours ; 
hours	equ 41
; char days ; 
days	equ 42
; char sum_low ; 
sum_low	equ 43
; char sum_high ; 
sum_high	equ 44
; char pos_slip ; 
pos_slip	equ 45
; char neg_slip ; 
neg_slip	equ 46
; char dis_what ; 
dis_what	equ 47
; char in_progress ; 
in_progress	equ 48
; char in_prog_count ; 
in_prog_count	equ 49
; char ee_index ; 
ee_index	equ 50
; char ee_adr ; 
ee_adr	equ 51
; char dis_state ; 
dis_state	equ 52
; char dis_event ; 
dis_event	equ 53
; char new_event ; 
new_event	equ 54
; struct EVENT event0 ; 
event0	equ 55
; char bank_bug ; 
bank_bug	equ 62
; # pragma pic 160 
; char result_low ; 
result_low	equ 160
; char result_high ; 
result_high	equ 161
; char res0_l ; 
res0_l	equ 162
; char res0_h ; 
res0_h	equ 163
; char res1_l ; 
res1_l	equ 164
; char res1_h ; 
res1_h	equ 165
; char res2_l ; 
res2_l	equ 166
; char res2_h ; 
res2_h	equ 167
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
; static char nslip_cnt ; 
TLF7	equ 292
; nslip_cnt = holdoff = counter = 0 ; 
	;code
	movlw	0
	BANKSEL	TLF3
	movwf	TLF3
	movwf	TLF5
	movwf	TLF7
; adder = 1 ; 
	movlw	1
	movwf	TLF4
; char_display ( counter ) ; 
	movf	TLF3,W
	call	char_display
; temp = ticks ; 
	movf	ticks,W
	BANKSEL	TLF6
	movwf	TLF6
; for ( ; ; ) { 
TLF8
; while ( temp == ticks ) ; 
TLF11
	BANKSEL	TLF6
	movf	TLF6,W
	movwf	_temp
	movf	ticks,W
	subwf	_temp,W
	btfss	STATUS,Z
	goto	TLF12
	goto	TLF11
TLF12
; if ( ++ temp >= 250 ) temp -= 250 ; 
	BANKSEL	TLF6
	incf	TLF6,F
	movf	TLF6,W
	addlw	6
	btfss	STATUS,C
	goto	TLF13
	movlw	250
	subwf	TLF6,F
; if ( ticks >= 250 ) { 
TLF13
	movf	ticks,W
	addlw	6
	btfss	STATUS,C
	goto	TLF14
; ticks -= 250 ; 
	movlw	250
	subwf	ticks,F
; if ( pos_slip >= 250 ) { 
	BANKSEL	pos_slip
	movf	pos_slip,W
	addlw	6
	btfss	STATUS,C
	goto	TLF15
; ++ quarter_sec ; 
	incf	quarter_sec,F
; pos_slip -= 250 ; 
	movlw	250
	subwf	pos_slip,F
; } 
; if ( neg_slip >= 250 ) { 
TLF15
	BANKSEL	neg_slip
	movf	neg_slip,W
	addlw	6
	btfss	STATUS,C
	goto	TLF16
; ++ nslip_cnt ; 
	bsf	STATUS,RP1
	incf	TLF7,F
; neg_slip -= 250 ; 
	movlw	250
	bcf	STATUS,RP1
	subwf	neg_slip,F
; } 
; if ( nslip_cnt && quarter_sec != 0 ) { 
TLF16
	BANKSEL	TLF7
	movf	TLF7,W
	btfsc	STATUS,Z
	goto	TLF17
	bcf	STATUS,RP1
	movf	quarter_sec,W
;addlw	256
	btfsc	STATUS,Z
	goto	TLF17
; -- quarter_sec ; 
	decf	quarter_sec,F
; -- nslip_cnt ; 
	bsf	STATUS,RP1
	decf	TLF7,F
; } 
; if ( ++ quarter_sec >= 4 ) { 
TLF17
	BANKSEL	quarter_sec
	incf	quarter_sec,F
	movf	quarter_sec,W
	addlw	252
	btfss	STATUS,C
	goto	TLF18
; quarter_sec -= 4 ; 
	movlw	4
	subwf	quarter_sec,F
; ++ seconds ; event0 . seconds = event0 . seconds + 1 ; 
	incf	seconds,F
	movf	event0+6,W
	addlw	1
	movwf	event0+6
; if ( seconds >= 60 ) seconds -= 60 , ++ minutes ; 
	movf	seconds,W
	addlw	196
	btfss	STATUS,C
	goto	TLF19
	movlw	60
	subwf	seconds,F
	incf	minutes,F
; if ( dis_what == 1 ) char_display ( seconds ) ; 
TLF19
	BANKSEL	dis_what
	movf	dis_what,W
	addlw	255
	btfss	STATUS,Z
	goto	TLF20
	movf	seconds,W
	call	char_display
; if ( dis_what == 3 ) dis_events ( ) ; 
TLF20
	BANKSEL	dis_what
	movf	dis_what,W
	addlw	253
	btfss	STATUS,Z
	goto	TLF21
	call	dis_events
; if ( new_event ) dp ^= 8 ; 
TLF21
	BANKSEL	new_event
	movf	new_event,W
	btfsc	STATUS,Z
	goto	TLF22
	movlw	8
	xorwf	dp,F
; } 
TLF22
; } } 
TLF18
; } if ( minutes >= 60 ) minutes -= 60 , ++ hours ; 
TLF14
	BANKSEL	minutes
	movf	minutes,W
	addlw	196
	btfss	STATUS,C
	goto	TLF23
	movlw	60
	subwf	minutes,F
	incf	hours,F
; if ( hours >= 24 ) { 
TLF23
	BANKSEL	hours
	movf	hours,W
	addlw	232
	btfss	STATUS,C
	goto	TLF24
; hours -= 24 , ++ days ; 
	movlw	24
	subwf	hours,F
	incf	days,F
; } 
; if ( event0 . seconds >= 60 ) event0 . seconds = event0 . seconds - 60 , event0 . minutes = event0 . minutes + 1 ; 
TLF24
	BANKSEL	event0
	movf	event0+6,W
	addlw	196
	btfss	STATUS,C
	goto	TLF25
	movf	event0+6,W
	addlw	196
	movwf	event0+6
	movf	event0+5,W
	addlw	1
	movwf	event0+5
; if ( event0 . minutes >= 60 ) event0 . minutes = event0 . minutes - 60 , event0 . hours = event0 . hours + 1 ; 
TLF25
	BANKSEL	event0
	movf	event0+5,W
	addlw	196
	btfss	STATUS,C
	goto	TLF26
	movf	event0+5,W
	addlw	196
	movwf	event0+5
	movf	event0+4,W
	addlw	1
	movwf	event0+4
; if ( event0 . hours >= 24 ) event0 . hours = event0 . hours - 24 , event0 . days = event0 . days + 1 ; 
TLF26
	BANKSEL	event0
	movf	event0+4,W
	addlw	232
	btfss	STATUS,C
	goto	TLF27
	movf	event0+4,W
	addlw	232
	movwf	event0+4
	movf	event0+3,W
	addlw	1
	movwf	event0+3
; convert_timer ( ) ; 
TLF27
	call	convert_timer
; if ( holdoff ) -- holdoff ; 
	BANKSEL	TLF5
	movf	TLF5,W
	btfsc	STATUS,Z
	goto	TLF28
	decf	TLF5,F
; else { 
	goto	TLF29
TLF28
; if ( switches ) holdoff = 200 ; 
	movf	switches,W
	btfsc	STATUS,Z
	goto	TLF30
	movlw	200
	BANKSEL	TLF5
	movwf	TLF5
; if ( switches & 32 ) { 
TLF30
	movf	switches,W
	andlw	32
	btfsc	STATUS,Z
	goto	TLF31
; dis_state = 0 ; 
	movlw	0
	BANKSEL	dis_state
	movwf	dis_state
; if ( dis_what != 3 ) dis_what = 3 ; 
	movf	dis_what,W
	addlw	253
	btfsc	STATUS,Z
	goto	TLF32
	movlw	3
	movwf	dis_what
; else dis_event = ( dis_event - 1 ) & 15 ; 
	goto	TLF33
TLF32
	BANKSEL	dis_event
	movf	dis_event,W
	addlw	255
	andlw	15
	movwf	dis_event
TLF33
; } 
; if ( switches & 128 ) dis_what = ( dis_what + 1 ) & 3 , dis_state = 0 ; 
TLF31
	movf	switches,W
	andlw	128
	btfsc	STATUS,Z
	goto	TLF34
	BANKSEL	dis_what
	movf	dis_what,W
	addlw	1
	andlw	3
	movwf	dis_what
;movlw	0
	clrf 	dis_state
; } 
TLF34
; } } 
TLF29
TLF9
; )  } 
	goto	TLF8
TLF10
	return
; dis_events ( ) { 
dis_events
; static char i ; 
	;data
TLF35	equ 293
; static char index ; 
TLF36	equ 294
; static char j ; 
TLF37	equ 295
; static char t ; 
TLF38	equ 296
; new_event = 0 ; 
	;code
	movlw	0
	BANKSEL	new_event
	movwf	new_event
; if ( t ) { 
	bsf	STATUS,RP1
	movf	TLF38,W
	btfsc	STATUS,Z
	goto	TLF39
; t = 0 ; 
;movlw	0
	clrf 	TLF38
; return ; 
	return
; } 
; switch ( dis_state ) { 
TLF39
	BANKSEL	dis_state
	movf	dis_state,W
; case 0 : 
; : for ( j = 0 ; j < 16 ; ++ j ) { 
	addlw	0
	btfss	STATUS,Z
	goto	TLF42
TLF41
	movlw	0
	BANKSEL	TLF37
	movwf	TLF37
TLF44
	BANKSEL	TLF37
	movf	TLF37,W
	addlw	240
	btfsc	STATUS,C
	goto	TLF46
; index = 1 ; 
	movlw	1
	movwf	TLF36
; i = dis_event ; 
	bcf	STATUS,RP1
	movf	dis_event,W
	bsf	STATUS,RP1
	movwf	TLF35
; while ( i -- ) index += 7 ; 
TLF47
	BANKSEL	TLF35
	movf	TLF35,W
	decf	TLF35,F
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF48
	movlw	7
	addwf	TLF36,F
	goto	TLF47
TLF48
; if ( dummy [ index + 4 ] != 0xff ) break ; 
	BANKSEL	TLF36
	movf	TLF36,W
	addlw	4
	addlw	16
	call	_eeadr
	movf	_eedata,W
	addlw	1
	btfsc	STATUS,Z
	goto	TLF49
	goto	TLF46
; -- dis_event ; 
TLF49
	BANKSEL	dis_event
	decf	dis_event,F
; dis_event &= 15 ; 
	movlw	15
	andwf	dis_event,F
; } 
TLF45
; ++ j )  char_display ( dis_event ) ; 
	BANKSEL	TLF37
	incf	TLF37,F
	goto	TLF44
TLF46
	BANKSEL	dis_event
	movf	dis_event,W
	call	char_display
; digits [ 2 ] = segment [ 14 ] ; 
	movlw	digits+2
	movwf	FSR
	movlw	14
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; break ; 
	goto	TLF40
; case 1 : 
TLF42
; : digits [ 2 ] = segment [ 10 ] ; 
	addlw	255
	btfss	STATUS,Z
	goto	TLF51
TLF50
	movlw	digits+2
	movwf	FSR
	movlw	10
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 1 ] = segment [ 6 ] ; 
	movlw	digits+1
	movwf	FSR
	movlw	6
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 0 ] = segment [ 14 ] ; 
	movlw	digits+0
	movwf	FSR
	movlw	14
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; break ; 
	goto	TLF40
; case 2 : 
TLF51
; : char_display ( days - dummy [ index ] ) ; 
	addlw	255
	btfss	STATUS,Z
	goto	TLF54
TLF53
	BANKSEL	TLF36
	movf	TLF36,W
	addlw	16
	call	_eeadr
	BANKSEL	days
	movf	days,W
	movwf	_temp
	movf	_eedata,W
	subwf	_temp,W
	call	char_display
; t = 1 ; 
	movlw	1
	BANKSEL	TLF38
	movwf	TLF38
; break ; 
	goto	TLF40
; case 3 : 
TLF54
; : digits [ 2 ] = 8  + 16  + 32  ; 
	addlw	255
	btfss	STATUS,Z
	goto	TLF57
TLF56
	movlw	digits+2
	movwf	FSR
	movlw	56
	movwf	INDF
; digits [ 1 ] = 4  + 8  + 16  + 64  ; 
	movlw	digits+1
	movwf	FSR
	movlw	92
	movwf	INDF
; digits [ 0 ] = 0 ; 
	movlw	digits+0
	movwf	FSR
;movlw	0
	clrf 	INDF
; break ; 
	goto	TLF40
; case 5 : 
TLF57
; : digits [ 2 ] = 2  + 4  + 16  + 32  + 64  ; 
	addlw	254
	btfss	STATUS,Z
	goto	TLF60
TLF59
	movlw	digits+2
	movwf	FSR
	movlw	118
	movwf	INDF
; digits [ 1 ] = 16  ; 
	movlw	digits+1
	movwf	FSR
	movlw	16
	movwf	INDF
; digits [ 0 ] = 0 ; 
	movlw	digits+0
	movwf	FSR
;movlw	0
	clrf 	INDF
; break ; 
	goto	TLF40
; case 7 : 
TLF60
; : digits [ 2 ] = 2  + 4  + 16  + 8  + 64  ; 
	addlw	254
	btfss	STATUS,Z
	goto	TLF63
TLF62
	movlw	digits+2
	movwf	FSR
	movlw	94
	movwf	INDF
; digits [ 1 ] = segment [ 10 ] ; 
	movlw	digits+1
	movwf	FSR
	movlw	10
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 0 ] = segment [ 4 ] ; 
	movlw	digits+0
	movwf	FSR
	movlw	4
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; break ; 
	goto	TLF40
; case 9 : 
TLF63
; : digits [ 2 ] = 2  + 4  + 16  + 32  + 64  ; 
	addlw	254
	btfss	STATUS,Z
	goto	TLF66
TLF65
	movlw	digits+2
	movwf	FSR
	movlw	118
	movwf	INDF
; digits [ 1 ] = 16  + 64  ; 
	movlw	digits+1
	movwf	FSR
	movlw	80
	movwf	INDF
; digits [ 0 ] = segment [ 5 ] ; 
	movlw	digits+0
	movwf	FSR
	movlw	5
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; break ; 
	goto	TLF40
; case 11 : 
TLF66
; : digits [ 2 ] = 1  + 2  + 4  + 16  + 32  ; 
	addlw	254
	btfss	STATUS,Z
	goto	TLF69
TLF68
	movlw	digits+2
	movwf	FSR
	movlw	55
	movwf	INDF
; digits [ 1 ] = 16  ; 
	movlw	digits+1
	movwf	FSR
	movlw	16
	movwf	INDF
; digits [ 0 ] = 16  + 64  + 4  ; 
	movlw	digits+0
	movwf	FSR
	movlw	84
	movwf	INDF
; break ; 
	goto	TLF40
; case 13 : 
TLF69
; : digits [ 2 ] = segment [ 5 ] ; 
	addlw	254
	btfss	STATUS,Z
	goto	TLF72
TLF71
	movlw	digits+2
	movwf	FSR
	movlw	5
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 1 ] = segment [ 14 ] ; 
	movlw	digits+1
	movwf	FSR
	movlw	14
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 0 ] = 64  + 16  + 8  ; 
	movlw	digits+0
	movwf	FSR
	movlw	88
	movwf	INDF
; break ; 
	goto	TLF40
; case 14 : 
TLF72
; : i = dummy [ index + 6 ] ; 
	addlw	255
	btfss	STATUS,Z
	goto	TLF75
TLF74
	BANKSEL	TLF36
	movf	TLF36,W
	addlw	6
	addlw	16
	call	_eeadr
	movf	_eedata,W
	BANKSEL	TLF35
	movwf	TLF35
; if ( dummy [ index + 5 ] ) char_display ( i ) ; 
	movf	TLF36,W
	addlw	5
	addlw	16
	call	_eeadr
	movf	_eedata,W
	btfsc	STATUS,Z
	goto	TLF77
	BANKSEL	TLF35
	movf	TLF35,W
	call	char_display
; else { 
	goto	TLF78
TLF77
; i = i - 3 ; 
	BANKSEL	TLF35
	movf	TLF35,W
	addlw	253
	movwf	TLF35
; if ( i > 59 ) i = 0 ; 
	movf	TLF35,W
	addlw	197
	btfss	STATUS,Z	;_JLE
	btfss	STATUS,C
	goto	TLF79
;movlw	0
	clrf 	TLF35
; char_display ( i ) ; 
TLF79
	BANKSEL	TLF35
	movf	TLF35,W
	call	char_display
; } 
TLF78
; t = 1 ; 
	movlw	1
	BANKSEL	TLF38
	movwf	TLF38
; break ; 
	goto	TLF40
; default : 
TLF80
; i = ( dis_state - 2 ) >> 1 ; 
	BANKSEL	dis_state
	movf	dis_state,W
	addlw	254
	movwf	_temp
	movlw	1
	iorlw	0
	call	_rshift
	movf	_temp,W
	bsf	STATUS,RP1
	movwf	TLF35
; char_display ( dummy [ index + i ] ) ; 
	movf	TLF36,W
	addwf	TLF35,W
	addlw	16
	call	_eeadr
	movf	_eedata,W
	call	char_display
; t = 1 ; 
	movlw	1
	BANKSEL	TLF38
	movwf	TLF38
; break ; 
	goto	TLF40
; } 
TLF75
	goto	TLF80
TLF40
; ++ dis_state ; 
	BANKSEL	dis_state
	incf	dis_state,F
; if ( dis_state >= 15 ) dis_state = 1 ; 
	movf	dis_state,W
	addlw	241
	btfss	STATUS,C
	goto	TLF82
	movlw	1
	movwf	dis_state
; } 
TLF82
	return
; } convert_timer ( ) { 
convert_timer
; static char slip ; 
	;data
TLF83	equ 297
; static char timer ; 
TLF84	equ 298
; -- timer ; 
	;code
	BANKSEL	TLF84
	decf	TLF84,F
; if ( timer == 147 ) { 
	movf	TLF84,W
	addlw	109
	btfss	STATUS,Z
	goto	TLF85
; ad_convert ( ) ; 
	call	ad_convert
; res2_l = result_low ; 
	BANKSEL	result_low
	movf	result_low,W
	movwf	res2_l
; res2_h = result_high ; 
	movf	result_high,W
	movwf	res2_h
; } 
; if ( timer == 75 ) { 
TLF85
	BANKSEL	TLF84
	movf	TLF84,W
	addlw	181
	btfss	STATUS,Z
	goto	TLF86
; ad_convert ( ) ; 
	call	ad_convert
; res1_l = result_low ; 
	BANKSEL	result_low
	movf	result_low,W
	movwf	res1_l
; res1_h = result_high ; 
	movf	result_high,W
	movwf	res1_h
; } 
; if ( timer == 3 ) { 
TLF86
	BANKSEL	TLF84
	movf	TLF84,W
	addlw	253
	btfss	STATUS,Z
	goto	TLF87
; ad_convert ( ) ; 
	call	ad_convert
; res0_l = result_low ; 
	BANKSEL	result_low
	movf	result_low,W
	movwf	res0_l
; res0_h = result_high ; 
	movf	result_high,W
	movwf	res0_h
; if ( looks_ok ( ) ) ave_values ( ) ; 
	call	looks_ok
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF88
	call	ave_values
; } 
TLF88
; } if ( timer == 0 ) { 
TLF87
	BANKSEL	TLF84
	movf	TLF84,W
;addlw	256
	btfss	STATUS,Z
	goto	TLF89
; slip = 0 ; 
;movlw	0
	clrf 	TLF83
; dp = 0 ; 
;movlw	0
	clrf 	dp
; acch = res2_h ; accl = res2_l ; 
	BANKSEL	res2_h
	movf	res2_h,W
	bcf	STATUS,RP0
	movwf	acch
	bsf	STATUS,RP0
	movf	res2_l,W
	bcf	STATUS,RP0
	movwf	accl
; argh = 0 ; argl = 30 ; dadd ( ) ; 
	movlw	0
	movwf	argh
	movlw	30
	movwf	argl
	call	dadd
; argh = res1_h ; argl = res1_l ; 
	BANKSEL	res1_h
	movf	res1_h,W
	bcf	STATUS,RP0
	movwf	argh
	bsf	STATUS,RP0
	movf	res1_l,W
	bcf	STATUS,RP0
	movwf	argl
; if ( dsub ( ) ) ++ slip , ++ neg_slip , dp = 0x10 ; 
	call	dsub
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF90
	BANKSEL	TLF83
	incf	TLF83,F
	bcf	STATUS,RP1
	incf	neg_slip,F
	movlw	16
	movwf	dp
; acch = res1_h ; accl = res1_l ; 
TLF90
	BANKSEL	res1_h
	movf	res1_h,W
	bcf	STATUS,RP0
	movwf	acch
	bsf	STATUS,RP0
	movf	res1_l,W
	bcf	STATUS,RP0
	movwf	accl
; argh = 0 ; argl = 30 ; dadd ( ) ; 
	movlw	0
	movwf	argh
	movlw	30
	movwf	argl
	call	dadd
; argh = res2_h ; argl = res2_h ; 
	BANKSEL	res2_h
	movf	res2_h,W
	bcf	STATUS,RP0
	movwf	argh
	bsf	STATUS,RP0
	movf	res2_h,W
	bcf	STATUS,RP0
	movwf	argl
; if ( dsub ( ) ) -- slip , ++ pos_slip , dp = 4 ; 
	call	dsub
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF91
	BANKSEL	TLF83
	decf	TLF83,F
	bcf	STATUS,RP1
	incf	pos_slip,F
	movlw	4
	movwf	dp
; timer = 200 + slip ; 
TLF91
	movlw	200
	BANKSEL	TLF83
	addwf	TLF83,W
	movwf	TLF84
; } 
; } 
TLF89
	return
; } ave_values ( ) { 
ave_values
; static char t ; 
	;data
TLF92	equ 299
; acch = sum_high ; 
	;code
	BANKSEL	sum_high
	movf	sum_high,W
	movwf	acch
; accl = sum_low ; 
	movf	sum_low,W
	movwf	accl
; argh = res0_h ; 
	bsf	STATUS,RP0
	movf	res0_h,W
	bcf	STATUS,RP0
	movwf	argh
; argl = res0_l ; 
	bsf	STATUS,RP0
	movf	res0_l,W
	bcf	STATUS,RP0
	movwf	argl
; dadd ( ) ; 
	call	dadd
; if ( ++ t >= 4 ) { 
	BANKSEL	TLF92
	incf	TLF92,F
	movf	TLF92,W
	addlw	252
	btfss	STATUS,C
	goto	TLF93
; argl = 4 * 20 ; 
	movlw	80
	bcf	STATUS,RP1
	movwf	argl
; argh = 0 ; 
;movlw	0
	clrf 	argh
; if ( dsub ( ) ) zacc ( ) ; 
	call	dsub
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF94
	call	zacc
; argl = 9 ; argh = 0 ; 
TLF94
	movlw	9
	BANKSEL	argl
	movwf	argl
;movlw	0
	clrf 	argh
; t = 0 ; 
	movlw	0
	bsf	STATUS,RP1
	movwf	TLF92
; while ( dsub ( ) == 0 ) ++ t ; 
TLF95
	call	dsub
;addlw	256
	btfss	STATUS,Z
	goto	TLF96
	BANKSEL	TLF92
	incf	TLF92,F
	goto	TLF95
TLF96
; if ( dis_what == 0 ) char_display ( t ) ; 
	BANKSEL	dis_what
	movf	dis_what,W
;addlw	256
	btfss	STATUS,Z
	goto	TLF97
	bsf	STATUS,RP1
	movf	TLF92,W
	call	char_display
; else if ( dis_what == 2 ) { 
	goto	TLF98
TLF97
	BANKSEL	dis_what
	movf	dis_what,W
	addlw	254
	btfss	STATUS,Z
	goto	TLF99
; acch = res0_h ; accl = res0_l ; int_display ( ) ; 
	bsf	STATUS,RP0
	movf	res0_h,W
	bcf	STATUS,RP0
	movwf	acch
	bsf	STATUS,RP0
	movf	res0_l,W
	bcf	STATUS,RP0
	movwf	accl
	call	int_display
; } 
; event_check ( t ) ; 
TLF99
TLF98
	BANKSEL	TLF92
	movf	TLF92,W
	call	event_check
; t = sum_high = sum_low = 0 ; 
	movlw	0
	BANKSEL	sum_low
	movwf	sum_low
	movwf	sum_high
	bsf	STATUS,RP1
	movwf	TLF92
; } 
; else { 
	goto	TLF100
TLF93
; sum_high = acch ; 
	BANKSEL	acch
	movf	acch,W
	movwf	sum_high
; sum_low = accl ; 
	movf	accl,W
	movwf	sum_low
; } 
TLF100
	return
; } 
; char looks_ok ( ) { 
looks_ok
; if ( res0_h == 0 && res0_l < 60 ) return 1 ; 
	BANKSEL	res0_h
	movf	res0_h,W
;addlw	256
	btfss	STATUS,Z
	goto	TLF101
	movf	res0_l,W
	addlw	196
	btfsc	STATUS,C
	goto	TLF101
	retlw	1
;iorlw	0
;return
; acch = res1_h ; accl = res1_l ; 
TLF101
	BANKSEL	res1_h
	movf	res1_h,W
	bcf	STATUS,RP0
	movwf	acch
	bsf	STATUS,RP0
	movf	res1_l,W
	bcf	STATUS,RP0
	movwf	accl
; argh = 0 ; argl = 10 ; dadd ( ) ; 
	movlw	0
	movwf	argh
	movlw	10
	movwf	argl
	call	dadd
; argh = res0_h ; argl = res0_l ; 
	BANKSEL	res0_h
	movf	res0_h,W
	bcf	STATUS,RP0
	movwf	argh
	bsf	STATUS,RP0
	movf	res0_l,W
	bcf	STATUS,RP0
	movwf	argl
; if ( dsub ( ) ) return 0 ; 
	call	dsub
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF102
	retlw	0
;iorlw	0
;return
; acch = res2_h ; accl = res2_l ; 
TLF102
	BANKSEL	res2_h
	movf	res2_h,W
	bcf	STATUS,RP0
	movwf	acch
	bsf	STATUS,RP0
	movf	res2_l,W
	bcf	STATUS,RP0
	movwf	accl
; argh = 0 ; argl = 10 ; dadd ( ) ; 
	movlw	0
	movwf	argh
	movlw	10
	movwf	argl
	call	dadd
; argh = res0_h ; argl = res0_l ; 
	BANKSEL	res0_h
	movf	res0_h,W
	bcf	STATUS,RP0
	movwf	argh
	bsf	STATUS,RP0
	movf	res0_l,W
	bcf	STATUS,RP0
	movwf	argl
; if ( dsub ( ) ) return 0 ; 
	call	dsub
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF103
	retlw	0
;iorlw	0
;return
; return 1 ; 
TLF103
	retlw	1
;iorlw	0
;return
; } 
; ad_convert ( ) { 
ad_convert
; no_interrupts ( ) ; 
	call	no_interrupts
; ADCON0 = 1 + 64 ; 
	movlw	65
	BANKSEL	ADCON0
	movwf	ADCON0
; ADCON1 = 128 ; 
	movlw	128
	bsf	STATUS,RP0
	movwf	ADCON1
; PORTA = 0 ; 
	movlw	0
	bcf	STATUS,RP0
	movwf	PORTA
; TRISA = ( 1 + 64 ) ^ 0xff ; 
	movlw	190
	bsf	STATUS,RP0
	movwf	TRISA
; # asm 
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

TLF104
; TRISA = 64 ^ 0xff ; 
	movlw	191
	BANKSEL	TRISA
	movwf	TRISA
; PORTA = 64 ; 
	movlw	64
	bcf	STATUS,RP0
	movwf	PORTA
; # asm 
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
TLF105
; ADCON0 |= 2 ; 
	movlw	2
	BANKSEL	ADCON0
	iorwf	ADCON0,F
; interrupts ( ) ; 
	call	interrupts
; while ( ADCON0 & 2 ) ; 
TLF106
	BANKSEL	ADCON0
	movf	ADCON0,W
	andlw	2
	btfsc	STATUS,Z
	goto	TLF107
	goto	TLF106
TLF107
; result_high = ADRESH ; 
	BANKSEL	ADRESH
	movf	ADRESH,W
	bsf	STATUS,RP0
	movwf	result_high
; result_low = ADRESL ; 
	movf	ADRESL,W
	movwf	result_low
	return
; } 
; char_display ( char val ) { 
	;data
_char_display	equ	300
	;code
char_display
	banksel	_char_display
	movwf	_char_display
; accl = val ; 
	movf	_char_display,W
	bcf	STATUS,RP1
	movwf	accl
; acch = 0 ; 
;movlw	0
	clrf 	acch
; int_display ( ) ; 
	call	int_display
	return
; } 
; zacc ( ) { 
zacc
; accl = acch = 0 ; 
	movlw	0
	BANKSEL	acch
	movwf	acch
	movwf	accl
	return
; } 
; char dadd ( ) { 
dadd
; # asm 
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

TLF108
; return overflow ; 
	BANKSEL	overflow
	movf	overflow,W
	return
; } 
; char dsub ( ) { 
dsub
; # asm 

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

TLF109
; return overflow ; 
	BANKSEL	overflow
	movf	overflow,W
	return
; } 
; int_display ( ) { 
int_display
; static char t ; 
	;data
TLF110	equ 301
; t = dp = 0 ; 
	;code
	movlw	0
	movwf	dp
	BANKSEL	TLF110
	movwf	TLF110
; argh = 3 ; 
	movlw	3
	bcf	STATUS,RP1
	movwf	argh
; argl = 0xe8 ; 
	movlw	232
	movwf	argl
; while ( dsub ( ) == 0 ) ++ t ; 
TLF111
	call	dsub
;addlw	256
	btfss	STATUS,Z
	goto	TLF112
	BANKSEL	TLF110
	incf	TLF110,F
	goto	TLF111
TLF112
; if ( t ) dp = 4 + 8 + 0x10 ; 
	BANKSEL	TLF110
	movf	TLF110,W
	btfsc	STATUS,Z
	goto	TLF113
	movlw	28
	movwf	dp
; dadd ( ) ; 
TLF113
	call	dadd
; t = 0 ; 
	movlw	0
	BANKSEL	TLF110
	movwf	TLF110
; argh = 0 ; 
	movlw	0
	bcf	STATUS,RP1
	movwf	argh
; argl = 100 ; 
	movlw	100
	movwf	argl
; while ( dsub ( ) == 0 ) ++ t ; 
TLF114
	call	dsub
;addlw	256
	btfss	STATUS,Z
	goto	TLF115
	BANKSEL	TLF110
	incf	TLF110,F
	goto	TLF114
TLF115
; dadd ( ) ; 
	call	dadd
; digits [ 2 ] = segment [ t ] ; 
	movlw	digits+2
	movwf	FSR
	BANKSEL	TLF110
	movf	TLF110,W
	addlw	0
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; t = 0 ; 
	movlw	0
	BANKSEL	TLF110
	movwf	TLF110
; argl = 10 ; 
	movlw	10
	bcf	STATUS,RP1
	movwf	argl
; while ( dsub ( ) == 0 ) ++ t ; 
TLF116
	call	dsub
;addlw	256
	btfss	STATUS,Z
	goto	TLF117
	BANKSEL	TLF110
	incf	TLF110,F
	goto	TLF116
TLF117
; dadd ( ) ; 
	call	dadd
; digits [ 1 ] = segment [ t ] ; 
	movlw	digits+1
	movwf	FSR
	BANKSEL	TLF110
	movf	TLF110,W
	addlw	0
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
; digits [ 0 ] = segment [ accl ] ; 
	movlw	digits+0
	movwf	FSR
	BANKSEL	accl
	movf	accl,W
	addlw	0
	call	_eeadr
	movf	_eedata,W
	movwf	INDF
	return
; } 
; interrupts ( ) { 
interrupts
; # asm 
      bsf   INTCON,GIE   
TLF118
	return
; } no_interrupts ( ) { 
no_interrupts
; # asm 
      bcf   INTCON,GIE
      btfsc INTCON,GIE    ;see AN576
      goto $-2
TLF119
	return
; } # pragma longcall 
; event_check ( char val ) { 
	;data
_event_check	equ	302
	;code
event_check
	banksel	_event_check
	movwf	_event_check
; lc_event_check ( val ) ; 
	movf	_event_check,W
	pagesel	lc_event_check
	call	lc_event_check
	pagesel	event_check
	return
; } 
; # asm 
           org  0x800
TLF120
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
; days = hours = minutes = dis_what = seconds = quarter_sec = 0 ; 
	movlw	0
	BANKSEL	quarter_sec
	movwf	quarter_sec
	movwf	seconds
	movwf	dis_what
	movwf	minutes
	movwf	hours
	movwf	days
; pos_slip = neg_slip = 0 ; 
	movlw	0
	movwf	neg_slip
	movwf	pos_slip
; ee_index = in_progress = in_prog_count = 0 ; 
	movlw	0
	movwf	in_prog_count
	movwf	in_progress
	movwf	ee_index
; dis_event = new_event = 0 ; 
	movlw	0
	movwf	new_event
	movwf	dis_event
; TMR1H = 0xfc  ; 
	movlw	252
	movwf	TMR1H
; TMR1L = 0x18  ; 
	movlw	24
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
; TMR1L += ( 0x18  + 6 + 2 ) ; 
	movlw	32
	addwf	TMR1L,F
; T1CON = 1  ; 
	movlw	1
	movwf	T1CON
; ++ ticks ; 
	incf	ticks,F
; PORTC &= ( ( 4 + 8 + 0x10 ) ^ 0xff ) ; 
	movlw	227
	andwf	PORTC,F
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
	goto	TLF121
	movlw	128
	iorwf	portb,F
; PORTB = portb ^ 0xff ; 
TLF121
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
	goto	TLF122
; dig_count = 0 ; 
;movlw	0
	clrf 	dig_count
; dig_bit = 0x04 ; 
	movlw	4
	movwf	dig_bit
; } 
; # asm 
TLF122
       banksel    PIR1                       ; clear timer 1 interrupt flag
       bcf        PIR1,TMR1IF

	movf		pclath_temp,w		; retrieve copy of PCLATH register
	movwf		PCLATH			; restore pre-isr PCLATH register contents	
	movf		status_temp,w		; retrieve copy of STATUS register
	movwf		STATUS			; restore pre-isr STATUS register contents
	swapf		w_temp,f
	swapf		w_temp,w		; restore pre-isr W register contents
TLF123
	retfie
; } # define DEADBAND 5 
; # define NOMINAL 117 
; # pragma shortcall 
; lc_event_check ( char value ) { 
	;data
_lc_event_check	equ	303
	;code
lc_event_check
	banksel	_lc_event_check
	movwf	_lc_event_check
; if ( in_progress ) { 
	bcf	STATUS,RP1
	movf	in_progress,W
	btfsc	STATUS,Z
	goto	TLF124
; check_end ( value ) ; 
	BANKSEL	_lc_event_check
	movf	_lc_event_check,W
	call	check_end
; return ; 
	return
; } 
; if ( in_band ( value ) ) return ; 
TLF124
	BANKSEL	_lc_event_check
	movf	_lc_event_check,W
	call	in_band
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF125
	return
; if ( ++ in_prog_count >= 2 ) { 
TLF125
	BANKSEL	in_prog_count
	incf	in_prog_count,F
	movf	in_prog_count,W
	addlw	254
	btfss	STATUS,C
	goto	TLF126
; event0 . age = days ; 
	movf	days,W
	movwf	event0
; event0 . low = event0 . high = 117  ; 
	movlw	117
	movwf	event0+2
	movwf	event0+1
; event0 . days = event0 . hours = event0 . minutes = event0 . seconds = 0 ; 
	movlw	0
	movwf	event0+6
	movwf	event0+5
	movwf	event0+4
	movwf	event0+3
; in_progress = 1 ; 
	movlw	1
	movwf	in_progress
; in_prog_count = 0 ; 
;movlw	0
	clrf 	in_prog_count
; } 
; } 
TLF126
	return
; } check_end ( char value ) { 
	;data
_check_end	equ	304
	;code
check_end
	banksel	_check_end
	movwf	_check_end
; static char t ; 
	;data
TLF127	equ 305
; t = in_band ( value ) ; 
	;code
	BANKSEL	_check_end
	movf	_check_end,W
	call	in_band
	BANKSEL	TLF127
	movwf	TLF127
; if ( t == 0 ) { 
	movf	TLF127,W
;addlw	256
	btfss	STATUS,Z
	goto	TLF128
; if ( value > event0 . high ) { 
	movf	_check_end,W
	movwf	_temp
	bcf	STATUS,RP1
	movf	event0+2,W
	subwf	_temp,W
	btfss	STATUS,Z	;_JLE
	btfss	STATUS,C
	goto	TLF129
; bank_bug = value ; 
	BANKSEL	_check_end
	movf	_check_end,W
	bcf	STATUS,RP1
	movwf	bank_bug
; event0 . high = bank_bug ; 
	movf	bank_bug,W
	movwf	event0+2
; } 
; if ( value < event0 . low ) { 
TLF129
	BANKSEL	_check_end
	movf	_check_end,W
	movwf	_temp
	bcf	STATUS,RP1
	movf	event0+1,W
	subwf	_temp,W
	btfsc	STATUS,C
	goto	TLF130
; bank_bug = value ; 
	BANKSEL	_check_end
	movf	_check_end,W
	bcf	STATUS,RP1
	movwf	bank_bug
; event0 . low = bank_bug ; 
	movf	bank_bug,W
	movwf	event0+1
; } 
; in_prog_count = 0 ; 
TLF130
	movlw	0
	BANKSEL	in_prog_count
	movwf	in_prog_count
; } else { 
	goto	TLF131
TLF128
; if ( ++ in_prog_count > 5 ) { 
	BANKSEL	in_prog_count
	incf	in_prog_count,F
	movf	in_prog_count,W
	addlw	251
	btfss	STATUS,Z	;_JLE
	btfss	STATUS,C
	goto	TLF132
; event_save ( ) ; 
	call	event_save
; in_progress = 0 ; 
	movlw	0
	BANKSEL	in_progress
	movwf	in_progress
; in_prog_count = 0 ; 
;movlw	0
	clrf 	in_prog_count
; } 
; } 
TLF132
; } } 
TLF131
	return
; char in_band ( char val ) { 
	;data
_in_band	equ	306
	;code
in_band
	banksel	_in_band
	movwf	_in_band
; if ( val > 117  + 5  ) return 0 ; 
	movf	_in_band,W
	addlw	134
	btfss	STATUS,Z	;_JLE
	btfss	STATUS,C
	goto	TLF133
	retlw	0
;iorlw	0
;return
; if ( val < 117  - 5  ) return 0 ; 
TLF133
	BANKSEL	_in_band
	movf	_in_band,W
	addlw	144
	btfsc	STATUS,C
	goto	TLF134
	retlw	0
;iorlw	0
;return
; return 1 ; 
TLF134
	retlw	1
;iorlw	0
;return
; } 
; # asm 
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

TLF135
; event_save ( ) { 
event_save
; static char i ; 
	;data
TLF136	equ 307
; ee_adr = 17 ; i = ee_index ; 
	;code
	movlw	17
	BANKSEL	ee_adr
	movwf	ee_adr
	movf	ee_index,W
	bsf	STATUS,RP1
	movwf	TLF136
; while ( i -- ) ee_adr += 7 ; 
TLF137
	BANKSEL	TLF136
	movf	TLF136,W
	decf	TLF136,F
	iorlw	0
	btfsc	STATUS,Z
	goto	TLF138
	movlw	7
	bcf	STATUS,RP1
	addwf	ee_adr,F
	goto	TLF137
TLF138
; _eedata = event0 . age ; 
	BANKSEL	event0
	movf	event0,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF139
; ++ ee_adr ; 
	BANKSEL	ee_adr
	incf	ee_adr,F
; _eedata = event0 . low ; 
	movf	event0+1,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF140
; ++ ee_adr ; 
	BANKSEL	ee_adr
	incf	ee_adr,F
; _eedata = event0 . high ; 
	movf	event0+2,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF141
; ++ ee_adr ; 
	BANKSEL	ee_adr
	incf	ee_adr,F
; _eedata = event0 . days ; 
	movf	event0+3,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF142
; ++ ee_adr ; 
	BANKSEL	ee_adr
	incf	ee_adr,F
; _eedata = event0 . hours ; 
	movf	event0+4,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF143
; ++ ee_adr ; 
	BANKSEL	ee_adr
	incf	ee_adr,F
; _eedata = event0 . minutes ; 
	movf	event0+5,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF144
; ++ ee_adr ; 
	BANKSEL	ee_adr
	incf	ee_adr,F
; _eedata = event0 . seconds ; 
	movf	event0+6,W
	movwf	_eedata
; # asm 
     movf  ee_adr,W
     call _eewrite
TLF145
; dis_event = ee_index ; 
	BANKSEL	ee_index
	movf	ee_index,W
	movwf	dis_event
; ++ ee_index ; 
	incf	ee_index,F
; ee_index &= 15 ; 
	movlw	15
	andwf	ee_index,F
; new_event = 1 ; 
	movlw	1
	movwf	new_event
	return
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
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,255
	de	255,0
	end
