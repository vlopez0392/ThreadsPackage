                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module testcoop
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl __mcs51_genXRAMCLEAR
                                     12 	.globl __mcs51_genXINIT
                                     13 	.globl __mcs51_genRAMCLEAR
                                     14 	.globl __sdcc_gsinit_startup
                                     15 	.globl _main
                                     16 	.globl _consumer
                                     17 	.globl _producer
                                     18 	.globl _ThreadYield
                                     19 	.globl _ThreadCreate
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _isBufferFull
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 ;--------------------------------------------------------
                                    236 ; Stack segment in internal ram
                                    237 ;--------------------------------------------------------
                                    238 	.area SSEG
      00003B                        239 __start__stack:
      00003B                        240 	.ds	1
                                    241 
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
      000022                        250 	.org 0x0022
      000022                        251 _BUFFER:
      000022                        252 	.ds 1
                           000023   253 _producer_item_10000_6	=	0x0023
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
      000000                        259 _isBufferFull::
      000000                        260 	.ds 1
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; uninitialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; initialized external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; interrupt vector
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
      000000                        291 __interrupt_vect:
      000000 02 00 63         [24]  292 	ljmp	__sdcc_gsinit_startup
                                    293 ;--------------------------------------------------------
                                    294 ; global & static initialisations
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.area GSFINAL (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.globl __sdcc_gsinit_startup
                                    301 	.globl __sdcc_program_startup
                                    302 	.globl __start__stack
                                    303 	.globl __mcs51_genXINIT
                                    304 	.globl __mcs51_genXRAMCLEAR
                                    305 	.globl __mcs51_genRAMCLEAR
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function 'producer'
                                    308 ;------------------------------------------------------------
                                    309 ;	testcoop.c:10: __data __at (0x23) static char item = (char)0x41; 
      000006 75 23 41         [24]  310 	mov	_producer_item_10000_6,#0x41
                                    311 ;	testcoop.c:5: __data __at (0x22) static char BUFFER = (char)0;  //1 byte BUFFER variable 
      000009 75 22 00         [24]  312 	mov	_BUFFER,#0x00
                                    313 ;	testcoop.c:6: __bit isBufferFull = (char)0; //Bit-addresable register 0x20
                                    314 ;	assignBit
      00000C C2 00            [12]  315 	clr	_isBufferFull
                                    316 	.area GSFINAL (CODE)
      000014 02 00 03         [24]  317 	ljmp	__sdcc_program_startup
                                    318 ;--------------------------------------------------------
                                    319 ; Home
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
                                    322 	.area HOME    (CODE)
      000003                        323 __sdcc_program_startup:
      000003 02 00 5A         [24]  324 	ljmp	_main
                                    325 ;	return from main will return to caller
                                    326 ;--------------------------------------------------------
                                    327 ; code
                                    328 ;--------------------------------------------------------
                                    329 	.area CSEG    (CODE)
                                    330 ;------------------------------------------------------------
                                    331 ;Allocation info for local variables in function 'producer'
                                    332 ;------------------------------------------------------------
                                    333 ;	testcoop.c:9: void producer(void){
                                    334 ;	-----------------------------------------
                                    335 ;	 function producer
                                    336 ;	-----------------------------------------
      000017                        337 _producer:
                           000007   338 	ar7 = 0x07
                           000006   339 	ar6 = 0x06
                           000005   340 	ar5 = 0x05
                           000004   341 	ar4 = 0x04
                           000003   342 	ar3 = 0x03
                           000002   343 	ar2 = 0x02
                           000001   344 	ar1 = 0x01
                           000000   345 	ar0 = 0x00
                                    346 ;	testcoop.c:11: while(1){
      000017                        347 00107$:
                                    348 ;	testcoop.c:12: if(item > (char)0x5A){
      000017 E5 23            [12]  349 	mov	a,_producer_item_10000_6
      000019 24 A5            [12]  350 	add	a,#0xff - 0x5a
      00001B 50 03            [24]  351 	jnc	00103$
                                    352 ;	testcoop.c:13: item = (char)0x41;
      00001D 75 23 41         [24]  353 	mov	_producer_item_10000_6,#0x41
                                    354 ;	testcoop.c:15: while(isBufferFull){ //Poll-Buffer
      000020                        355 00103$:
      000020 30 00 05         [24]  356 	jnb	_isBufferFull,00105$
                                    357 ;	testcoop.c:16: ThreadYield();
      000023 12 00 DB         [24]  358 	lcall	_ThreadYield
      000026 80 F8            [24]  359 	sjmp	00103$
      000028                        360 00105$:
                                    361 ;	testcoop.c:18: BUFFER = item;       //Write to buffer
      000028 85 23 22         [24]  362 	mov	_BUFFER,_producer_item_10000_6
                                    363 ;	testcoop.c:19: item++;   
      00002B E5 23            [12]  364 	mov	a,_producer_item_10000_6
      00002D 04               [12]  365 	inc	a
      00002E F5 23            [12]  366 	mov	_producer_item_10000_6,a
                                    367 ;	testcoop.c:20: isBufferFull = 1; //Buffer full, consumer must reset flag when it consumes
                                    368 ;	assignBit
      000030 D2 00            [12]  369 	setb	_isBufferFull
                                    370 ;	testcoop.c:22: }
      000032 80 E3            [24]  371 	sjmp	00107$
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'consumer'
                                    374 ;------------------------------------------------------------
                                    375 ;	testcoop.c:25: void consumer(void){
                                    376 ;	-----------------------------------------
                                    377 ;	 function consumer
                                    378 ;	-----------------------------------------
      000034                        379 _consumer:
                                    380 ;	testcoop.c:27: TMOD = 0x20; 
      000034 75 89 20         [24]  381 	mov	_TMOD,#0x20
                                    382 ;	testcoop.c:28: TH1 = -6; 
      000037 75 8D FA         [24]  383 	mov	_TH1,#0xfa
                                    384 ;	testcoop.c:29: SCON = 0x50; 
      00003A 75 98 50         [24]  385 	mov	_SCON,#0x50
                                    386 ;	testcoop.c:30: TR1 = 1;
                                    387 ;	assignBit
      00003D D2 8E            [12]  388 	setb	_TR1
                                    389 ;	testcoop.c:31: TI = 0;
                                    390 ;	assignBit
      00003F C2 99            [12]  391 	clr	_TI
                                    392 ;	testcoop.c:35: while(!isBufferFull){ 
      000041                        393 00101$:
      000041 20 00 05         [24]  394 	jb	_isBufferFull,00103$
                                    395 ;	testcoop.c:36: ThreadYield();
      000044 12 00 DB         [24]  396 	lcall	_ThreadYield
      000047 80 F8            [24]  397 	sjmp	00101$
      000049                        398 00103$:
                                    399 ;	testcoop.c:38: SBUF = BUFFER;    //Write to SBUF
      000049 85 22 99         [24]  400 	mov	_SBUF,_BUFFER
                                    401 ;	testcoop.c:39: isBufferFull = 0; //Buffer empty, data consumed  
                                    402 ;	assignBit
      00004C C2 00            [12]  403 	clr	_isBufferFull
                                    404 ;	testcoop.c:42: while(!TI){
      00004E                        405 00104$:
      00004E 20 99 05         [24]  406 	jb	_TI,00106$
                                    407 ;	testcoop.c:43: ThreadYield();
      000051 12 00 DB         [24]  408 	lcall	_ThreadYield
      000054 80 F8            [24]  409 	sjmp	00104$
      000056                        410 00106$:
                                    411 ;	testcoop.c:45: TI = 0; //Clear TI flag
                                    412 ;	assignBit
      000056 C2 99            [12]  413 	clr	_TI
                                    414 ;	testcoop.c:47: }
      000058 80 E7            [24]  415 	sjmp	00101$
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'main'
                                    418 ;------------------------------------------------------------
                                    419 ;	testcoop.c:49: void main(void){ 
                                    420 ;	-----------------------------------------
                                    421 ;	 function main
                                    422 ;	-----------------------------------------
      00005A                        423 _main:
                                    424 ;	testcoop.c:50: ThreadCreate(producer);  //Create Thread for producer;
      00005A 90 00 17         [24]  425 	mov	dptr,#_producer
      00005D 12 00 88         [24]  426 	lcall	_ThreadCreate
                                    427 ;	testcoop.c:51: consumer();              //Call consumer;
                                    428 ;	testcoop.c:52: }
      000060 02 00 34         [24]  429 	ljmp	_consumer
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    432 ;------------------------------------------------------------
                                    433 ;	testcoop.c:55: void _sdcc_gsinit_startup(void) {
                                    434 ;	-----------------------------------------
                                    435 ;	 function _sdcc_gsinit_startup
                                    436 ;	-----------------------------------------
      000063                        437 __sdcc_gsinit_startup:
                                    438 ;	testcoop.c:58: __endasm;
      000063 02 00 6A         [24]  439 	ljmp	_Bootstrap
                                    440 ;	testcoop.c:59: }
      000066 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    444 ;------------------------------------------------------------
                                    445 ;	testcoop.c:60: void _mcs51_genRAMCLEAR(void) { }
                                    446 ;	-----------------------------------------
                                    447 ;	 function _mcs51_genRAMCLEAR
                                    448 ;	-----------------------------------------
      000067                        449 __mcs51_genRAMCLEAR:
      000067 22               [24]  450 	ret
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    453 ;------------------------------------------------------------
                                    454 ;	testcoop.c:61: void _mcs51_genXINIT(void) { }
                                    455 ;	-----------------------------------------
                                    456 ;	 function _mcs51_genXINIT
                                    457 ;	-----------------------------------------
      000068                        458 __mcs51_genXINIT:
      000068 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    462 ;------------------------------------------------------------
                                    463 ;	testcoop.c:62: void _mcs51_genXRAMCLEAR(void) { }
                                    464 ;	-----------------------------------------
                                    465 ;	 function _mcs51_genXRAMCLEAR
                                    466 ;	-----------------------------------------
      000069                        467 __mcs51_genXRAMCLEAR:
      000069 22               [24]  468 	ret
                                    469 	.area CSEG    (CODE)
                                    470 	.area CONST   (CODE)
                                    471 	.area XINIT   (CODE)
                                    472 	.area CABS    (ABS,CODE)
