                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module cooperative
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
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
                           000032   226 _SPArray	=	0x0032
                           000036   227 _currThr	=	0x0036
                           000037   228 _threadBitMask	=	0x0037
                           000038   229 _tempBitMask	=	0x0038
                           000039   230 _tempSP	=	0x0039
                           00003B   231 _shift	=	0x003b
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 	.area	OSEG    (OVR,DATA)
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
      000021                        245 	.org 0x0021
      000021                        246 _pushZero:
      000021                        247 	.ds 1
      00003A                        248 	.org 0x003A
      00003A                        249 _tempPSW:
      00003A                        250 	.ds 1
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; uninitialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; initialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; global & static initialisations
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 ;	cooperative.c:15: __data __at (0x21) static char pushZero = (char)0x00;  //Direct address to push 0 to registers in ThreadCreate                   
      000008 75 21 00         [24]  290 	mov	_pushZero,#0x00
                                    291 ;	cooperative.c:18: __data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
      00000B 75 3A 00         [24]  292 	mov	_tempPSW,#0x00
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; code
                                    300 ;--------------------------------------------------------
                                    301 	.area CSEG    (CODE)
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'Bootstrap'
                                    304 ;------------------------------------------------------------
                                    305 ;	cooperative.c:49: void Bootstrap(void) {
                                    306 ;	-----------------------------------------
                                    307 ;	 function Bootstrap
                                    308 ;	-----------------------------------------
      000060                        309 _Bootstrap:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
                                    318 ;	cooperative.c:50: threadBitMask = (char)0x00;
      000060 75 37 00         [24]  319 	mov	_threadBitMask,#0x00
                                    320 ;	cooperative.c:51: currThr = ThreadCreate(main);
      000063 90 00 50         [24]  321 	mov	dptr,#_main
      000066 12 00 7E         [24]  322 	lcall	_ThreadCreate
      000069 85 82 36         [24]  323 	mov	_currThr,dpl
                                    324 ;	cooperative.c:52: RESTORESTATE;
      00006C E5 36            [12]  325 	mov	a,_currThr
      00006E 24 32            [12]  326 	add	a, #_SPArray
      000070 F9               [12]  327 	mov	r1,a
      000071 87 81            [24]  328 	mov	_SP,@r1
      000073 D0 D0            [24]  329 	POP PSW 
      000075 D0 83            [24]  330 	POP DPH 
      000077 D0 82            [24]  331 	POP DPL 
      000079 D0 F0            [24]  332 	POP B 
      00007B D0 E0            [24]  333 	POP ACC 
                                    334 ;	cooperative.c:53: }
      00007D 22               [24]  335 	ret
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'ThreadCreate'
                                    338 ;------------------------------------------------------------
                                    339 ;fp                        Allocated to registers 
                                    340 ;threadId                  Allocated to registers r7 
                                    341 ;startingSP                Allocated to registers r6 
                                    342 ;------------------------------------------------------------
                                    343 ;	cooperative.c:56: ThreadID ThreadCreate(FunctionPtr fp){
                                    344 ;	-----------------------------------------
                                    345 ;	 function ThreadCreate
                                    346 ;	-----------------------------------------
      00007E                        347 _ThreadCreate:
                                    348 ;	cooperative.c:58: if(threadBitMask == (char)0x0F){
      00007E 74 0F            [12]  349 	mov	a,#0x0f
      000080 B5 37 04         [24]  350 	cjne	a,_threadBitMask,00102$
                                    351 ;	cooperative.c:59: return -1;
      000083 75 82 FF         [24]  352 	mov	dpl, #0xff
      000086 22               [24]  353 	ret
      000087                        354 00102$:
                                    355 ;	cooperative.c:63: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
      000087 AF 37            [24]  356 	mov	r7,_threadBitMask
      000089 0F               [12]  357 	inc	r7
      00008A E5 37            [12]  358 	mov	a,_threadBitMask
      00008C F4               [12]  359 	cpl	a
      00008D 5F               [12]  360 	anl	a,r7
      00008E 42 37            [12]  361 	orl	_threadBitMask,a
                                    362 ;	cooperative.c:67: tempBitMask = threadBitMask;
      000090 85 37 38         [24]  363 	mov	_tempBitMask,_threadBitMask
                                    364 ;	cooperative.c:69: while(tempBitMask>>=1){
      000093 7F 00            [12]  365 	mov	r7,#0x00
      000095                        366 00103$:
      000095 E5 38            [12]  367 	mov	a,_tempBitMask
      000097 C3               [12]  368 	clr	c
      000098 13               [12]  369 	rrc	a
      000099 FE               [12]  370 	mov	r6,a
      00009A 8E 38            [24]  371 	mov	_tempBitMask,r6
      00009C 60 03            [24]  372 	jz	00105$
                                    373 ;	cooperative.c:70: threadId++;
      00009E 0F               [12]  374 	inc	r7
      00009F 80 F4            [24]  375 	sjmp	00103$
      0000A1                        376 00105$:
                                    377 ;	cooperative.c:74: char startingSP = (char)(((threadId^(0x01<<2))<<4));
      0000A1 74 04            [12]  378 	mov	a,#0x04
      0000A3 6F               [12]  379 	xrl	a,r7
      0000A4 C4               [12]  380 	swap	a
      0000A5 54 F0            [12]  381 	anl	a,#0xf0
      0000A7 FE               [12]  382 	mov	r6,a
                                    383 ;	cooperative.c:77: tempSP = SP; 
      0000A8 85 81 39         [24]  384 	mov	_tempSP,_SP
                                    385 ;	cooperative.c:78: SP = startingSP;
      0000AB 8E 81            [24]  386 	mov	_SP,r6
                                    387 ;	cooperative.c:81: tempPSW ^= (threadId<<3);
      0000AD 8F 06            [24]  388 	mov	ar6,r7
      0000AF EE               [12]  389 	mov	a,r6
      0000B0 C4               [12]  390 	swap	a
      0000B1 03               [12]  391 	rr	a
      0000B2 54 F8            [12]  392 	anl	a,#0xf8
      0000B4 FE               [12]  393 	mov	r6,a
      0000B5 62 3A            [12]  394 	xrl	_tempPSW,a
                                    395 ;	cooperative.c:92: __endasm;
      0000B7 C0 82            [24]  396 	PUSH	DPL ;; low-byte of fp parameter
      0000B9 C0 83            [24]  397 	PUSH	DPH ;; high-byte of fp parameter
      0000BB C0 21            [24]  398 	PUSH	_pushZero ;; ACC
      0000BD C0 21            [24]  399 	PUSH	_pushZero ;; B
      0000BF C0 21            [24]  400 	PUSH	_pushZero ;; DPL
      0000C1 C0 21            [24]  401 	PUSH	_pushZero ;; DPH
      0000C3 C0 3A            [24]  402 	PUSH	_tempPSW ;; PSW
                                    403 ;	cooperative.c:95: SPArray[threadId] = SP;
      0000C5 EF               [12]  404 	mov	a,r7
      0000C6 24 32            [12]  405 	add	a, #_SPArray
      0000C8 F8               [12]  406 	mov	r0,a
      0000C9 A6 81            [24]  407 	mov	@r0,_SP
                                    408 ;	cooperative.c:98: SP = tempSP;
      0000CB 85 39 81         [24]  409 	mov	_SP,_tempSP
                                    410 ;	cooperative.c:101: return threadId;
      0000CE 8F 82            [24]  411 	mov	dpl, r7
                                    412 ;	cooperative.c:102: }
      0000D0 22               [24]  413 	ret
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'ThreadYield'
                                    416 ;------------------------------------------------------------
                                    417 ;pos                       Allocated to registers r7 
                                    418 ;------------------------------------------------------------
                                    419 ;	cooperative.c:105: void ThreadYield(void) {
                                    420 ;	-----------------------------------------
                                    421 ;	 function ThreadYield
                                    422 ;	-----------------------------------------
      0000D1                        423 _ThreadYield:
                                    424 ;	cooperative.c:106: SAVESTATE;
      0000D1 C0 E0            [24]  425 	PUSH	ACC 
      0000D3 C0 F0            [24]  426 	PUSH B 
      0000D5 C0 82            [24]  427 	PUSH DPL 
      0000D7 C0 83            [24]  428 	PUSH DPH 
      0000D9 C0 D0            [24]  429 	PUSH PSW 
      0000DB E5 36            [12]  430 	mov	a,_currThr
      0000DD 24 32            [12]  431 	add	a, #_SPArray
      0000DF F8               [12]  432 	mov	r0,a
      0000E0 A6 81            [24]  433 	mov	@r0,_SP
                                    434 ;	cooperative.c:108: shift = (char)0x01 << currThr;
      0000E2 85 36 F0         [24]  435 	mov	b,_currThr
      0000E5 05 F0            [12]  436 	inc	b
      0000E7 74 01            [12]  437 	mov	a,#0x01
      0000E9 80 02            [24]  438 	sjmp	00130$
      0000EB                        439 00129$:
      0000EB 25 E0            [12]  440 	add	a,acc
      0000ED                        441 00130$:
      0000ED D5 F0 FB         [24]  442 	djnz	b,00129$
      0000F0 F5 3B            [12]  443 	mov	_shift,a
                                    444 ;	cooperative.c:109: char pos = currThr;
      0000F2 AF 36            [24]  445 	mov	r7,_currThr
                                    446 ;	cooperative.c:111: do{
      0000F4                        447 00106$:
                                    448 ;	cooperative.c:112: if(shift == (char)0x08){
      0000F4 74 08            [12]  449 	mov	a,#0x08
      0000F6 B5 3B 07         [24]  450 	cjne	a,_shift,00102$
                                    451 ;	cooperative.c:113: shift = 0x01;
      0000F9 75 3B 01         [24]  452 	mov	_shift,#0x01
                                    453 ;	cooperative.c:114: pos = 0;
      0000FC 7F 00            [12]  454 	mov	r7,#0x00
      0000FE 80 0F            [24]  455 	sjmp	00103$
      000100                        456 00102$:
                                    457 ;	cooperative.c:116: shift = (shift << 1) | (shift >>7);
      000100 E5 3B            [12]  458 	mov	a,_shift
      000102 25 E0            [12]  459 	add	a,acc
      000104 FE               [12]  460 	mov	r6,a
      000105 E5 3B            [12]  461 	mov	a,_shift
      000107 23               [12]  462 	rl	a
      000108 54 01            [12]  463 	anl	a,#0x01
      00010A FD               [12]  464 	mov	r5,a
      00010B 4E               [12]  465 	orl	a,r6
      00010C F5 3B            [12]  466 	mov	_shift,a
                                    467 ;	cooperative.c:117: pos++;
      00010E 0F               [12]  468 	inc	r7
      00010F                        469 00103$:
                                    470 ;	cooperative.c:119: if(shift & threadBitMask){
      00010F E5 37            [12]  471 	mov	a,_threadBitMask
      000111 55 3B            [12]  472 	anl	a,_shift
      000113 60 DF            [24]  473 	jz	00106$
                                    474 ;	cooperative.c:120: currThr = pos;
      000115 8F 36            [24]  475 	mov	_currThr,r7
                                    476 ;	cooperative.c:124: RESTORESTATE;
      000117 E5 36            [12]  477 	mov	a,_currThr
      000119 24 32            [12]  478 	add	a, #_SPArray
      00011B F9               [12]  479 	mov	r1,a
      00011C 87 81            [24]  480 	mov	_SP,@r1
      00011E D0 D0            [24]  481 	POP PSW 
      000120 D0 83            [24]  482 	POP DPH 
      000122 D0 82            [24]  483 	POP DPL 
      000124 D0 F0            [24]  484 	POP B 
      000126 D0 E0            [24]  485 	POP ACC 
                                    486 ;	cooperative.c:125: }
      000128 22               [24]  487 	ret
                                    488 	.area CSEG    (CODE)
                                    489 	.area CONST   (CODE)
                                    490 	.area XINIT   (CODE)
                                    491 	.area CABS    (ABS,CODE)
