                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module preemptive
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Bootstrap
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _ThreadCreate
                                    110 	.globl _myTimer0Handler
                                    111 	.globl _ThreadYield
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
                           000032   227 _SPArray	=	0x0032
                           000036   228 _currThr	=	0x0036
                           000037   229 _threadBitMask	=	0x0037
                           000038   230 _tempBitMask	=	0x0038
                           000039   231 _tempSP	=	0x0039
                           00003B   232 _shift	=	0x003b
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram
                                    235 ;--------------------------------------------------------
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 	.area	OSEG    (OVR,DATA)
                                    238 	.area	OSEG    (OVR,DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
      000021                        247 	.org 0x0021
      000021                        248 _pushZero:
      000021                        249 	.ds 1
      00003A                        250 	.org 0x003A
      00003A                        251 _tempPSW:
      00003A                        252 	.ds 1
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
                                    258 ;--------------------------------------------------------
                                    259 ; paged external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area PSEG    (PAG,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; uninitialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XSEG    (XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; initialized external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XISEG   (XDATA)
                                    274 	.area HOME    (CODE)
                                    275 	.area GSINIT0 (CODE)
                                    276 	.area GSINIT1 (CODE)
                                    277 	.area GSINIT2 (CODE)
                                    278 	.area GSINIT3 (CODE)
                                    279 	.area GSINIT4 (CODE)
                                    280 	.area GSINIT5 (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area CSEG    (CODE)
                                    284 ;--------------------------------------------------------
                                    285 ; global & static initialisations
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 ;	preemptive.c:15: __data __at (0x21) static char pushZero = (char)0x00;  //Direct address to push 0 to registers in ThreadCreate                   
      000013 75 21 00         [24]  292 	mov	_pushZero,#0x00
                                    293 ;	preemptive.c:18: __data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
      000016 75 3A 00         [24]  294 	mov	_tempPSW,#0x00
                                    295 ;--------------------------------------------------------
                                    296 ; Home
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area HOME    (CODE)
                                    300 ;--------------------------------------------------------
                                    301 ; code
                                    302 ;--------------------------------------------------------
                                    303 	.area CSEG    (CODE)
                                    304 ;------------------------------------------------------------
                                    305 ;Allocation info for local variables in function 'Bootstrap'
                                    306 ;------------------------------------------------------------
                                    307 ;	preemptive.c:49: void Bootstrap(void) {   
                                    308 ;	-----------------------------------------
                                    309 ;	 function Bootstrap
                                    310 ;	-----------------------------------------
      00006D                        311 _Bootstrap:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
                                    320 ;	preemptive.c:51: TMOD = 0;  // timer 0 mode 0
      00006D 75 89 00         [24]  321 	mov	_TMOD,#0x00
                                    322 ;	preemptive.c:52: IE = 0x82;  // enable timer 0 interrupt; keep consumer polling
      000070 75 A8 82         [24]  323 	mov	_IE,#0x82
                                    324 ;	preemptive.c:54: TR0 = 1; // set bit TR0 to start running timer 0
                                    325 ;	assignBit
      000073 D2 8C            [12]  326 	setb	_TR0
                                    327 ;	preemptive.c:57: threadBitMask = (char)0x00;
      000075 75 37 00         [24]  328 	mov	_threadBitMask,#0x00
                                    329 ;	preemptive.c:60: currThr = ThreadCreate(main);
      000078 90 00 59         [24]  330 	mov	dptr,#_main
      00007B 12 00 93         [24]  331 	lcall	_ThreadCreate
      00007E 85 82 36         [24]  332 	mov	_currThr,dpl
                                    333 ;	preemptive.c:61: RESTORESTATE;
      000081 E5 36            [12]  334 	mov	a,_currThr
      000083 24 32            [12]  335 	add	a, #_SPArray
      000085 F9               [12]  336 	mov	r1,a
      000086 87 81            [24]  337 	mov	_SP,@r1
      000088 D0 D0            [24]  338 	POP PSW 
      00008A D0 83            [24]  339 	POP DPH 
      00008C D0 82            [24]  340 	POP DPL 
      00008E D0 F0            [24]  341 	POP B 
      000090 D0 E0            [24]  342 	POP ACC 
                                    343 ;	preemptive.c:62: }
      000092 22               [24]  344 	ret
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'ThreadCreate'
                                    347 ;------------------------------------------------------------
                                    348 ;fp                        Allocated to registers 
                                    349 ;threadId                  Allocated to registers r7 
                                    350 ;startingSP                Allocated to registers r6 
                                    351 ;------------------------------------------------------------
                                    352 ;	preemptive.c:65: ThreadID ThreadCreate(FunctionPtr fp){
                                    353 ;	-----------------------------------------
                                    354 ;	 function ThreadCreate
                                    355 ;	-----------------------------------------
      000093                        356 _ThreadCreate:
                                    357 ;	preemptive.c:66: EA =0; //Critical section
                                    358 ;	assignBit
      000093 C2 AF            [12]  359 	clr	_EA
                                    360 ;	preemptive.c:69: if(threadBitMask == (char)0x0F){
      000095 74 0F            [12]  361 	mov	a,#0x0f
      000097 B5 37 04         [24]  362 	cjne	a,_threadBitMask,00102$
                                    363 ;	preemptive.c:70: return -1;
      00009A 75 82 FF         [24]  364 	mov	dpl, #0xff
      00009D 22               [24]  365 	ret
      00009E                        366 00102$:
                                    367 ;	preemptive.c:74: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
      00009E AF 37            [24]  368 	mov	r7,_threadBitMask
      0000A0 0F               [12]  369 	inc	r7
      0000A1 E5 37            [12]  370 	mov	a,_threadBitMask
      0000A3 F4               [12]  371 	cpl	a
      0000A4 5F               [12]  372 	anl	a,r7
      0000A5 42 37            [12]  373 	orl	_threadBitMask,a
                                    374 ;	preemptive.c:78: tempBitMask = threadBitMask;
      0000A7 85 37 38         [24]  375 	mov	_tempBitMask,_threadBitMask
                                    376 ;	preemptive.c:79: while(tempBitMask>>=1){
      0000AA 7F 00            [12]  377 	mov	r7,#0x00
      0000AC                        378 00103$:
      0000AC E5 38            [12]  379 	mov	a,_tempBitMask
      0000AE C3               [12]  380 	clr	c
      0000AF 13               [12]  381 	rrc	a
      0000B0 FE               [12]  382 	mov	r6,a
      0000B1 8E 38            [24]  383 	mov	_tempBitMask,r6
      0000B3 60 03            [24]  384 	jz	00105$
                                    385 ;	preemptive.c:80: threadId++;
      0000B5 0F               [12]  386 	inc	r7
      0000B6 80 F4            [24]  387 	sjmp	00103$
      0000B8                        388 00105$:
                                    389 ;	preemptive.c:84: char startingSP = (char)((threadId^(0x01<<2))<<4);
      0000B8 74 04            [12]  390 	mov	a,#0x04
      0000BA 6F               [12]  391 	xrl	a,r7
      0000BB C4               [12]  392 	swap	a
      0000BC 54 F0            [12]  393 	anl	a,#0xf0
      0000BE FE               [12]  394 	mov	r6,a
                                    395 ;	preemptive.c:87: tempSP = SP; 
      0000BF 85 81 39         [24]  396 	mov	_tempSP,_SP
                                    397 ;	preemptive.c:88: SP = startingSP;
      0000C2 8E 81            [24]  398 	mov	_SP,r6
                                    399 ;	preemptive.c:91: tempPSW ^= (char)(threadId<<3);
      0000C4 8F 06            [24]  400 	mov	ar6,r7
      0000C6 EE               [12]  401 	mov	a,r6
      0000C7 C4               [12]  402 	swap	a
      0000C8 03               [12]  403 	rr	a
      0000C9 54 F8            [12]  404 	anl	a,#0xf8
      0000CB FE               [12]  405 	mov	r6,a
      0000CC 62 3A            [12]  406 	xrl	_tempPSW,a
                                    407 ;	preemptive.c:102: __endasm;
      0000CE C0 82            [24]  408 	PUSH	DPL ;; low-byte of fp parameter
      0000D0 C0 83            [24]  409 	PUSH	DPH ;; high-byte of fp parameter
      0000D2 C0 21            [24]  410 	PUSH	_pushZero ;; ACC
      0000D4 C0 21            [24]  411 	PUSH	_pushZero ;; B
      0000D6 C0 21            [24]  412 	PUSH	_pushZero ;; DPL
      0000D8 C0 21            [24]  413 	PUSH	_pushZero ;; DPH
      0000DA C0 3A            [24]  414 	PUSH	_tempPSW ;; PSW
                                    415 ;	preemptive.c:105: SPArray[threadId] = SP;
      0000DC EF               [12]  416 	mov	a,r7
      0000DD 24 32            [12]  417 	add	a, #_SPArray
      0000DF F8               [12]  418 	mov	r0,a
      0000E0 A6 81            [24]  419 	mov	@r0,_SP
                                    420 ;	preemptive.c:108: SP = tempSP;
      0000E2 85 39 81         [24]  421 	mov	_SP,_tempSP
                                    422 ;	preemptive.c:110: EA = 1;
                                    423 ;	assignBit
      0000E5 D2 AF            [12]  424 	setb	_EA
                                    425 ;	preemptive.c:112: return threadId;
      0000E7 8F 82            [24]  426 	mov	dpl, r7
                                    427 ;	preemptive.c:113: }
      0000E9 22               [24]  428 	ret
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'myTimer0Handler'
                                    431 ;------------------------------------------------------------
                                    432 ;pos                       Allocated to registers r7 
                                    433 ;------------------------------------------------------------
                                    434 ;	preemptive.c:116: void myTimer0Handler(void){
                                    435 ;	-----------------------------------------
                                    436 ;	 function myTimer0Handler
                                    437 ;	-----------------------------------------
      0000EA                        438 _myTimer0Handler:
                                    439 ;	preemptive.c:117: EA = 0; //Critical section
                                    440 ;	assignBit
      0000EA C2 AF            [12]  441 	clr	_EA
                                    442 ;	preemptive.c:119: SAVESTATE;
      0000EC C0 E0            [24]  443 	PUSH ACC 
      0000EE C0 F0            [24]  444 	PUSH B 
      0000F0 C0 82            [24]  445 	PUSH DPL 
      0000F2 C0 83            [24]  446 	PUSH DPH 
      0000F4 C0 D0            [24]  447 	PUSH PSW 
      0000F6 E5 36            [12]  448 	mov	a,_currThr
      0000F8 24 32            [12]  449 	add	a, #_SPArray
      0000FA F8               [12]  450 	mov	r0,a
      0000FB A6 81            [24]  451 	mov	@r0,_SP
                                    452 ;	preemptive.c:121: shift = (char)0x01 << currThr;
      0000FD 85 36 F0         [24]  453 	mov	b,_currThr
      000100 05 F0            [12]  454 	inc	b
      000102 74 01            [12]  455 	mov	a,#0x01
      000104 80 02            [24]  456 	sjmp	00130$
      000106                        457 00129$:
      000106 25 E0            [12]  458 	add	a,acc
      000108                        459 00130$:
      000108 D5 F0 FB         [24]  460 	djnz	b,00129$
      00010B F5 3B            [12]  461 	mov	_shift,a
                                    462 ;	preemptive.c:122: char pos = currThr;
      00010D AF 36            [24]  463 	mov	r7,_currThr
                                    464 ;	preemptive.c:123: do{
      00010F                        465 00106$:
                                    466 ;	preemptive.c:124: if(shift == (char)0x08){
      00010F 74 08            [12]  467 	mov	a,#0x08
      000111 B5 3B 07         [24]  468 	cjne	a,_shift,00102$
                                    469 ;	preemptive.c:125: shift = 0x01;
      000114 75 3B 01         [24]  470 	mov	_shift,#0x01
                                    471 ;	preemptive.c:126: pos = 0;
      000117 7F 00            [12]  472 	mov	r7,#0x00
      000119 80 0F            [24]  473 	sjmp	00103$
      00011B                        474 00102$:
                                    475 ;	preemptive.c:128: shift = (shift << 1) | (shift >>7);
      00011B E5 3B            [12]  476 	mov	a,_shift
      00011D 25 E0            [12]  477 	add	a,acc
      00011F FE               [12]  478 	mov	r6,a
      000120 E5 3B            [12]  479 	mov	a,_shift
      000122 23               [12]  480 	rl	a
      000123 54 01            [12]  481 	anl	a,#0x01
      000125 FD               [12]  482 	mov	r5,a
      000126 4E               [12]  483 	orl	a,r6
      000127 F5 3B            [12]  484 	mov	_shift,a
                                    485 ;	preemptive.c:129: pos++;
      000129 0F               [12]  486 	inc	r7
      00012A                        487 00103$:
                                    488 ;	preemptive.c:131: if(shift & threadBitMask){
      00012A E5 37            [12]  489 	mov	a,_threadBitMask
      00012C 55 3B            [12]  490 	anl	a,_shift
      00012E 60 DF            [24]  491 	jz	00106$
                                    492 ;	preemptive.c:132: currThr = pos;
      000130 8F 36            [24]  493 	mov	_currThr,r7
                                    494 ;	preemptive.c:136: RESTORESTATE;
      000132 E5 36            [12]  495 	mov	a,_currThr
      000134 24 32            [12]  496 	add	a, #_SPArray
      000136 F9               [12]  497 	mov	r1,a
      000137 87 81            [24]  498 	mov	_SP,@r1
      000139 D0 D0            [24]  499 	POP PSW 
      00013B D0 83            [24]  500 	POP DPH 
      00013D D0 82            [24]  501 	POP DPL 
      00013F D0 F0            [24]  502 	POP B 
      000141 D0 E0            [24]  503 	POP ACC 
                                    504 ;	preemptive.c:138: EA = 1;
                                    505 ;	assignBit
      000143 D2 AF            [12]  506 	setb	_EA
                                    507 ;	preemptive.c:141: __endasm;
      000145 32               [24]  508 	reti
                                    509 ;	preemptive.c:142: }
      000146 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'ThreadYield'
                                    513 ;------------------------------------------------------------
                                    514 ;pos                       Allocated to registers r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	preemptive.c:145: void ThreadYield(void) {
                                    517 ;	-----------------------------------------
                                    518 ;	 function ThreadYield
                                    519 ;	-----------------------------------------
      000147                        520 _ThreadYield:
                                    521 ;	preemptive.c:146: SAVESTATE;
      000147 C0 E0            [24]  522 	PUSH ACC 
      000149 C0 F0            [24]  523 	PUSH B 
      00014B C0 82            [24]  524 	PUSH DPL 
      00014D C0 83            [24]  525 	PUSH DPH 
      00014F C0 D0            [24]  526 	PUSH PSW 
      000151 E5 36            [12]  527 	mov	a,_currThr
      000153 24 32            [12]  528 	add	a, #_SPArray
      000155 F8               [12]  529 	mov	r0,a
      000156 A6 81            [24]  530 	mov	@r0,_SP
                                    531 ;	preemptive.c:148: shift = (char)0x01 << currThr;
      000158 85 36 F0         [24]  532 	mov	b,_currThr
      00015B 05 F0            [12]  533 	inc	b
      00015D 74 01            [12]  534 	mov	a,#0x01
      00015F 80 02            [24]  535 	sjmp	00130$
      000161                        536 00129$:
      000161 25 E0            [12]  537 	add	a,acc
      000163                        538 00130$:
      000163 D5 F0 FB         [24]  539 	djnz	b,00129$
      000166 F5 3B            [12]  540 	mov	_shift,a
                                    541 ;	preemptive.c:149: char pos = currThr;
      000168 AF 36            [24]  542 	mov	r7,_currThr
                                    543 ;	preemptive.c:151: do{
      00016A                        544 00106$:
                                    545 ;	preemptive.c:152: if(shift == (char)0x08){
      00016A 74 08            [12]  546 	mov	a,#0x08
      00016C B5 3B 07         [24]  547 	cjne	a,_shift,00102$
                                    548 ;	preemptive.c:153: shift = 0x01;
      00016F 75 3B 01         [24]  549 	mov	_shift,#0x01
                                    550 ;	preemptive.c:154: pos = 0;
      000172 7F 00            [12]  551 	mov	r7,#0x00
      000174 80 0F            [24]  552 	sjmp	00103$
      000176                        553 00102$:
                                    554 ;	preemptive.c:156: shift = (shift << 1) | (shift >>7);
      000176 E5 3B            [12]  555 	mov	a,_shift
      000178 25 E0            [12]  556 	add	a,acc
      00017A FE               [12]  557 	mov	r6,a
      00017B E5 3B            [12]  558 	mov	a,_shift
      00017D 23               [12]  559 	rl	a
      00017E 54 01            [12]  560 	anl	a,#0x01
      000180 FD               [12]  561 	mov	r5,a
      000181 4E               [12]  562 	orl	a,r6
      000182 F5 3B            [12]  563 	mov	_shift,a
                                    564 ;	preemptive.c:157: pos++;
      000184 0F               [12]  565 	inc	r7
      000185                        566 00103$:
                                    567 ;	preemptive.c:159: if(shift & threadBitMask){
      000185 E5 37            [12]  568 	mov	a,_threadBitMask
      000187 55 3B            [12]  569 	anl	a,_shift
      000189 60 DF            [24]  570 	jz	00106$
                                    571 ;	preemptive.c:160: currThr = pos;
      00018B 8F 36            [24]  572 	mov	_currThr,r7
                                    573 ;	preemptive.c:164: RESTORESTATE;
      00018D E5 36            [12]  574 	mov	a,_currThr
      00018F 24 32            [12]  575 	add	a, #_SPArray
      000191 F9               [12]  576 	mov	r1,a
      000192 87 81            [24]  577 	mov	_SP,@r1
      000194 D0 D0            [24]  578 	POP PSW 
      000196 D0 83            [24]  579 	POP DPH 
      000198 D0 82            [24]  580 	POP DPL 
      00019A D0 F0            [24]  581 	POP B 
      00019C D0 E0            [24]  582 	POP ACC 
                                    583 ;	preemptive.c:165: }
      00019E 22               [24]  584 	ret
                                    585 	.area CSEG    (CODE)
                                    586 	.area CONST   (CODE)
                                    587 	.area XINIT   (CODE)
                                    588 	.area CABS    (ABS,CODE)
