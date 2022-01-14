                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X ppc)
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
                                    263 ; external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XSEG    (XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; external initialized ram data
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
      000011 75 21 00         [24]  292 	mov	_pushZero,#0x00
                                    293 ;	preemptive.c:18: __data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
      000014 75 3A 00         [24]  294 	mov	_tempPSW,#0x00
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
                                    307 ;	preemptive.c:50: void Bootstrap(void) {   
                                    308 ;	-----------------------------------------
                                    309 ;	 function Bootstrap
                                    310 ;	-----------------------------------------
      0000DC                        311 _Bootstrap:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
                                    320 ;	preemptive.c:52: TMOD = 0;  // timer 0 mode 0
      0000DC 75 89 00         [24]  321 	mov	_TMOD,#0x00
                                    322 ;	preemptive.c:53: IE = 0x82;  // enable timer 0 interrupt; keep consumer polling
      0000DF 75 A8 82         [24]  323 	mov	_IE,#0x82
                                    324 ;	preemptive.c:55: TR0 = 1; // set bit TR0 to start running timer 0
                                    325 ;	assignBit
      0000E2 D2 8C            [12]  326 	setb	_TR0
                                    327 ;	preemptive.c:58: threadBitMask = (char)0x00;
      0000E4 75 37 00         [24]  328 	mov	_threadBitMask,#0x00
                                    329 ;	preemptive.c:61: currThr = ThreadCreate(main);
      0000E7 90 00 A1         [24]  330 	mov	dptr,#_main
      0000EA 12 01 02         [24]  331 	lcall	_ThreadCreate
      0000ED 85 82 36         [24]  332 	mov	_currThr,dpl
                                    333 ;	preemptive.c:62: RESTORESTATE;
      0000F0 E5 36            [12]  334 	mov	a,_currThr
      0000F2 24 32            [12]  335 	add	a,#_SPArray
      0000F4 F9               [12]  336 	mov	r1,a
      0000F5 87 81            [24]  337 	mov	_SP,@r1
      0000F7 D0 D0            [24]  338 	POP PSW 
      0000F9 D0 83            [24]  339 	POP DPH 
      0000FB D0 82            [24]  340 	POP DPL 
      0000FD D0 F0            [24]  341 	POP B 
      0000FF D0 E0            [24]  342 	POP ACC 
                                    343 ;	preemptive.c:63: }
      000101 22               [24]  344 	ret
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'ThreadCreate'
                                    347 ;------------------------------------------------------------
                                    348 ;fp                        Allocated to registers 
                                    349 ;threadId                  Allocated to registers r7 
                                    350 ;startingSP                Allocated to registers r6 
                                    351 ;------------------------------------------------------------
                                    352 ;	preemptive.c:66: ThreadID ThreadCreate(FunctionPtr fp){
                                    353 ;	-----------------------------------------
                                    354 ;	 function ThreadCreate
                                    355 ;	-----------------------------------------
      000102                        356 _ThreadCreate:
                                    357 ;	preemptive.c:67: EA =0; //Critical section
                                    358 ;	assignBit
      000102 C2 AF            [12]  359 	clr	_EA
                                    360 ;	preemptive.c:70: if(threadBitMask == (char)0x0F){
      000104 74 0F            [12]  361 	mov	a,#0x0f
      000106 B5 37 04         [24]  362 	cjne	a,_threadBitMask,00102$
                                    363 ;	preemptive.c:71: return -1;
      000109 75 82 FF         [24]  364 	mov	dpl,#0xff
      00010C 22               [24]  365 	ret
      00010D                        366 00102$:
                                    367 ;	preemptive.c:75: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
      00010D AF 37            [24]  368 	mov	r7,_threadBitMask
      00010F 0F               [12]  369 	inc	r7
      000110 E5 37            [12]  370 	mov	a,_threadBitMask
      000112 F4               [12]  371 	cpl	a
      000113 FE               [12]  372 	mov	r6,a
      000114 5F               [12]  373 	anl	a,r7
      000115 42 37            [12]  374 	orl	_threadBitMask,a
                                    375 ;	preemptive.c:79: tempBitMask = threadBitMask;
      000117 85 37 38         [24]  376 	mov	_tempBitMask,_threadBitMask
                                    377 ;	preemptive.c:80: while(tempBitMask>>=1){
      00011A 7F 00            [12]  378 	mov	r7,#0x00
      00011C                        379 00103$:
      00011C E5 38            [12]  380 	mov	a,_tempBitMask
      00011E C3               [12]  381 	clr	c
      00011F 13               [12]  382 	rrc	a
      000120 FE               [12]  383 	mov	r6,a
      000121 8E 38            [24]  384 	mov	_tempBitMask,r6
      000123 60 03            [24]  385 	jz	00105$
                                    386 ;	preemptive.c:81: threadId++;
      000125 0F               [12]  387 	inc	r7
      000126 80 F4            [24]  388 	sjmp	00103$
      000128                        389 00105$:
                                    390 ;	preemptive.c:85: char startingSP = (char)((threadId^(0x01<<2))<<4);
      000128 74 04            [12]  391 	mov	a,#0x04
      00012A 6F               [12]  392 	xrl	a,r7
      00012B C4               [12]  393 	swap	a
      00012C 54 F0            [12]  394 	anl	a,#0xf0
      00012E FE               [12]  395 	mov	r6,a
                                    396 ;	preemptive.c:88: tempSP = SP; 
      00012F 85 81 39         [24]  397 	mov	_tempSP,_SP
                                    398 ;	preemptive.c:89: SP = startingSP;
      000132 8E 81            [24]  399 	mov	_SP,r6
                                    400 ;	preemptive.c:92: tempPSW ^= (char)(threadId<<3);
      000134 8F 06            [24]  401 	mov	ar6,r7
      000136 EE               [12]  402 	mov	a,r6
      000137 C4               [12]  403 	swap	a
      000138 03               [12]  404 	rr	a
      000139 54 F8            [12]  405 	anl	a,#0xf8
      00013B FE               [12]  406 	mov	r6,a
      00013C 62 3A            [12]  407 	xrl	_tempPSW,a
                                    408 ;	preemptive.c:103: __endasm;
      00013E C0 82            [24]  409 	PUSH	DPL ;; low-byte of fp parameter
      000140 C0 83            [24]  410 	PUSH	DPH ;; high-byte of fp parameter
      000142 C0 21            [24]  411 	PUSH	_pushZero ;; ACC
      000144 C0 21            [24]  412 	PUSH	_pushZero ;; B
      000146 C0 21            [24]  413 	PUSH	_pushZero ;; DPL
      000148 C0 21            [24]  414 	PUSH	_pushZero ;; DPH
      00014A C0 3A            [24]  415 	PUSH	_tempPSW ;; PSW
                                    416 ;	preemptive.c:106: SPArray[threadId] = SP;
      00014C EF               [12]  417 	mov	a,r7
      00014D 24 32            [12]  418 	add	a,#_SPArray
      00014F F8               [12]  419 	mov	r0,a
      000150 A6 81            [24]  420 	mov	@r0,_SP
                                    421 ;	preemptive.c:109: SP = tempSP;
      000152 85 39 81         [24]  422 	mov	_SP,_tempSP
                                    423 ;	preemptive.c:111: EA = 1;
                                    424 ;	assignBit
      000155 D2 AF            [12]  425 	setb	_EA
                                    426 ;	preemptive.c:113: return threadId;
      000157 8F 82            [24]  427 	mov	dpl,r7
                                    428 ;	preemptive.c:114: }
      000159 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'myTimer0Handler'
                                    432 ;------------------------------------------------------------
                                    433 ;pos                       Allocated to registers r7 
                                    434 ;------------------------------------------------------------
                                    435 ;	preemptive.c:117: void myTimer0Handler(void){
                                    436 ;	-----------------------------------------
                                    437 ;	 function myTimer0Handler
                                    438 ;	-----------------------------------------
      00015A                        439 _myTimer0Handler:
                                    440 ;	preemptive.c:118: EA = 0; //Critical section
                                    441 ;	assignBit
      00015A C2 AF            [12]  442 	clr	_EA
                                    443 ;	preemptive.c:120: SAVESTATE;
      00015C C0 E0            [24]  444 	PUSH ACC 
      00015E C0 F0            [24]  445 	PUSH B 
      000160 C0 82            [24]  446 	PUSH DPL 
      000162 C0 83            [24]  447 	PUSH DPH 
      000164 C0 D0            [24]  448 	PUSH PSW 
      000166 E5 36            [12]  449 	mov	a,_currThr
      000168 24 32            [12]  450 	add	a,#_SPArray
      00016A F8               [12]  451 	mov	r0,a
      00016B A6 81            [24]  452 	mov	@r0,_SP
                                    453 ;	preemptive.c:122: shift = (char)0x01 << currThr;
      00016D 85 36 F0         [24]  454 	mov	b,_currThr
      000170 05 F0            [12]  455 	inc	b
      000172 74 01            [12]  456 	mov	a,#0x01
      000174 80 02            [24]  457 	sjmp	00125$
      000176                        458 00123$:
      000176 25 E0            [12]  459 	add	a,acc
      000178                        460 00125$:
      000178 D5 F0 FB         [24]  461 	djnz	b,00123$
      00017B F5 3B            [12]  462 	mov	_shift,a
                                    463 ;	preemptive.c:123: char pos = currThr;
      00017D AF 36            [24]  464 	mov	r7,_currThr
                                    465 ;	preemptive.c:124: do{
      00017F                        466 00106$:
                                    467 ;	preemptive.c:125: if(shift == (char)0x08){
      00017F 74 08            [12]  468 	mov	a,#0x08
      000181 B5 3B 07         [24]  469 	cjne	a,_shift,00102$
                                    470 ;	preemptive.c:126: shift = 0x01;
      000184 75 3B 01         [24]  471 	mov	_shift,#0x01
                                    472 ;	preemptive.c:127: pos = 0;
      000187 7F 00            [12]  473 	mov	r7,#0x00
      000189 80 06            [24]  474 	sjmp	00103$
      00018B                        475 00102$:
                                    476 ;	preemptive.c:129: shift = (shift << 1) | (shift >>7);
      00018B E5 3B            [12]  477 	mov	a,_shift
      00018D 23               [12]  478 	rl	a
      00018E F5 3B            [12]  479 	mov	_shift,a
                                    480 ;	preemptive.c:130: pos++;
      000190 0F               [12]  481 	inc	r7
      000191                        482 00103$:
                                    483 ;	preemptive.c:132: if(shift & threadBitMask){
      000191 E5 37            [12]  484 	mov	a,_threadBitMask
      000193 55 3B            [12]  485 	anl	a,_shift
      000195 60 E8            [24]  486 	jz	00106$
                                    487 ;	preemptive.c:133: currThr = pos;
      000197 8F 36            [24]  488 	mov	_currThr,r7
                                    489 ;	preemptive.c:137: RESTORESTATE;
      000199 E5 36            [12]  490 	mov	a,_currThr
      00019B 24 32            [12]  491 	add	a,#_SPArray
      00019D F9               [12]  492 	mov	r1,a
      00019E 87 81            [24]  493 	mov	_SP,@r1
      0001A0 D0 D0            [24]  494 	POP PSW 
      0001A2 D0 83            [24]  495 	POP DPH 
      0001A4 D0 82            [24]  496 	POP DPL 
      0001A6 D0 F0            [24]  497 	POP B 
      0001A8 D0 E0            [24]  498 	POP ACC 
                                    499 ;	preemptive.c:138: EA = 1;
                                    500 ;	assignBit
      0001AA D2 AF            [12]  501 	setb	_EA
                                    502 ;	preemptive.c:142: __endasm;
      0001AC 32               [24]  503 	reti
                                    504 ;	preemptive.c:143: }
      0001AD 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'ThreadYield'
                                    508 ;------------------------------------------------------------
                                    509 ;pos                       Allocated to registers r7 
                                    510 ;------------------------------------------------------------
                                    511 ;	preemptive.c:146: void ThreadYield(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function ThreadYield
                                    514 ;	-----------------------------------------
      0001AE                        515 _ThreadYield:
                                    516 ;	preemptive.c:147: SAVESTATE;
      0001AE C0 E0            [24]  517 	PUSH ACC 
      0001B0 C0 F0            [24]  518 	PUSH B 
      0001B2 C0 82            [24]  519 	PUSH DPL 
      0001B4 C0 83            [24]  520 	PUSH DPH 
      0001B6 C0 D0            [24]  521 	PUSH PSW 
      0001B8 E5 36            [12]  522 	mov	a,_currThr
      0001BA 24 32            [12]  523 	add	a,#_SPArray
      0001BC F8               [12]  524 	mov	r0,a
      0001BD A6 81            [24]  525 	mov	@r0,_SP
                                    526 ;	preemptive.c:149: shift = (char)0x01 << currThr;
      0001BF 85 36 F0         [24]  527 	mov	b,_currThr
      0001C2 05 F0            [12]  528 	inc	b
      0001C4 74 01            [12]  529 	mov	a,#0x01
      0001C6 80 02            [24]  530 	sjmp	00125$
      0001C8                        531 00123$:
      0001C8 25 E0            [12]  532 	add	a,acc
      0001CA                        533 00125$:
      0001CA D5 F0 FB         [24]  534 	djnz	b,00123$
      0001CD F5 3B            [12]  535 	mov	_shift,a
                                    536 ;	preemptive.c:150: char pos = currThr;
      0001CF AF 36            [24]  537 	mov	r7,_currThr
                                    538 ;	preemptive.c:152: do{
      0001D1                        539 00106$:
                                    540 ;	preemptive.c:153: if(shift == (char)0x08){
      0001D1 74 08            [12]  541 	mov	a,#0x08
      0001D3 B5 3B 07         [24]  542 	cjne	a,_shift,00102$
                                    543 ;	preemptive.c:154: shift = 0x01;
      0001D6 75 3B 01         [24]  544 	mov	_shift,#0x01
                                    545 ;	preemptive.c:155: pos = 0;
      0001D9 7F 00            [12]  546 	mov	r7,#0x00
      0001DB 80 06            [24]  547 	sjmp	00103$
      0001DD                        548 00102$:
                                    549 ;	preemptive.c:157: shift = (shift << 1) | (shift >>7);
      0001DD E5 3B            [12]  550 	mov	a,_shift
      0001DF 23               [12]  551 	rl	a
      0001E0 F5 3B            [12]  552 	mov	_shift,a
                                    553 ;	preemptive.c:158: pos++;
      0001E2 0F               [12]  554 	inc	r7
      0001E3                        555 00103$:
                                    556 ;	preemptive.c:160: if(shift & threadBitMask){
      0001E3 E5 37            [12]  557 	mov	a,_threadBitMask
      0001E5 55 3B            [12]  558 	anl	a,_shift
      0001E7 60 E8            [24]  559 	jz	00106$
                                    560 ;	preemptive.c:161: currThr = pos;
      0001E9 8F 36            [24]  561 	mov	_currThr,r7
                                    562 ;	preemptive.c:165: RESTORESTATE;
      0001EB E5 36            [12]  563 	mov	a,_currThr
      0001ED 24 32            [12]  564 	add	a,#_SPArray
      0001EF F9               [12]  565 	mov	r1,a
      0001F0 87 81            [24]  566 	mov	_SP,@r1
      0001F2 D0 D0            [24]  567 	POP PSW 
      0001F4 D0 83            [24]  568 	POP DPH 
      0001F6 D0 82            [24]  569 	POP DPL 
      0001F8 D0 F0            [24]  570 	POP B 
      0001FA D0 E0            [24]  571 	POP ACC 
                                    572 ;	preemptive.c:166: }
      0001FC 22               [24]  573 	ret
                                    574 	.area CSEG    (CODE)
                                    575 	.area CONST   (CODE)
                                    576 	.area XINIT   (CODE)
                                    577 	.area CABS    (ABS,CODE)
