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
      000000 02 00 59         [24]  290 	ljmp	__sdcc_gsinit_startup
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 ;	testcoop.c:12: __bit isBufferFull = 0;                 //Bit-addresable register 0x20
                                    305 ;	assignBit
      000006 C2 00            [12]  306 	clr	_isBufferFull
                                    307 	.area GSFINAL (CODE)
      00000E 02 00 03         [24]  308 	ljmp	__sdcc_program_startup
                                    309 ;--------------------------------------------------------
                                    310 ; Home
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area HOME    (CODE)
      000003                        314 __sdcc_program_startup:
      000003 02 00 50         [24]  315 	ljmp	_main
                                    316 ;	return from main will return to caller
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'producer'
                                    323 ;------------------------------------------------------------
                                    324 ;	testcoop.c:15: void producer(void){
                                    325 ;	-----------------------------------------
                                    326 ;	 function producer
                                    327 ;	-----------------------------------------
      000011                        328 _producer:
                           000007   329 	ar7 = 0x07
                           000006   330 	ar6 = 0x06
                           000005   331 	ar5 = 0x05
                           000004   332 	ar4 = 0x04
                           000003   333 	ar3 = 0x03
                           000002   334 	ar2 = 0x02
                           000001   335 	ar1 = 0x01
                           000000   336 	ar0 = 0x00
                                    337 ;	testcoop.c:16: item = (char)0x41;
      000011 75 23 41         [24]  338 	mov	_item,#0x41
                                    339 ;	testcoop.c:17: while(1){ 
      000014                        340 00107$:
                                    341 ;	testcoop.c:18: if(item > 0x5A){
      000014 E5 23            [12]  342 	mov	a,_item
      000016 24 A5            [12]  343 	add	a,#0xff - 0x5a
      000018 50 03            [24]  344 	jnc	00103$
                                    345 ;	testcoop.c:19: item = 0x41;
      00001A 75 23 41         [24]  346 	mov	_item,#0x41
                                    347 ;	testcoop.c:21: while(isBufferFull){ //Poll-Buffer
      00001D                        348 00103$:
      00001D 30 00 05         [24]  349 	jnb	_isBufferFull,00105$
                                    350 ;	testcoop.c:22: ThreadYield();
      000020 12 00 D1         [24]  351 	lcall	_ThreadYield
      000023 80 F8            [24]  352 	sjmp	00103$
      000025                        353 00105$:
                                    354 ;	testcoop.c:24: BUFFER = item;       //Write to buffer
      000025 85 23 22         [24]  355 	mov	_BUFFER,_item
                                    356 ;	testcoop.c:25: item++;   
      000028 E5 23            [12]  357 	mov	a,_item
      00002A 04               [12]  358 	inc	a
      00002B F5 23            [12]  359 	mov	_item,a
                                    360 ;	testcoop.c:26: isBufferFull = 1; //Buffer full, consumer must reset flag when it consumes
                                    361 ;	assignBit
      00002D D2 00            [12]  362 	setb	_isBufferFull
                                    363 ;	testcoop.c:28: }
      00002F 80 E3            [24]  364 	sjmp	00107$
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'consumer'
                                    367 ;------------------------------------------------------------
                                    368 ;	testcoop.c:31: void consumer(void){
                                    369 ;	-----------------------------------------
                                    370 ;	 function consumer
                                    371 ;	-----------------------------------------
      000031                        372 _consumer:
                                    373 ;	testcoop.c:33: TMOD = 0x20; 
      000031 75 89 20         [24]  374 	mov	_TMOD,#0x20
                                    375 ;	testcoop.c:34: TH1 = -6; 
      000034 75 8D FA         [24]  376 	mov	_TH1,#0xfa
                                    377 ;	testcoop.c:35: SCON = 0x50; 
      000037 75 98 50         [24]  378 	mov	_SCON,#0x50
                                    379 ;	testcoop.c:36: TR1 = 1;
                                    380 ;	assignBit
      00003A D2 8E            [12]  381 	setb	_TR1
                                    382 ;	testcoop.c:37: TI = 0;
                                    383 ;	assignBit
      00003C C2 99            [12]  384 	clr	_TI
                                    385 ;	testcoop.c:41: while(!isBufferFull){ 
      00003E                        386 00101$:
      00003E 20 00 05         [24]  387 	jb	_isBufferFull,00103$
                                    388 ;	testcoop.c:42: ThreadYield();
      000041 12 00 D1         [24]  389 	lcall	_ThreadYield
      000044 80 F8            [24]  390 	sjmp	00101$
      000046                        391 00103$:
                                    392 ;	testcoop.c:44: SBUF = BUFFER;    //Write to SBUF
      000046 85 22 99         [24]  393 	mov	_SBUF,_BUFFER
                                    394 ;	testcoop.c:45: isBufferFull = 0; //Buffer empty, data consumed 
                                    395 ;	assignBit
      000049 C2 00            [12]  396 	clr	_isBufferFull
                                    397 ;	testcoop.c:48: while(!TI){}
      00004B                        398 00104$:
                                    399 ;	testcoop.c:49: TI = 0; //Clear TI flag
                                    400 ;	assignBit
      00004B 10 99 F0         [24]  401 	jbc	_TI,00101$
                                    402 ;	testcoop.c:51: }
      00004E 80 FB            [24]  403 	sjmp	00104$
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'main'
                                    406 ;------------------------------------------------------------
                                    407 ;	testcoop.c:53: void main(void){ 
                                    408 ;	-----------------------------------------
                                    409 ;	 function main
                                    410 ;	-----------------------------------------
      000050                        411 _main:
                                    412 ;	testcoop.c:54: ThreadCreate(producer);  //Create Thread for producer;
      000050 90 00 11         [24]  413 	mov	dptr,#_producer
      000053 12 00 7E         [24]  414 	lcall	_ThreadCreate
                                    415 ;	testcoop.c:55: consumer();              //Call consumer;
                                    416 ;	testcoop.c:56: }
      000056 02 00 31         [24]  417 	ljmp	_consumer
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    420 ;------------------------------------------------------------
                                    421 ;	testcoop.c:59: void _sdcc_gsinit_startup(void) {
                                    422 ;	-----------------------------------------
                                    423 ;	 function _sdcc_gsinit_startup
                                    424 ;	-----------------------------------------
      000059                        425 __sdcc_gsinit_startup:
                                    426 ;	testcoop.c:62: __endasm;
      000059 02 00 60         [24]  427 	ljmp	_Bootstrap
                                    428 ;	testcoop.c:63: }
      00005C 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    432 ;------------------------------------------------------------
                                    433 ;	testcoop.c:64: void _mcs51_genRAMCLEAR(void) { }
                                    434 ;	-----------------------------------------
                                    435 ;	 function _mcs51_genRAMCLEAR
                                    436 ;	-----------------------------------------
      00005D                        437 __mcs51_genRAMCLEAR:
      00005D 22               [24]  438 	ret
                                    439 ;------------------------------------------------------------
                                    440 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    441 ;------------------------------------------------------------
                                    442 ;	testcoop.c:65: void _mcs51_genXINIT(void) { }
                                    443 ;	-----------------------------------------
                                    444 ;	 function _mcs51_genXINIT
                                    445 ;	-----------------------------------------
      00005E                        446 __mcs51_genXINIT:
      00005E 22               [24]  447 	ret
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    450 ;------------------------------------------------------------
                                    451 ;	testcoop.c:66: void _mcs51_genXRAMCLEAR(void) { }
                                    452 ;	-----------------------------------------
                                    453 ;	 function _mcs51_genXRAMCLEAR
                                    454 ;	-----------------------------------------
      00005F                        455 __mcs51_genXRAMCLEAR:
      00005F 22               [24]  456 	ret
                                    457 	.area CSEG    (CODE)
                                    458 	.area CONST   (CODE)
                                    459 	.area XINIT   (CODE)
                                    460 	.area CABS    (ABS,CODE)
