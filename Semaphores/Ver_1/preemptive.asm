;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X ppc)
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _main
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
	.globl _ThreadCreate
	.globl _myTimer0Handler
	.globl _ThreadYield
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
_SPArray	=	0x0032
_currThr	=	0x0036
_threadBitMask	=	0x0037
_tempBitMask	=	0x0038
_tempSP	=	0x0039
_shift	=	0x003b
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.org 0x0021
_pushZero:
	.ds 1
	.org 0x003A
_tempPSW:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	preemptive.c:15: __data __at (0x21) static char pushZero = (char)0x00;  //Direct address to push 0 to registers in ThreadCreate                   
	mov	_pushZero,#0x00
;	preemptive.c:18: __data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
	mov	_tempPSW,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:50: void Bootstrap(void) {   
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:52: TMOD = 0;  // timer 0 mode 0
	mov	_TMOD,#0x00
;	preemptive.c:53: IE = 0x82;  // enable timer 0 interrupt; keep consumer polling
	mov	_IE,#0x82
;	preemptive.c:55: TR0 = 1; // set bit TR0 to start running timer 0
;	assignBit
	setb	_TR0
;	preemptive.c:58: threadBitMask = (char)0x00;
	mov	_threadBitMask,#0x00
;	preemptive.c:61: currThr = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_currThr,dpl
;	preemptive.c:62: RESTORESTATE;
	mov	a,_currThr
	add	a,#_SPArray
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;threadId                  Allocated to registers r7 
;startingSP                Allocated to registers r6 
;------------------------------------------------------------
;	preemptive.c:66: ThreadID ThreadCreate(FunctionPtr fp){
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:67: EA =0; //Critical section
;	assignBit
	clr	_EA
;	preemptive.c:70: if(threadBitMask == (char)0x0F){
	mov	a,#0x0f
	cjne	a,_threadBitMask,00102$
;	preemptive.c:71: return -1;
	mov	dpl,#0xff
	ret
00102$:
;	preemptive.c:75: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
	mov	r7,_threadBitMask
	inc	r7
	mov	a,_threadBitMask
	cpl	a
	mov	r6,a
	anl	a,r7
	orl	_threadBitMask,a
;	preemptive.c:79: tempBitMask = threadBitMask;
	mov	_tempBitMask,_threadBitMask
;	preemptive.c:80: while(tempBitMask>>=1){
	mov	r7,#0x00
00103$:
	mov	a,_tempBitMask
	clr	c
	rrc	a
	mov	r6,a
	mov	_tempBitMask,r6
	jz	00105$
;	preemptive.c:81: threadId++;
	inc	r7
	sjmp	00103$
00105$:
;	preemptive.c:85: char startingSP = (char)((threadId^(0x01<<2))<<4);
	mov	a,#0x04
	xrl	a,r7
	swap	a
	anl	a,#0xf0
	mov	r6,a
;	preemptive.c:88: tempSP = SP; 
	mov	_tempSP,_SP
;	preemptive.c:89: SP = startingSP;
	mov	_SP,r6
;	preemptive.c:92: tempPSW ^= (char)(threadId<<3);
	mov	ar6,r7
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	xrl	_tempPSW,a
;	preemptive.c:103: __endasm;
	PUSH	DPL ;; low-byte of fp parameter
	PUSH	DPH ;; high-byte of fp parameter
	PUSH	_pushZero ;; ACC
	PUSH	_pushZero ;; B
	PUSH	_pushZero ;; DPL
	PUSH	_pushZero ;; DPH
	PUSH	_tempPSW ;; PSW
;	preemptive.c:106: SPArray[threadId] = SP;
	mov	a,r7
	add	a,#_SPArray
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:109: SP = tempSP;
	mov	_SP,_tempSP
;	preemptive.c:111: EA = 1;
;	assignBit
	setb	_EA
;	preemptive.c:113: return threadId;
	mov	dpl,r7
;	preemptive.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	preemptive.c:117: void myTimer0Handler(void){
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:118: EA = 0; //Critical section
;	assignBit
	clr	_EA
;	preemptive.c:120: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currThr
	add	a,#_SPArray
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:122: shift = (char)0x01 << currThr;
	mov	b,_currThr
	inc	b
	mov	a,#0x01
	sjmp	00125$
00123$:
	add	a,acc
00125$:
	djnz	b,00123$
	mov	_shift,a
;	preemptive.c:123: char pos = currThr;
	mov	r7,_currThr
;	preemptive.c:124: do{
00106$:
;	preemptive.c:125: if(shift == (char)0x08){
	mov	a,#0x08
	cjne	a,_shift,00102$
;	preemptive.c:126: shift = 0x01;
	mov	_shift,#0x01
;	preemptive.c:127: pos = 0;
	mov	r7,#0x00
	sjmp	00103$
00102$:
;	preemptive.c:129: shift = (shift << 1) | (shift >>7);
	mov	a,_shift
	rl	a
	mov	_shift,a
;	preemptive.c:130: pos++;
	inc	r7
00103$:
;	preemptive.c:132: if(shift & threadBitMask){
	mov	a,_threadBitMask
	anl	a,_shift
	jz	00106$
;	preemptive.c:133: currThr = pos;
	mov	_currThr,r7
;	preemptive.c:137: RESTORESTATE;
	mov	a,_currThr
	add	a,#_SPArray
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:138: EA = 1;
;	assignBit
	setb	_EA
;	preemptive.c:142: __endasm;
	reti
;	preemptive.c:143: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	preemptive.c:146: void ThreadYield(void) {
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:147: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currThr
	add	a,#_SPArray
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:149: shift = (char)0x01 << currThr;
	mov	b,_currThr
	inc	b
	mov	a,#0x01
	sjmp	00125$
00123$:
	add	a,acc
00125$:
	djnz	b,00123$
	mov	_shift,a
;	preemptive.c:150: char pos = currThr;
	mov	r7,_currThr
;	preemptive.c:152: do{
00106$:
;	preemptive.c:153: if(shift == (char)0x08){
	mov	a,#0x08
	cjne	a,_shift,00102$
;	preemptive.c:154: shift = 0x01;
	mov	_shift,#0x01
;	preemptive.c:155: pos = 0;
	mov	r7,#0x00
	sjmp	00103$
00102$:
;	preemptive.c:157: shift = (shift << 1) | (shift >>7);
	mov	a,_shift
	rl	a
	mov	_shift,a
;	preemptive.c:158: pos++;
	inc	r7
00103$:
;	preemptive.c:160: if(shift & threadBitMask){
	mov	a,_threadBitMask
	anl	a,_shift
	jz	00106$
;	preemptive.c:161: currThr = pos;
	mov	_currThr,r7
;	preemptive.c:165: RESTORESTATE;
	mov	a,_currThr
	add	a,#_SPArray
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:166: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
