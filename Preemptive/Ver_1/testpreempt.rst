                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module testpreempt
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0_ISR
                                     12 	.globl __mcs51_genXRAMCLEAR
                                     13 	.globl __mcs51_genXINIT
                                     14 	.globl __mcs51_genRAMCLEAR
                                     15 	.globl __sdcc_gsinit_startup
                                     16 	.globl _main
                                     17 	.globl _consumer
                                     18 	.globl _producer
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
                           000022   232 _BUFFER	=	0x0022
                           000023   233 _item	=	0x0023
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; Stack segment in internal ram
                                    239 ;--------------------------------------------------------
                                    240 	.area SSEG
      00003B                        241 __start__stack:
      00003B                        242 	.ds	1
                                    243 
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
      000000                        257 _isBufferFull::
      000000                        258 	.ds 1
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; uninitialized external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; initialized external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; interrupt vector
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
      000000                        289 __interrupt_vect:
      000000 02 00 62         [24]  290 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  291 	reti
      000004                        292 	.ds	7
      00000B 02 00 69         [24]  293 	ljmp	_timer0_ISR
                                    294 ;--------------------------------------------------------
                                    295 ; global & static initialisations
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.globl __sdcc_gsinit_startup
                                    302 	.globl __sdcc_program_startup
                                    303 	.globl __start__stack
                                    304 	.globl __mcs51_genXINIT
                                    305 	.globl __mcs51_genXRAMCLEAR
                                    306 	.globl __mcs51_genRAMCLEAR
                                    307 ;	testpreempt.c:12: __bit isBufferFull = 0;                  //Bit-addresable register 0x20
                                    308 ;	assignBit
      000011 C2 00            [12]  309 	clr	_isBufferFull
                                    310 	.area GSFINAL (CODE)
      000019 02 00 0E         [24]  311 	ljmp	__sdcc_program_startup
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
      00000E                        317 __sdcc_program_startup:
      00000E 02 00 59         [24]  318 	ljmp	_main
                                    319 ;	return from main will return to caller
                                    320 ;--------------------------------------------------------
                                    321 ; code
                                    322 ;--------------------------------------------------------
                                    323 	.area CSEG    (CODE)
                                    324 ;------------------------------------------------------------
                                    325 ;Allocation info for local variables in function 'producer'
                                    326 ;------------------------------------------------------------
                                    327 ;	testpreempt.c:16: void producer(void){
                                    328 ;	-----------------------------------------
                                    329 ;	 function producer
                                    330 ;	-----------------------------------------
      00001C                        331 _producer:
                           000007   332 	ar7 = 0x07
                           000006   333 	ar6 = 0x06
                           000005   334 	ar5 = 0x05
                           000004   335 	ar4 = 0x04
                           000003   336 	ar3 = 0x03
                           000002   337 	ar2 = 0x02
                           000001   338 	ar1 = 0x01
                           000000   339 	ar0 = 0x00
                                    340 ;	testpreempt.c:17: item = (char)0x41;
      00001C 75 23 41         [24]  341 	mov	_item,#0x41
                                    342 ;	testpreempt.c:18: while(1){
      00001F                        343 00107$:
                                    344 ;	testpreempt.c:19: if(item > (char)0x5A){
      00001F E5 23            [12]  345 	mov	a,_item
      000021 24 A5            [12]  346 	add	a,#0xff - 0x5a
      000023 50 03            [24]  347 	jnc	00103$
                                    348 ;	testpreempt.c:20: item = (char)0x41;
      000025 75 23 41         [24]  349 	mov	_item,#0x41
                                    350 ;	testpreempt.c:22: while(isBufferFull){}
      000028                        351 00103$:
      000028 20 00 FD         [24]  352 	jb	_isBufferFull,00103$
                                    353 ;	testpreempt.c:24: EA = 0; //Critical section
                                    354 ;	assignBit
      00002B C2 AF            [12]  355 	clr	_EA
                                    356 ;	testpreempt.c:25: BUFFER = item;    //Write to buffer
      00002D 85 23 22         [24]  357 	mov	_BUFFER,_item
                                    358 ;	testpreempt.c:26: isBufferFull = 1; //Buffer full, consumer must reset flag when it consumes 
                                    359 ;	assignBit
      000030 D2 00            [12]  360 	setb	_isBufferFull
                                    361 ;	testpreempt.c:27: item++;  
      000032 E5 23            [12]  362 	mov	a,_item
      000034 04               [12]  363 	inc	a
      000035 F5 23            [12]  364 	mov	_item,a
                                    365 ;	testpreempt.c:28: EA = 1;
                                    366 ;	assignBit
      000037 D2 AF            [12]  367 	setb	_EA
                                    368 ;	testpreempt.c:30: }
      000039 80 E4            [24]  369 	sjmp	00107$
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'consumer'
                                    372 ;------------------------------------------------------------
                                    373 ;	testpreempt.c:33: void consumer(void){
                                    374 ;	-----------------------------------------
                                    375 ;	 function consumer
                                    376 ;	-----------------------------------------
      00003B                        377 _consumer:
                                    378 ;	testpreempt.c:35: TMOD |= 0x20; 
      00003B 43 89 20         [24]  379 	orl	_TMOD,#0x20
                                    380 ;	testpreempt.c:36: TH1 = -6; 
      00003E 75 8D FA         [24]  381 	mov	_TH1,#0xfa
                                    382 ;	testpreempt.c:37: SCON = 0x50; 
      000041 75 98 50         [24]  383 	mov	_SCON,#0x50
                                    384 ;	testpreempt.c:38: TR1 = 1;
                                    385 ;	assignBit
      000044 D2 8E            [12]  386 	setb	_TR1
                                    387 ;	testpreempt.c:39: TI = 0;
                                    388 ;	assignBit
      000046 C2 99            [12]  389 	clr	_TI
                                    390 ;	testpreempt.c:43: while(!isBufferFull){}
      000048                        391 00101$:
      000048 30 00 FD         [24]  392 	jnb	_isBufferFull,00101$
                                    393 ;	testpreempt.c:45: EA = 0; //Critical section
                                    394 ;	assignBit
      00004B C2 AF            [12]  395 	clr	_EA
                                    396 ;	testpreempt.c:46: SBUF = BUFFER;    //Write to SBUF
      00004D 85 22 99         [24]  397 	mov	_SBUF,_BUFFER
                                    398 ;	testpreempt.c:47: isBufferFull = 0; //Buffer empty, data consumed 
                                    399 ;	assignBit
      000050 C2 00            [12]  400 	clr	_isBufferFull
                                    401 ;	testpreempt.c:48: EA = 1;
                                    402 ;	assignBit
      000052 D2 AF            [12]  403 	setb	_EA
                                    404 ;	testpreempt.c:51: while(!TI){}
      000054                        405 00104$:
                                    406 ;	testpreempt.c:52: TI = 0; //Clear TI flag
                                    407 ;	assignBit
      000054 10 99 F1         [24]  408 	jbc	_TI,00101$
                                    409 ;	testpreempt.c:54: }
      000057 80 FB            [24]  410 	sjmp	00104$
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'main'
                                    413 ;------------------------------------------------------------
                                    414 ;	testpreempt.c:56: void main(void){ 
                                    415 ;	-----------------------------------------
                                    416 ;	 function main
                                    417 ;	-----------------------------------------
      000059                        418 _main:
                                    419 ;	testpreempt.c:57: ThreadCreate(producer);  //Create Thread for producer;
      000059 90 00 1C         [24]  420 	mov	dptr,#_producer
      00005C 12 00 93         [24]  421 	lcall	_ThreadCreate
                                    422 ;	testpreempt.c:58: consumer();              //Call consumer;
                                    423 ;	testpreempt.c:59: }
      00005F 02 00 3B         [24]  424 	ljmp	_consumer
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    427 ;------------------------------------------------------------
                                    428 ;	testpreempt.c:62: void _sdcc_gsinit_startup(void) {
                                    429 ;	-----------------------------------------
                                    430 ;	 function _sdcc_gsinit_startup
                                    431 ;	-----------------------------------------
      000062                        432 __sdcc_gsinit_startup:
                                    433 ;	testpreempt.c:65: __endasm;
      000062 02 00 6D         [24]  434 	ljmp	_Bootstrap
                                    435 ;	testpreempt.c:66: }
      000065 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    439 ;------------------------------------------------------------
                                    440 ;	testpreempt.c:67: void _mcs51_genRAMCLEAR(void) { }
                                    441 ;	-----------------------------------------
                                    442 ;	 function _mcs51_genRAMCLEAR
                                    443 ;	-----------------------------------------
      000066                        444 __mcs51_genRAMCLEAR:
      000066 22               [24]  445 	ret
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    448 ;------------------------------------------------------------
                                    449 ;	testpreempt.c:68: void _mcs51_genXINIT(void) { }
                                    450 ;	-----------------------------------------
                                    451 ;	 function _mcs51_genXINIT
                                    452 ;	-----------------------------------------
      000067                        453 __mcs51_genXINIT:
      000067 22               [24]  454 	ret
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    457 ;------------------------------------------------------------
                                    458 ;	testpreempt.c:69: void _mcs51_genXRAMCLEAR(void) { }
                                    459 ;	-----------------------------------------
                                    460 ;	 function _mcs51_genXRAMCLEAR
                                    461 ;	-----------------------------------------
      000068                        462 __mcs51_genXRAMCLEAR:
      000068 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'timer0_ISR'
                                    466 ;------------------------------------------------------------
                                    467 ;	testpreempt.c:72: void timer0_ISR(void) __interrupt(1) {
                                    468 ;	-----------------------------------------
                                    469 ;	 function timer0_ISR
                                    470 ;	-----------------------------------------
      000069                        471 _timer0_ISR:
                                    472 ;	testpreempt.c:75: __endasm;
      000069 02 00 EA         [24]  473 	ljmp	_myTimer0Handler
                                    474 ;	testpreempt.c:76: }
      00006C 32               [24]  475 	reti
                                    476 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    477 ;	eliminated unneeded push/pop not_psw
                                    478 ;	eliminated unneeded push/pop dpl
                                    479 ;	eliminated unneeded push/pop dph
                                    480 ;	eliminated unneeded push/pop b
                                    481 ;	eliminated unneeded push/pop acc
                                    482 	.area CSEG    (CODE)
                                    483 	.area CONST   (CODE)
                                    484 	.area XINIT   (CODE)
                                    485 	.area CABS    (ABS,CODE)
