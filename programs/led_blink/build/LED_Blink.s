subtitle "Microchip MPLAB XC8 C Compiler v4.00 build 20260614213421 Og1 "

pagewidth 120
	processor	16F877A
include "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 38 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 45 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 52 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 59 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 145 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 152 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 202 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 264 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 326 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 388 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 420 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 440 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 518 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 620 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 627 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 634 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 641 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 716 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 723 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 794 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 801 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 871 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 878 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 885 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 892 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 950 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1045 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1052 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1059 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1066 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1073 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1080 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1138 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1145 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1241 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1311 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1361 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1423 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1485 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1547 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1604 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1666 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1706 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1740 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1802 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1809 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1816 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1985 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2066 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2073 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2143 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2208 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2215 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2274 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2281 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2288 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2295 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2302 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2347 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 38 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
INDF equ 00h ;# 
# 45 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 52 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PCL equ 02h ;# 
# 59 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
STATUS equ 03h ;# 
# 145 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
FSR equ 04h ;# 
# 152 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTA equ 05h ;# 
# 202 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTB equ 06h ;# 
# 264 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTC equ 07h ;# 
# 326 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTD equ 08h ;# 
# 388 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PORTE equ 09h ;# 
# 420 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 440 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 518 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 620 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 627 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 634 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 641 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
T1CON equ 010h ;# 
# 716 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 723 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
T2CON equ 012h ;# 
# 794 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 801 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 871 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 878 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 885 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 892 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 950 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1045 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1052 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1059 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1066 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1073 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1080 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1138 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1145 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1241 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1311 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1361 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1423 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1485 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1547 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1604 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1666 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1706 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1740 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1802 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1809 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1816 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1985 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2066 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2073 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2143 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2208 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2215 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2274 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2281 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2288 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2295 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2302 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2347 "/workspaces/pic16f877a-practice/dfp/xc8/pic/include/proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_init_config
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_TRISB
_TRISB	set	0x86
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config WDTE = "OFF"
	file	"LED_Blink.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	main@wait
main@wait:	; 2 bytes @ 0x0
??_init_config:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds	2
	global	main@wait_32
main@wait_32:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4       4
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0      30
;!                                              0 COMMON     4     4      0
;!                        _init_config
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init_config
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      4       4     28.6%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       4      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "../LED_Blink.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            2    2[COMMON] unsigned int 
;;  wait            2    0[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_init_config
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../LED_Blink.c"
	line	6
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../LED_Blink.c"
	line	6
	
_main:	
;incstack = 0
	callstack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l567:	
	fcall	_init_config
	line	9
	
l569:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	10
	
l571:	
	movlw	088h
	movwf	(main@wait)
	movlw	013h
	movwf	((main@wait))+1
	
l573:	
	movlw	01h
	subwf	(main@wait),f
	movlw	0
	skipc
	decf	(main@wait+1),f
	subwf	(main@wait+1),f
		incf	(((main@wait))),w
	skipz
	goto	u11
	incf	(((main@wait+1))),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l573
u10:
	line	11
	
l575:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	12
	
l577:	
	movlw	088h
	movwf	(main@wait_32)
	movlw	013h
	movwf	((main@wait_32))+1
	
l579:	
	movlw	01h
	subwf	(main@wait_32),f
	movlw	0
	skipc
	decf	(main@wait_32+1),f
	subwf	(main@wait_32+1),f
		incf	(((main@wait_32))),w
	skipz
	goto	u21
	incf	(((main@wait_32+1))),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l579
u20:
	goto	l569
	global	start
	ljmp	start
	callstack 0
	line	14
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 3 in file "../LED_Blink.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	3
global __ptext1
__ptext1:	;psect for function _init_config
psect	text1
	file	"../LED_Blink.c"
	line	3
	
_init_config:	
;incstack = 0
	callstack 7
; Regs used in _init_config: [status,2]
	line	4
	
l565:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	5
	
l7:	
	return
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
