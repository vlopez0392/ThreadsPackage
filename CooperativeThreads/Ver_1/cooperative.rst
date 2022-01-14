                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X ppc)
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
      000008                        231 _ThreadYield_sloc0_1_0:
      000008                        232 	.ds 2
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram 
                                    235 ;--------------------------------------------------------
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
                                    261 ; external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; external initialized ram data
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
                                    289 ;	cooperative.c:9: __data __at (0x21) static char pushZero = (char)0x00;  //Direct address to push 0 to registers in ThreadCreate                   
      00000E 75 21 00         [24]  290 	mov	_pushZero,#0x00
                                    291 ;	cooperative.c:12: __data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
      000011 75 3A 00         [24]  292 	mov	_tempPSW,#0x00
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
                                    305 ;	cooperative.c:42: void Bootstrap(void) {
                                    306 ;	-----------------------------------------
                                    307 ;	 function Bootstrap
                                    308 ;	-----------------------------------------
      00006A                        309 _Bootstrap:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
                                    318 ;	cooperative.c:43: threadBitMask = (char)0x00;
      00006A 75 37 00         [24]  319 	mov	_threadBitMask,#0x00
                                    320 ;	cooperative.c:44: currThr = ThreadCreate(main);
      00006D 90 00 5A         [24]  321 	mov	dptr,#_main
      000070 12 00 88         [24]  322 	lcall	_ThreadCreate
      000073 85 82 36         [24]  323 	mov	_currThr,dpl
                                    324 ;	cooperative.c:45: RESTORESTATE;
      000076 E5 36            [12]  325 	mov	a,_currThr
      000078 24 32            [12]  326 	add	a,#_SPArray
      00007A F9               [12]  327 	mov	r1,a
      00007B 87 81            [24]  328 	mov	_SP,@r1
      00007D D0 D0            [24]  329 	POP PSW 
      00007F D0 83            [24]  330 	POP DPH 
      000081 D0 82            [24]  331 	POP DPL 
      000083 D0 F0            [24]  332 	POP B 
      000085 D0 E0            [24]  333 	POP ACC 
                                    334 ;	cooperative.c:46: }
      000087 22               [24]  335 	ret
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'ThreadCreate'
                                    338 ;------------------------------------------------------------
                                    339 ;fp                        Allocated to registers 
                                    340 ;threadId                  Allocated to registers r7 
                                    341 ;startingSP                Allocated to registers r6 
                                    342 ;------------------------------------------------------------
                                    343 ;	cooperative.c:49: ThreadID ThreadCreate(FunctionPtr fp){
                                    344 ;	-----------------------------------------
                                    345 ;	 function ThreadCreate
                                    346 ;	-----------------------------------------
      000088                        347 _ThreadCreate:
                                    348 ;	cooperative.c:51: if(threadBitMask == (char)0x0F){
      000088 74 0F            [12]  349 	mov	a,#0x0f
      00008A B5 37 04         [24]  350 	cjne	a,_threadBitMask,00102$
                                    351 ;	cooperative.c:52: return -1;
      00008D 75 82 FF         [24]  352 	mov	dpl,#0xff
      000090 22               [24]  353 	ret
      000091                        354 00102$:
                                    355 ;	cooperative.c:56: threadBitMask |= ((threadBitMask+1) & (~threadBitMask));
      000091 AF 37            [24]  356 	mov	r7,_threadBitMask
      000093 0F               [12]  357 	inc	r7
      000094 E5 37            [12]  358 	mov	a,_threadBitMask
      000096 F4               [12]  359 	cpl	a
      000097 FE               [12]  360 	mov	r6,a
      000098 5F               [12]  361 	anl	a,r7
      000099 42 37            [12]  362 	orl	_threadBitMask,a
                                    363 ;	cooperative.c:60: tempBitMask = threadBitMask;
      00009B 85 37 38         [24]  364 	mov	_tempBitMask,_threadBitMask
                                    365 ;	cooperative.c:61: while(tempBitMask>>=1){
      00009E 7F 00            [12]  366 	mov	r7,#0x00
      0000A0                        367 00103$:
      0000A0 E5 38            [12]  368 	mov	a,_tempBitMask
      0000A2 C3               [12]  369 	clr	c
      0000A3 13               [12]  370 	rrc	a
      0000A4 FE               [12]  371 	mov	r6,a
      0000A5 8E 38            [24]  372 	mov	_tempBitMask,r6
      0000A7 60 03            [24]  373 	jz	00105$
                                    374 ;	cooperative.c:62: threadId++;
      0000A9 0F               [12]  375 	inc	r7
      0000AA 80 F4            [24]  376 	sjmp	00103$
      0000AC                        377 00105$:
                                    378 ;	cooperative.c:66: char startingSP = (char)((threadId^(0x01<<2))<<4);
      0000AC 74 04            [12]  379 	mov	a,#0x04
      0000AE 6F               [12]  380 	xrl	a,r7
      0000AF C4               [12]  381 	swap	a
      0000B0 54 F0            [12]  382 	anl	a,#0xf0
      0000B2 FE               [12]  383 	mov	r6,a
                                    384 ;	cooperative.c:69: tempSP = SP; 
      0000B3 85 81 39         [24]  385 	mov	_tempSP,_SP
                                    386 ;	cooperative.c:70: SP = startingSP;
      0000B6 8E 81            [24]  387 	mov	_SP,r6
                                    388 ;	cooperative.c:73: tempPSW ^= (char)(threadId<<3);
      0000B8 8F 06            [24]  389 	mov	ar6,r7
      0000BA EE               [12]  390 	mov	a,r6
      0000BB C4               [12]  391 	swap	a
      0000BC 03               [12]  392 	rr	a
      0000BD 54 F8            [12]  393 	anl	a,#0xf8
      0000BF FE               [12]  394 	mov	r6,a
      0000C0 62 3A            [12]  395 	xrl	_tempPSW,a
                                    396 ;	cooperative.c:84: __endasm;
      0000C2 C0 82            [24]  397 	PUSH	DPL ;; low-byte of fp parameter
      0000C4 C0 83            [24]  398 	PUSH	DPH ;; high-byte of fp parameter
      0000C6 C0 21            [24]  399 	PUSH	_pushZero ;; ACC
      0000C8 C0 21            [24]  400 	PUSH	_pushZero ;; B
      0000CA C0 21            [24]  401 	PUSH	_pushZero ;; DPL
      0000CC C0 21            [24]  402 	PUSH	_pushZero ;; DPH
      0000CE C0 3A            [24]  403 	PUSH	_tempPSW ;; PSW
                                    404 ;	cooperative.c:87: SPArray[threadId] = SP;
      0000D0 EF               [12]  405 	mov	a,r7
      0000D1 24 32            [12]  406 	add	a,#_SPArray
      0000D3 F8               [12]  407 	mov	r0,a
      0000D4 A6 81            [24]  408 	mov	@r0,_SP
                                    409 ;	cooperative.c:90: SP = tempSP;
      0000D6 85 39 81         [24]  410 	mov	_SP,_tempSP
                                    411 ;	cooperative.c:93: return threadId;
      0000D9 8F 82            [24]  412 	mov	dpl,r7
                                    413 ;	cooperative.c:94: }
      0000DB 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'ThreadYield'
                                    417 ;------------------------------------------------------------
                                    418 ;i                         Allocated to registers r7 
                                    419 ;sloc0                     Allocated with name '_ThreadYield_sloc0_1_0'
                                    420 ;------------------------------------------------------------
                                    421 ;	cooperative.c:97: void ThreadYield(void) {
                                    422 ;	-----------------------------------------
                                    423 ;	 function ThreadYield
                                    424 ;	-----------------------------------------
      0000DC                        425 _ThreadYield:
                                    426 ;	cooperative.c:98: SAVESTATE;
      0000DC C0 E0            [24]  427 	PUSH ACC 
      0000DE C0 F0            [24]  428 	PUSH B 
      0000E0 C0 82            [24]  429 	PUSH DPL 
      0000E2 C0 83            [24]  430 	PUSH DPH 
      0000E4 C0 D0            [24]  431 	PUSH PSW 
      0000E6 E5 36            [12]  432 	mov	a,_currThr
      0000E8 24 32            [12]  433 	add	a,#_SPArray
      0000EA F8               [12]  434 	mov	r0,a
      0000EB A6 81            [24]  435 	mov	@r0,_SP
                                    436 ;	cooperative.c:100: char i = currThr;
      0000ED AF 36            [24]  437 	mov	r7,_currThr
                                    438 ;	cooperative.c:101: do{
      0000EF                        439 00103$:
                                    440 ;	cooperative.c:102: if((0x01<<((i+1)%(MAXTHREADS))) & threadBitMask){
      0000EF 8F 05            [24]  441 	mov	ar5,r7
      0000F1 7E 00            [12]  442 	mov	r6,#0x00
      0000F3 8D 82            [24]  443 	mov	dpl,r5
      0000F5 8E 83            [24]  444 	mov	dph,r6
      0000F7 A3               [24]  445 	inc	dptr
      0000F8 75 0A 04         [24]  446 	mov	__modsint_PARM_2,#0x04
                                    447 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0000FB 8E 0B            [24]  448 	mov	(__modsint_PARM_2 + 1),r6
      0000FD C0 06            [24]  449 	push	ar6
      0000FF C0 05            [24]  450 	push	ar5
      000101 12 01 BF         [24]  451 	lcall	__modsint
      000104 AB 82            [24]  452 	mov	r3,dpl
      000106 D0 05            [24]  453 	pop	ar5
      000108 D0 06            [24]  454 	pop	ar6
      00010A 8B F0            [24]  455 	mov	b,r3
      00010C 05 F0            [12]  456 	inc	b
      00010E 75 08 01         [24]  457 	mov	_ThreadYield_sloc0_1_0,#0x01
      000111 75 09 00         [24]  458 	mov	(_ThreadYield_sloc0_1_0 + 1),#0x00
      000114 80 0B            [24]  459 	sjmp	00117$
      000116                        460 00116$:
      000116 E5 08            [12]  461 	mov	a,_ThreadYield_sloc0_1_0
      000118 25 08            [12]  462 	add	a,_ThreadYield_sloc0_1_0
      00011A F5 08            [12]  463 	mov	_ThreadYield_sloc0_1_0,a
      00011C E5 09            [12]  464 	mov	a,(_ThreadYield_sloc0_1_0 + 1)
      00011E 33               [12]  465 	rlc	a
      00011F F5 09            [12]  466 	mov	(_ThreadYield_sloc0_1_0 + 1),a
      000121                        467 00117$:
      000121 D5 F0 F2         [24]  468 	djnz	b,00116$
      000124 AA 37            [24]  469 	mov	r2,_threadBitMask
      000126 7C 00            [12]  470 	mov	r4,#0x00
      000128 E5 08            [12]  471 	mov	a,_ThreadYield_sloc0_1_0
      00012A 52 02            [12]  472 	anl	ar2,a
      00012C E5 09            [12]  473 	mov	a,(_ThreadYield_sloc0_1_0 + 1)
      00012E 52 04            [12]  474 	anl	ar4,a
      000130 EA               [12]  475 	mov	a,r2
      000131 4C               [12]  476 	orl	a,r4
      000132 60 16            [24]  477 	jz	00102$
                                    478 ;	cooperative.c:103: currThr = (i+1)%MAXTHREADS;
      000134 8D 82            [24]  479 	mov	dpl,r5
      000136 8E 83            [24]  480 	mov	dph,r6
      000138 A3               [24]  481 	inc	dptr
      000139 75 0A 04         [24]  482 	mov	__modsint_PARM_2,#0x04
      00013C 75 0B 00         [24]  483 	mov	(__modsint_PARM_2 + 1),#0x00
      00013F 12 01 BF         [24]  484 	lcall	__modsint
      000142 AB 82            [24]  485 	mov	r3,dpl
      000144 AC 83            [24]  486 	mov	r4,dph
      000146 8B 36            [24]  487 	mov	_currThr,r3
                                    488 ;	cooperative.c:104: break;
      000148 80 16            [24]  489 	sjmp	00105$
      00014A                        490 00102$:
                                    491 ;	cooperative.c:106: i = (i+1)%MAXTHREADS;
      00014A 8D 82            [24]  492 	mov	dpl,r5
      00014C 8E 83            [24]  493 	mov	dph,r6
      00014E A3               [24]  494 	inc	dptr
      00014F 75 0A 04         [24]  495 	mov	__modsint_PARM_2,#0x04
      000152 75 0B 00         [24]  496 	mov	(__modsint_PARM_2 + 1),#0x00
      000155 12 01 BF         [24]  497 	lcall	__modsint
      000158 AD 82            [24]  498 	mov	r5,dpl
      00015A AE 83            [24]  499 	mov	r6,dph
      00015C 8D 07            [24]  500 	mov	ar7,r5
                                    501 ;	cooperative.c:107: }while(1);
      00015E 80 8F            [24]  502 	sjmp	00103$
      000160                        503 00105$:
                                    504 ;	cooperative.c:108: RESTORESTATE;
      000160 E5 36            [12]  505 	mov	a,_currThr
      000162 24 32            [12]  506 	add	a,#_SPArray
      000164 F9               [12]  507 	mov	r1,a
      000165 87 81            [24]  508 	mov	_SP,@r1
      000167 D0 D0            [24]  509 	POP PSW 
      000169 D0 83            [24]  510 	POP DPH 
      00016B D0 82            [24]  511 	POP DPL 
      00016D D0 F0            [24]  512 	POP B 
      00016F D0 E0            [24]  513 	POP ACC 
                                    514 ;	cooperative.c:109: }
      000171 22               [24]  515 	ret
                                    516 	.area CSEG    (CODE)
                                    517 	.area CONST   (CODE)
                                    518 	.area XINIT   (CODE)
                                    519 	.area CABS    (ABS,CODE)
