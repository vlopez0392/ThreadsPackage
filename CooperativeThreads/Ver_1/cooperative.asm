;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Mac OS X ppc)
;--------------------------------------------------------
	.module cooperative
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
_ThreadYield_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	cooperative.c:9: __data __at (0x21) static char pushZero = (char)0x00;  //Direct address to push 0 to registers in ThreadCreate                   
	mov	_pushZero,#0x00
;	cooperative.c:12: __data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
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
;	cooperative.c:42: void Bootstrap(void) {
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
;	cooperative.c:43: threadBitMask = (char)0x00;
	mov	_threadBitMask,#0x00
;	cooperative.c:44: currThr = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_currThr,dpl
;	cooperative.c:45: RESTORESTATE;
	mov	a,_currThr
	add	a,#_SPArray
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	cooperative.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;threadId                  Allocated to registers r7 
;startingSP                Allocated to registers r6 
;------------------------------------------------------------
;	cooperative.c:49: ThreadID ThreadCreate(FunctionPtr fp){
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	cooperative.c:51: if(threadBitMask == (char)0x0F){
	mov	a,#0x0f
	cjne	a,_threadBitMask,00102$
;	cooperative.c:52: return -1;
	mov	dpl,#0xff
	ret
00102$:
;	cooperative.c:56: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
	mov	r7,_threadBitMask
	inc	r7
	mov	a,_threadBitMask
	cpl	a
	mov	r6,a
	anl	a,r7
	orl	_threadBitMask,a
;	cooperative.c:60: tempBitMask = threadBitMask;
	mov	_tempBitMask,_threadBitMask
;	cooperative.c:61: while(tempBitMask>>=1){
	mov	r7,#0x00
00103$:
	mov	a,_tempBitMask
	clr	c
	rrc	a
	mov	r6,a
	mov	_tempBitMask,r6
	jz	00105$
;	cooperative.c:62: threadId++;
	inc	r7
	sjmp	00103$
00105$:
;	cooperative.c:66: char startingSP = (char)((threadId^(0x01<<2))<<4);
	mov	a,#0x04
	xrl	a,r7
	swap	a
	anl	a,#0xf0
	mov	r6,a
;	cooperative.c:69: tempSP = SP; 
	mov	_tempSP,_SP
;	cooperative.c:70: SP = startingSP;
	mov	_SP,r6
;	cooperative.c:73: tempPSW ^= (char)(threadId<<3);
	mov	ar6,r7
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	xrl	_tempPSW,a
;	cooperative.c:84: __endasm;
	PUSH	DPL ;; low-byte of fp parameter
	PUSH	DPH ;; high-byte of fp parameter
	PUSH	_pushZero ;; ACC
	PUSH	_pushZero ;; B
	PUSH	_pushZero ;; DPL
	PUSH	_pushZero ;; DPH
	PUSH	_tempPSW ;; PSW
;	cooperative.c:87: SPArray[threadId] = SP;
	mov	a,r7
	add	a,#_SPArray
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:90: SP = tempSP;
	mov	_SP,_tempSP
;	cooperative.c:93: return threadId;
	mov	dpl,r7
;	cooperative.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;sloc0                     Allocated with name '_ThreadYield_sloc0_1_0'
;------------------------------------------------------------
;	cooperative.c:97: void ThreadYield(void) {
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	cooperative.c:98: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currThr
	add	a,#_SPArray
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:100: char i = currThr;
	mov	r7,_currThr
;	cooperative.c:101: do{
00103$:
;	cooperative.c:102: if((0x01<<((i+1)%(MAXTHREADS))) & threadBitMask){
	mov	ar5,r7
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar6
	push	ar5
	lcall	__modsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	b,r3
	inc	b
	mov	_ThreadYield_sloc0_1_0,#0x01
	mov	(_ThreadYield_sloc0_1_0 + 1),#0x00
	sjmp	00117$
00116$:
	mov	a,_ThreadYield_sloc0_1_0
	add	a,_ThreadYield_sloc0_1_0
	mov	_ThreadYield_sloc0_1_0,a
	mov	a,(_ThreadYield_sloc0_1_0 + 1)
	rlc	a
	mov	(_ThreadYield_sloc0_1_0 + 1),a
00117$:
	djnz	b,00116$
	mov	r2,_threadBitMask
	mov	r4,#0x00
	mov	a,_ThreadYield_sloc0_1_0
	anl	ar2,a
	mov	a,(_ThreadYield_sloc0_1_0 + 1)
	anl	ar4,a
	mov	a,r2
	orl	a,r4
	jz	00102$
;	cooperative.c:103: currThr = (i+1)%MAXTHREADS;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	mov	_currThr,r3
;	cooperative.c:104: break;
	sjmp	00105$
00102$:
;	cooperative.c:106: i = (i+1)%MAXTHREADS;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	mov	ar7,r5
;	cooperative.c:107: }while(1);
	sjmp	00103$
00105$:
;	cooperative.c:108: RESTORESTATE;
	mov	a,_currThr
	add	a,#_SPArray
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	cooperative.c:109: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
