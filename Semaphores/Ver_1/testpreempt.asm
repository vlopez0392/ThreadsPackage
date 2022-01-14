;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X ppc)
;--------------------------------------------------------
	.module testpreempt
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_ISR
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genRAMCLEAR
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _consumer
	.globl _producer
	.globl _ThreadCreate
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_BUFFERSIZE	=	0x0021
_BUFFER	=	0x0022
_item	=	0x0025
_empty	=	0x0026
_full	=	0x0027
_mutex	=	0x0028
_n	=	0x0029
_rear	=	0x002a
_front	=	0x002b
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'producer'
;------------------------------------------------------------
;	testpreempt.c:62: void producer(void){
;	-----------------------------------------
;	 function producer
;	-----------------------------------------
_producer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	testpreempt.c:63: item = (char)0x41;
	mov	_item,#0x41
;	testpreempt.c:64: while(1){
00106$:
;	testpreempt.c:65: if(item > (char)0x5A){
	mov	a,_item
	add	a,#0xff - 0x5a
	jnc	00102$
;	testpreempt.c:66: item = (char)0x41;
	mov	_item,#0x41
00102$:
;	testpreempt.c:68: SemaphoreWait(empty);
		0$:
	MOV ACC, _empty 
	JZ 0$ 
	JB 0xE7, 0$ 
	DEC _empty 
;	testpreempt.c:69: SemaphoreWait(mutex);
		1$:
	MOV ACC, _mutex 
	JZ 1$ 
	JB 0xE7, 1$ 
	DEC _mutex 
;	testpreempt.c:71: EA = 0;
;	assignBit
	clr	_EA
;	testpreempt.c:72: BUFFER[rear] = item; //Write to buffer
	mov	a,_rear
	add	a,#_BUFFER
	mov	r0,a
	mov	@r0,_item
;	testpreempt.c:73: rear++;
	mov	a,_rear
	inc	a
	mov	_rear,a
;	testpreempt.c:74: if(rear == BUFFERSIZE){
	mov	a,_BUFFERSIZE
	cjne	a,_rear,00104$
;	testpreempt.c:75: rear = (char)0x00;
	mov	_rear,#0x00
00104$:
;	testpreempt.c:77: item++;  
	mov	a,_item
	inc	a
	mov	_item,a
;	testpreempt.c:78: EA = 1;
;	assignBit
	setb	_EA
;	testpreempt.c:79: SemaphoreSignal(mutex);
	INC _mutex 
;	testpreempt.c:80: SemaphoreSignal(full);
	INC _full 
;	testpreempt.c:83: }
	sjmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'consumer'
;------------------------------------------------------------
;	testpreempt.c:86: void consumer(void){
;	-----------------------------------------
;	 function consumer
;	-----------------------------------------
_consumer:
;	testpreempt.c:88: TMOD |= 0x20; 
	orl	_TMOD,#0x20
;	testpreempt.c:89: TH1 = -6; 
	mov	_TH1,#0xfa
;	testpreempt.c:90: SCON = 0x50; 
	mov	_SCON,#0x50
;	testpreempt.c:91: TR1 = 1;
;	assignBit
	setb	_TR1
;	testpreempt.c:92: TI = 0;
;	assignBit
	clr	_TI
;	testpreempt.c:94: while(1){  
00107$:
;	testpreempt.c:95: SemaphoreWait(full);
		2$:
	MOV ACC, _full 
	JZ 2$ 
	JB 0xE7, 2$ 
	DEC _full 
;	testpreempt.c:96: SemaphoreWait(mutex);
		3$:
	MOV ACC, _mutex 
	JZ 3$ 
	JB 0xE7, 3$ 
	DEC _mutex 
;	testpreempt.c:98: EA = 0;
;	assignBit
	clr	_EA
;	testpreempt.c:99: SBUF = BUFFER[front]; //Write to SBUF 3-deep char buffer front value
	mov	a,_front
	add	a,#_BUFFER
	mov	r1,a
	mov	_SBUF,@r1
;	testpreempt.c:100: front++;
	mov	a,_front
	inc	a
	mov	_front,a
;	testpreempt.c:101: if(front == BUFFERSIZE){
	mov	a,_BUFFERSIZE
	cjne	a,_front,00103$
;	testpreempt.c:102: front = (char)0x00;
	mov	_front,#0x00
;	testpreempt.c:104: while(!TI){} //Poll for TI flag
00103$:
;	testpreempt.c:105: TI = 0; //Clear TI flag
;	assignBit
	jbc	_TI,00129$
	sjmp	00103$
00129$:
;	testpreempt.c:106: EA = 1;
;	assignBit
	setb	_EA
;	testpreempt.c:107: SemaphoreSignal(mutex);
	INC _mutex 
;	testpreempt.c:108: SemaphoreSignal(empty);
	INC _empty 
;	testpreempt.c:110: }
	sjmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testpreempt.c:112: void main(void){ 
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testpreempt.c:114: BUFFERSIZE = 0x03;
	mov	_BUFFERSIZE,#0x03
;	testpreempt.c:115: n = (char)0x00; SemaphoreCreate(full,n);
	mov	_n,#0x00
	CLR 0xAF 
	MOV _full, _n 
	SETB 0xAF 
;	testpreempt.c:116: n = (char)0x03; SemaphoreCreate(empty,n);
	mov	_n,#0x03
	CLR 0xAF 
	MOV _empty, _n 
	SETB 0xAF 
;	testpreempt.c:117: n = (char)0x01; SemaphoreCreate(mutex, n);
	mov	_n,#0x01
	CLR 0xAF 
	MOV _mutex, _n 
	SETB 0xAF 
;	testpreempt.c:118: front = (char)0x00;
	mov	_front,#0x00
;	testpreempt.c:119: rear  = (char)0x00;
	mov	_rear,#0x00
;	testpreempt.c:120: ThreadCreate(producer);  //Create Thread for producer;    
	mov	dptr,#_producer
	lcall	_ThreadCreate
;	testpreempt.c:121: consumer();              //Call consumer;
;	testpreempt.c:122: }
	ljmp	_consumer
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testpreempt.c:125: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testpreempt.c:128: __endasm;
	ljmp	_Bootstrap
;	testpreempt.c:129: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testpreempt.c:130: void _mcs51_genRAMCLEAR(void) { }
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testpreempt.c:131: void _mcs51_genXINIT(void) { }
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testpreempt.c:132: void _mcs51_genXRAMCLEAR(void) { }
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testpreempt.c:135: void timer0_ISR(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	testpreempt.c:138: __endasm;
	ljmp	_myTimer0Handler
;	testpreempt.c:139: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
