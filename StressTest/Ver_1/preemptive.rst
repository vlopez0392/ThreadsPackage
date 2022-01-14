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
                                    110 	.globl _ThreadYield
                                    111 	.globl _myTimer0Handler
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
                           00003C   233 _waitProducer	=	0x003c
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram 
                                    236 ;--------------------------------------------------------
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
      000125                        311 _Bootstrap:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
                                    320 ;	preemptive.c:52: TMOD = 0;  // timer 0 mode 0
      000125 75 89 00         [24]  321 	mov	_TMOD,#0x00
                                    322 ;	preemptive.c:53: IE = 0x82;  // enable timer 0 interrupt; keep consumer polling
      000128 75 A8 82         [24]  323 	mov	_IE,#0x82
                                    324 ;	preemptive.c:55: TR0 = 1; // set bit TR0 to start running timer 0
                                    325 ;	assignBit
      00012B D2 8C            [12]  326 	setb	_TR0
                                    327 ;	preemptive.c:58: threadBitMask = (char)0x00;
      00012D 75 37 00         [24]  328 	mov	_threadBitMask,#0x00
                                    329 ;	preemptive.c:59: waitProducer = (char)0x01;
      000130 75 3C 01         [24]  330 	mov	_waitProducer,#0x01
                                    331 ;	preemptive.c:61: currThr = ThreadCreate(main);
      000133 90 00 E4         [24]  332 	mov	dptr,#_main
      000136 12 01 4E         [24]  333 	lcall	_ThreadCreate
      000139 85 82 36         [24]  334 	mov	_currThr,dpl
                                    335 ;	preemptive.c:62: RESTORESTATE;
      00013C E5 36            [12]  336 	mov	a,_currThr
      00013E 24 32            [12]  337 	add	a,#_SPArray
      000140 F9               [12]  338 	mov	r1,a
      000141 87 81            [24]  339 	mov	_SP,@r1
      000143 D0 D0            [24]  340 	POP PSW 
      000145 D0 83            [24]  341 	POP DPH 
      000147 D0 82            [24]  342 	POP DPL 
      000149 D0 F0            [24]  343 	POP B 
      00014B D0 E0            [24]  344 	POP ACC 
                                    345 ;	preemptive.c:63: }
      00014D 22               [24]  346 	ret
                                    347 ;------------------------------------------------------------
                                    348 ;Allocation info for local variables in function 'ThreadCreate'
                                    349 ;------------------------------------------------------------
                                    350 ;fp                        Allocated to registers 
                                    351 ;threadId                  Allocated to registers r7 
                                    352 ;startingSP                Allocated to registers r6 
                                    353 ;------------------------------------------------------------
                                    354 ;	preemptive.c:66: ThreadID ThreadCreate(FunctionPtr fp){
                                    355 ;	-----------------------------------------
                                    356 ;	 function ThreadCreate
                                    357 ;	-----------------------------------------
      00014E                        358 _ThreadCreate:
                                    359 ;	preemptive.c:67: EA =0; //Critical section
                                    360 ;	assignBit
      00014E C2 AF            [12]  361 	clr	_EA
                                    362 ;	preemptive.c:70: if(threadBitMask == (char)0x0F){
      000150 74 0F            [12]  363 	mov	a,#0x0f
      000152 B5 37 04         [24]  364 	cjne	a,_threadBitMask,00102$
                                    365 ;	preemptive.c:71: return -1;
      000155 75 82 FF         [24]  366 	mov	dpl,#0xff
      000158 22               [24]  367 	ret
      000159                        368 00102$:
                                    369 ;	preemptive.c:75: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
      000159 AF 37            [24]  370 	mov	r7,_threadBitMask
      00015B 0F               [12]  371 	inc	r7
      00015C E5 37            [12]  372 	mov	a,_threadBitMask
      00015E F4               [12]  373 	cpl	a
      00015F FE               [12]  374 	mov	r6,a
      000160 5F               [12]  375 	anl	a,r7
      000161 42 37            [12]  376 	orl	_threadBitMask,a
                                    377 ;	preemptive.c:79: tempBitMask = threadBitMask;
      000163 85 37 38         [24]  378 	mov	_tempBitMask,_threadBitMask
                                    379 ;	preemptive.c:80: while(tempBitMask>>=1){
      000166 7F 00            [12]  380 	mov	r7,#0x00
      000168                        381 00103$:
      000168 E5 38            [12]  382 	mov	a,_tempBitMask
      00016A C3               [12]  383 	clr	c
      00016B 13               [12]  384 	rrc	a
      00016C FE               [12]  385 	mov	r6,a
      00016D 8E 38            [24]  386 	mov	_tempBitMask,r6
      00016F 60 03            [24]  387 	jz	00105$
                                    388 ;	preemptive.c:81: threadId++;
      000171 0F               [12]  389 	inc	r7
      000172 80 F4            [24]  390 	sjmp	00103$
      000174                        391 00105$:
                                    392 ;	preemptive.c:85: char startingSP = (char)((threadId^(0x01<<2))<<4);
      000174 74 04            [12]  393 	mov	a,#0x04
      000176 6F               [12]  394 	xrl	a,r7
      000177 C4               [12]  395 	swap	a
      000178 54 F0            [12]  396 	anl	a,#0xf0
      00017A FE               [12]  397 	mov	r6,a
                                    398 ;	preemptive.c:88: tempSP = SP; 
      00017B 85 81 39         [24]  399 	mov	_tempSP,_SP
                                    400 ;	preemptive.c:89: SP = startingSP;
      00017E 8E 81            [24]  401 	mov	_SP,r6
                                    402 ;	preemptive.c:92: tempPSW = (char)0x00;
      000180 75 3A 00         [24]  403 	mov	_tempPSW,#0x00
                                    404 ;	preemptive.c:93: tempPSW ^= (char)(threadId<<3);
      000183 8F 06            [24]  405 	mov	ar6,r7
      000185 EE               [12]  406 	mov	a,r6
      000186 C4               [12]  407 	swap	a
      000187 03               [12]  408 	rr	a
      000188 54 F8            [12]  409 	anl	a,#0xf8
      00018A FE               [12]  410 	mov	r6,a
      00018B 62 3A            [12]  411 	xrl	_tempPSW,a
                                    412 ;	preemptive.c:104: __endasm;
      00018D C0 82            [24]  413 	PUSH	DPL ;; low-byte of fp parameter
      00018F C0 83            [24]  414 	PUSH	DPH ;; high-byte of fp parameter
      000191 C0 21            [24]  415 	PUSH	_pushZero ;; ACC
      000193 C0 21            [24]  416 	PUSH	_pushZero ;; B
      000195 C0 21            [24]  417 	PUSH	_pushZero ;; DPL
      000197 C0 21            [24]  418 	PUSH	_pushZero ;; DPH
      000199 C0 3A            [24]  419 	PUSH	_tempPSW ;; PSW
                                    420 ;	preemptive.c:107: SPArray[threadId] = SP;
      00019B EF               [12]  421 	mov	a,r7
      00019C 24 32            [12]  422 	add	a,#_SPArray
      00019E F8               [12]  423 	mov	r0,a
      00019F A6 81            [24]  424 	mov	@r0,_SP
                                    425 ;	preemptive.c:110: SP = tempSP;
      0001A1 85 39 81         [24]  426 	mov	_SP,_tempSP
                                    427 ;	preemptive.c:112: EA = 1;
                                    428 ;	assignBit
      0001A4 D2 AF            [12]  429 	setb	_EA
                                    430 ;	preemptive.c:114: return threadId;
      0001A6 8F 82            [24]  431 	mov	dpl,r7
                                    432 ;	preemptive.c:115: }
      0001A8 22               [24]  433 	ret
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'ThreadYield'
                                    436 ;------------------------------------------------------------
                                    437 ;pos                       Allocated to registers r7 
                                    438 ;------------------------------------------------------------
                                    439 ;	preemptive.c:118: void ThreadYield(void) {
                                    440 ;	-----------------------------------------
                                    441 ;	 function ThreadYield
                                    442 ;	-----------------------------------------
      0001A9                        443 _ThreadYield:
                                    444 ;	preemptive.c:119: SAVESTATE;
      0001A9 C0 E0            [24]  445 	PUSH ACC 
      0001AB C0 F0            [24]  446 	PUSH B 
      0001AD C0 82            [24]  447 	PUSH DPL 
      0001AF C0 83            [24]  448 	PUSH DPH 
      0001B1 C0 D0            [24]  449 	PUSH PSW 
      0001B3 E5 36            [12]  450 	mov	a,_currThr
      0001B5 24 32            [12]  451 	add	a,#_SPArray
      0001B7 F8               [12]  452 	mov	r0,a
      0001B8 A6 81            [24]  453 	mov	@r0,_SP
                                    454 ;	preemptive.c:121: shift = (char)0x01 << currThr;
      0001BA 85 36 F0         [24]  455 	mov	b,_currThr
      0001BD 05 F0            [12]  456 	inc	b
      0001BF 74 01            [12]  457 	mov	a,#0x01
      0001C1 80 02            [24]  458 	sjmp	00125$
      0001C3                        459 00123$:
      0001C3 25 E0            [12]  460 	add	a,acc
      0001C5                        461 00125$:
      0001C5 D5 F0 FB         [24]  462 	djnz	b,00123$
      0001C8 F5 3B            [12]  463 	mov	_shift,a
                                    464 ;	preemptive.c:122: char pos = currThr;
      0001CA AF 36            [24]  465 	mov	r7,_currThr
                                    466 ;	preemptive.c:124: do{
      0001CC                        467 00106$:
                                    468 ;	preemptive.c:125: if(shift == (char)0x08){
      0001CC 74 08            [12]  469 	mov	a,#0x08
      0001CE B5 3B 07         [24]  470 	cjne	a,_shift,00102$
                                    471 ;	preemptive.c:126: shift = 0x01;
      0001D1 75 3B 01         [24]  472 	mov	_shift,#0x01
                                    473 ;	preemptive.c:127: pos = 0;
      0001D4 7F 00            [12]  474 	mov	r7,#0x00
      0001D6 80 06            [24]  475 	sjmp	00103$
      0001D8                        476 00102$:
                                    477 ;	preemptive.c:129: shift = (shift << 1) | (shift >>7);
      0001D8 E5 3B            [12]  478 	mov	a,_shift
      0001DA 23               [12]  479 	rl	a
      0001DB F5 3B            [12]  480 	mov	_shift,a
                                    481 ;	preemptive.c:130: pos++;
      0001DD 0F               [12]  482 	inc	r7
      0001DE                        483 00103$:
                                    484 ;	preemptive.c:132: if(shift & threadBitMask){
      0001DE E5 37            [12]  485 	mov	a,_threadBitMask
      0001E0 55 3B            [12]  486 	anl	a,_shift
      0001E2 60 E8            [24]  487 	jz	00106$
                                    488 ;	preemptive.c:133: currThr = pos;
      0001E4 8F 36            [24]  489 	mov	_currThr,r7
                                    490 ;	preemptive.c:137: RESTORESTATE;
      0001E6 E5 36            [12]  491 	mov	a,_currThr
      0001E8 24 32            [12]  492 	add	a,#_SPArray
      0001EA F9               [12]  493 	mov	r1,a
      0001EB 87 81            [24]  494 	mov	_SP,@r1
      0001ED D0 D0            [24]  495 	POP PSW 
      0001EF D0 83            [24]  496 	POP DPH 
      0001F1 D0 82            [24]  497 	POP DPL 
      0001F3 D0 F0            [24]  498 	POP B 
      0001F5 D0 E0            [24]  499 	POP ACC 
                                    500 ;	preemptive.c:138: }
      0001F7 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'myTimer0Handler'
                                    504 ;------------------------------------------------------------
                                    505 ;	preemptive.c:157: void myTimer0Handler(void){
                                    506 ;	-----------------------------------------
                                    507 ;	 function myTimer0Handler
                                    508 ;	-----------------------------------------
      0001F8                        509 _myTimer0Handler:
                                    510 ;	preemptive.c:158: EA = 0; //Critical section
                                    511 ;	assignBit
      0001F8 C2 AF            [12]  512 	clr	_EA
                                    513 ;	preemptive.c:159: SAVESTATE;
      0001FA C0 E0            [24]  514 	PUSH ACC 
      0001FC C0 F0            [24]  515 	PUSH B 
      0001FE C0 82            [24]  516 	PUSH DPL 
      000200 C0 83            [24]  517 	PUSH DPH 
      000202 C0 D0            [24]  518 	PUSH PSW 
      000204 E5 36            [12]  519 	mov	a,_currThr
      000206 24 32            [12]  520 	add	a,#_SPArray
      000208 F8               [12]  521 	mov	r0,a
      000209 A6 81            [24]  522 	mov	@r0,_SP
                                    523 ;	preemptive.c:165: shift = (char)0x01 << currThr;
      00020B 85 36 F0         [24]  524 	mov	b,_currThr
      00020E 05 F0            [12]  525 	inc	b
      000210 74 01            [12]  526 	mov	a,#0x01
      000212 80 02            [24]  527 	sjmp	00139$
      000214                        528 00137$:
      000214 25 E0            [12]  529 	add	a,acc
      000216                        530 00139$:
      000216 D5 F0 FB         [24]  531 	djnz	b,00137$
      000219 F5 3B            [12]  532 	mov	_shift,a
                                    533 ;	preemptive.c:166: do{
      00021B                        534 00112$:
                                    535 ;	preemptive.c:167: if(shift == (char)0x08){
      00021B 74 08            [12]  536 	mov	a,#0x08
      00021D B5 3B 05         [24]  537 	cjne	a,_shift,00102$
                                    538 ;	preemptive.c:168: shift = 0x01;
      000220 75 3B 01         [24]  539 	mov	_shift,#0x01
      000223 80 05            [24]  540 	sjmp	00103$
      000225                        541 00102$:
                                    542 ;	preemptive.c:170: shift = (shift << 1) | (shift >>7);
      000225 E5 3B            [12]  543 	mov	a,_shift
      000227 23               [12]  544 	rl	a
      000228 F5 3B            [12]  545 	mov	_shift,a
      00022A                        546 00103$:
                                    547 ;	preemptive.c:172: if(shift & threadBitMask){
      00022A E5 37            [12]  548 	mov	a,_threadBitMask
      00022C 55 3B            [12]  549 	anl	a,_shift
      00022E 60 EB            [24]  550 	jz	00112$
                                    551 ;	preemptive.c:173: if(currThr != 0){
      000230 E5 36            [12]  552 	mov	a,_currThr
      000232 60 05            [24]  553 	jz	00108$
                                    554 ;	preemptive.c:174: currThr = 0;
      000234 75 36 00         [24]  555 	mov	_currThr,#0x00
      000237 80 10            [24]  556 	sjmp	00114$
      000239                        557 00108$:
                                    558 ;	preemptive.c:176: currThr = waitProducer; //Producer waiting gets to run
      000239 85 3C 36         [24]  559 	mov	_currThr,_waitProducer
                                    560 ;	preemptive.c:177: if(waitProducer == 1){
      00023C 74 01            [12]  561 	mov	a,#0x01
      00023E B5 3C 05         [24]  562 	cjne	a,_waitProducer,00105$
                                    563 ;	preemptive.c:178: waitProducer = 2;
      000241 75 3C 02         [24]  564 	mov	_waitProducer,#0x02
      000244 80 03            [24]  565 	sjmp	00114$
      000246                        566 00105$:
                                    567 ;	preemptive.c:180: waitProducer = 1;
      000246 75 3C 01         [24]  568 	mov	_waitProducer,#0x01
                                    569 ;	preemptive.c:185: }while(1);
      000249                        570 00114$:
                                    571 ;	preemptive.c:186: RESTORESTATE;
      000249 E5 36            [12]  572 	mov	a,_currThr
      00024B 24 32            [12]  573 	add	a,#_SPArray
      00024D F9               [12]  574 	mov	r1,a
      00024E 87 81            [24]  575 	mov	_SP,@r1
      000250 D0 D0            [24]  576 	POP PSW 
      000252 D0 83            [24]  577 	POP DPH 
      000254 D0 82            [24]  578 	POP DPL 
      000256 D0 F0            [24]  579 	POP B 
      000258 D0 E0            [24]  580 	POP ACC 
                                    581 ;	preemptive.c:187: EA = 1;
                                    582 ;	assignBit
      00025A D2 AF            [12]  583 	setb	_EA
                                    584 ;	preemptive.c:191: __endasm;
      00025C 32               [24]  585 	reti
                                    586 ;	preemptive.c:192: }
      00025D 22               [24]  587 	ret
                                    588 	.area CSEG    (CODE)
                                    589 	.area CONST   (CODE)
                                    590 	.area XINIT   (CODE)
                                    591 	.area CABS    (ABS,CODE)
