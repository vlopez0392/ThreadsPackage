                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module test3threads
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
                                     18 	.globl _producer2
                                     19 	.globl _producer
                                     20 	.globl _ThreadCreate
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
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
                           000021   232 _BUFFERSIZE	=	0x0021
                           000022   233 _BUFFER	=	0x0022
                           000025   234 _item	=	0x0025
                           000026   235 _empty	=	0x0026
                           000027   236 _full	=	0x0027
                           000028   237 _mutex	=	0x0028
                           000029   238 _n	=	0x0029
                           00002A   239 _rear	=	0x002a
                           00002B   240 _front	=	0x002b
                           00002C   241 _number	=	0x002c
                                    242 ;--------------------------------------------------------
                                    243 ; overlayable items in internal ram 
                                    244 ;--------------------------------------------------------
                                    245 ;--------------------------------------------------------
                                    246 ; Stack segment in internal ram 
                                    247 ;--------------------------------------------------------
                                    248 	.area	SSEG
      00003B                        249 __start__stack:
      00003B                        250 	.ds	1
                                    251 
                                    252 ;--------------------------------------------------------
                                    253 ; indirectly addressable internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area ISEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area IABS    (ABS,DATA)
                                    260 	.area IABS    (ABS,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; bit data
                                    263 ;--------------------------------------------------------
                                    264 	.area BSEG    (BIT)
                                    265 ;--------------------------------------------------------
                                    266 ; paged external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area PSEG    (PAG,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XSEG    (XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; absolute external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XABS    (ABS,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external initialized ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XISEG   (XDATA)
                                    281 	.area HOME    (CODE)
                                    282 	.area GSINIT0 (CODE)
                                    283 	.area GSINIT1 (CODE)
                                    284 	.area GSINIT2 (CODE)
                                    285 	.area GSINIT3 (CODE)
                                    286 	.area GSINIT4 (CODE)
                                    287 	.area GSINIT5 (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area CSEG    (CODE)
                                    291 ;--------------------------------------------------------
                                    292 ; interrupt vector 
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
      000000                        295 __interrupt_vect:
      000000 02 01 1A         [24]  296 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  297 	reti
      000004                        298 	.ds	7
      00000B 02 01 21         [24]  299 	ljmp	_timer0_ISR
                                    300 ;--------------------------------------------------------
                                    301 ; global & static initialisations
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.area GSFINAL (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.globl __sdcc_gsinit_startup
                                    308 	.globl __sdcc_program_startup
                                    309 	.globl __start__stack
                                    310 	.globl __mcs51_genXINIT
                                    311 	.globl __mcs51_genXRAMCLEAR
                                    312 	.globl __mcs51_genRAMCLEAR
                                    313 	.area GSFINAL (CODE)
      000017 02 00 0E         [24]  314 	ljmp	__sdcc_program_startup
                                    315 ;--------------------------------------------------------
                                    316 ; Home
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area HOME    (CODE)
      00000E                        320 __sdcc_program_startup:
      00000E 02 00 E4         [24]  321 	ljmp	_main
                                    322 ;	return from main will return to caller
                                    323 ;--------------------------------------------------------
                                    324 ; code
                                    325 ;--------------------------------------------------------
                                    326 	.area CSEG    (CODE)
                                    327 ;------------------------------------------------------------
                                    328 ;Allocation info for local variables in function 'producer'
                                    329 ;------------------------------------------------------------
                                    330 ;	test3threads.c:62: void producer(void){
                                    331 ;	-----------------------------------------
                                    332 ;	 function producer
                                    333 ;	-----------------------------------------
      00001A                        334 _producer:
                           000007   335 	ar7 = 0x07
                           000006   336 	ar6 = 0x06
                           000005   337 	ar5 = 0x05
                           000004   338 	ar4 = 0x04
                           000003   339 	ar3 = 0x03
                           000002   340 	ar2 = 0x02
                           000001   341 	ar1 = 0x01
                           000000   342 	ar0 = 0x00
                                    343 ;	test3threads.c:63: item = (char)0x41;
      00001A 75 25 41         [24]  344 	mov	_item,#0x41
                                    345 ;	test3threads.c:64: while(1){
      00001D                        346 00106$:
                                    347 ;	test3threads.c:65: if(item > (char)0x5A){
      00001D E5 25            [12]  348 	mov	a,_item
      00001F 24 A5            [12]  349 	add	a,#0xff - 0x5a
      000021 50 03            [24]  350 	jnc	00102$
                                    351 ;	test3threads.c:66: item = (char)0x41;
      000023 75 25 41         [24]  352 	mov	_item,#0x41
      000026                        353 00102$:
                                    354 ;	test3threads.c:68: SemaphoreWait(empty);
      000026                        355 		0$:
      000026 85 26 E0         [24]  356 	MOV ACC, _empty 
      000029 60 FB            [24]  357 	JZ 0$ 
      00002B 20 E7 F8         [24]  358 	JB 0xE7, 0$ 
      00002E 15 26            [12]  359 	DEC _empty 
                                    360 ;	test3threads.c:69: SemaphoreWait(mutex);
      000030                        361 		1$:
      000030 85 28 E0         [24]  362 	MOV ACC, _mutex 
      000033 60 FB            [24]  363 	JZ 1$ 
      000035 20 E7 F8         [24]  364 	JB 0xE7, 1$ 
      000038 15 28            [12]  365 	DEC _mutex 
                                    366 ;	test3threads.c:71: EA = 0;
                                    367 ;	assignBit
      00003A C2 AF            [12]  368 	clr	_EA
                                    369 ;	test3threads.c:72: BUFFER[rear] = item; //Write to buffer
      00003C E5 2A            [12]  370 	mov	a,_rear
      00003E 24 22            [12]  371 	add	a,#_BUFFER
      000040 F8               [12]  372 	mov	r0,a
      000041 A6 25            [24]  373 	mov	@r0,_item
                                    374 ;	test3threads.c:73: rear++;
      000043 E5 2A            [12]  375 	mov	a,_rear
      000045 04               [12]  376 	inc	a
      000046 F5 2A            [12]  377 	mov	_rear,a
                                    378 ;	test3threads.c:74: if(rear == BUFFERSIZE){
      000048 E5 21            [12]  379 	mov	a,_BUFFERSIZE
      00004A B5 2A 03         [24]  380 	cjne	a,_rear,00104$
                                    381 ;	test3threads.c:75: rear = (char)0x00;
      00004D 75 2A 00         [24]  382 	mov	_rear,#0x00
      000050                        383 00104$:
                                    384 ;	test3threads.c:77: item++;  
      000050 E5 25            [12]  385 	mov	a,_item
      000052 04               [12]  386 	inc	a
      000053 F5 25            [12]  387 	mov	_item,a
                                    388 ;	test3threads.c:78: EA = 1;
                                    389 ;	assignBit
      000055 D2 AF            [12]  390 	setb	_EA
                                    391 ;	test3threads.c:79: SemaphoreSignal(mutex);
      000057 05 28            [12]  392 	INC _mutex 
                                    393 ;	test3threads.c:80: SemaphoreSignal(full);
      000059 05 27            [12]  394 	INC _full 
                                    395 ;	test3threads.c:82: }
      00005B 80 C0            [24]  396 	sjmp	00106$
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'producer2'
                                    399 ;------------------------------------------------------------
                                    400 ;	test3threads.c:85: void producer2(void){
                                    401 ;	-----------------------------------------
                                    402 ;	 function producer2
                                    403 ;	-----------------------------------------
      00005D                        404 _producer2:
                                    405 ;	test3threads.c:86: number = (char)0x30;
      00005D 75 2C 30         [24]  406 	mov	_number,#0x30
                                    407 ;	test3threads.c:87: while(1){
      000060                        408 00106$:
                                    409 ;	test3threads.c:88: if(number > (char)0x39){
      000060 E5 2C            [12]  410 	mov	a,_number
      000062 24 C6            [12]  411 	add	a,#0xff - 0x39
      000064 50 03            [24]  412 	jnc	00102$
                                    413 ;	test3threads.c:89: number = (char)0x30;
      000066 75 2C 30         [24]  414 	mov	_number,#0x30
      000069                        415 00102$:
                                    416 ;	test3threads.c:91: SemaphoreWait(empty);
      000069                        417 		2$:
      000069 85 26 E0         [24]  418 	MOV ACC, _empty 
      00006C 60 FB            [24]  419 	JZ 2$ 
      00006E 20 E7 F8         [24]  420 	JB 0xE7, 2$ 
      000071 15 26            [12]  421 	DEC _empty 
                                    422 ;	test3threads.c:92: SemaphoreWait(mutex);
      000073                        423 		3$:
      000073 85 28 E0         [24]  424 	MOV ACC, _mutex 
      000076 60 FB            [24]  425 	JZ 3$ 
      000078 20 E7 F8         [24]  426 	JB 0xE7, 3$ 
      00007B 15 28            [12]  427 	DEC _mutex 
                                    428 ;	test3threads.c:94: EA = 0;
                                    429 ;	assignBit
      00007D C2 AF            [12]  430 	clr	_EA
                                    431 ;	test3threads.c:95: BUFFER[rear] = number; //Write to buffer
      00007F E5 2A            [12]  432 	mov	a,_rear
      000081 24 22            [12]  433 	add	a,#_BUFFER
      000083 F8               [12]  434 	mov	r0,a
      000084 A6 2C            [24]  435 	mov	@r0,_number
                                    436 ;	test3threads.c:96: rear++;
      000086 E5 2A            [12]  437 	mov	a,_rear
      000088 04               [12]  438 	inc	a
      000089 F5 2A            [12]  439 	mov	_rear,a
                                    440 ;	test3threads.c:97: if(rear == BUFFERSIZE){
      00008B E5 21            [12]  441 	mov	a,_BUFFERSIZE
      00008D B5 2A 03         [24]  442 	cjne	a,_rear,00104$
                                    443 ;	test3threads.c:98: rear = (char)0x00;
      000090 75 2A 00         [24]  444 	mov	_rear,#0x00
      000093                        445 00104$:
                                    446 ;	test3threads.c:100: number++;  
      000093 E5 2C            [12]  447 	mov	a,_number
      000095 04               [12]  448 	inc	a
      000096 F5 2C            [12]  449 	mov	_number,a
                                    450 ;	test3threads.c:101: EA = 1;
                                    451 ;	assignBit
      000098 D2 AF            [12]  452 	setb	_EA
                                    453 ;	test3threads.c:102: SemaphoreSignal(mutex);
      00009A 05 28            [12]  454 	INC _mutex 
                                    455 ;	test3threads.c:103: SemaphoreSignal(full);
      00009C 05 27            [12]  456 	INC _full 
                                    457 ;	test3threads.c:105: }
      00009E 80 C0            [24]  458 	sjmp	00106$
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'consumer'
                                    461 ;------------------------------------------------------------
                                    462 ;	test3threads.c:108: void consumer(void){
                                    463 ;	-----------------------------------------
                                    464 ;	 function consumer
                                    465 ;	-----------------------------------------
      0000A0                        466 _consumer:
                                    467 ;	test3threads.c:110: TMOD |= 0x20; 
      0000A0 43 89 20         [24]  468 	orl	_TMOD,#0x20
                                    469 ;	test3threads.c:111: TH1 = -6; 
      0000A3 75 8D FA         [24]  470 	mov	_TH1,#0xfa
                                    471 ;	test3threads.c:112: SCON = 0x50; 
      0000A6 75 98 50         [24]  472 	mov	_SCON,#0x50
                                    473 ;	test3threads.c:113: TR1 = 1;
                                    474 ;	assignBit
      0000A9 D2 8E            [12]  475 	setb	_TR1
                                    476 ;	test3threads.c:114: TI = 0;
                                    477 ;	assignBit
      0000AB C2 99            [12]  478 	clr	_TI
                                    479 ;	test3threads.c:116: while(1){  
      0000AD                        480 00107$:
                                    481 ;	test3threads.c:117: SemaphoreWait(full);
      0000AD                        482 		4$:
      0000AD 85 27 E0         [24]  483 	MOV ACC, _full 
      0000B0 60 FB            [24]  484 	JZ 4$ 
      0000B2 20 E7 F8         [24]  485 	JB 0xE7, 4$ 
      0000B5 15 27            [12]  486 	DEC _full 
                                    487 ;	test3threads.c:118: SemaphoreWait(mutex);
      0000B7                        488 		5$:
      0000B7 85 28 E0         [24]  489 	MOV ACC, _mutex 
      0000BA 60 FB            [24]  490 	JZ 5$ 
      0000BC 20 E7 F8         [24]  491 	JB 0xE7, 5$ 
      0000BF 15 28            [12]  492 	DEC _mutex 
                                    493 ;	test3threads.c:119: EA = 0;
                                    494 ;	assignBit
      0000C1 C2 AF            [12]  495 	clr	_EA
                                    496 ;	test3threads.c:121: SBUF = BUFFER[front]; //Write to SBUF 3-deep char buffer front value
      0000C3 E5 2B            [12]  497 	mov	a,_front
      0000C5 24 22            [12]  498 	add	a,#_BUFFER
      0000C7 F9               [12]  499 	mov	r1,a
      0000C8 87 99            [24]  500 	mov	_SBUF,@r1
                                    501 ;	test3threads.c:122: front++;
      0000CA E5 2B            [12]  502 	mov	a,_front
      0000CC 04               [12]  503 	inc	a
      0000CD F5 2B            [12]  504 	mov	_front,a
                                    505 ;	test3threads.c:123: if(front == BUFFERSIZE){
      0000CF E5 21            [12]  506 	mov	a,_BUFFERSIZE
      0000D1 B5 2B 03         [24]  507 	cjne	a,_front,00103$
                                    508 ;	test3threads.c:124: front = (char)0x00;
      0000D4 75 2B 00         [24]  509 	mov	_front,#0x00
                                    510 ;	test3threads.c:126: while(!TI){} //Poll for TI flag
      0000D7                        511 00103$:
                                    512 ;	test3threads.c:127: TI = 0; //Clear TI flag
                                    513 ;	assignBit
      0000D7 10 99 02         [24]  514 	jbc	_TI,00129$
      0000DA 80 FB            [24]  515 	sjmp	00103$
      0000DC                        516 00129$:
                                    517 ;	test3threads.c:128: EA = 1;
                                    518 ;	assignBit
      0000DC D2 AF            [12]  519 	setb	_EA
                                    520 ;	test3threads.c:129: SemaphoreSignal(mutex);
      0000DE 05 28            [12]  521 	INC _mutex 
                                    522 ;	test3threads.c:130: SemaphoreSignal(empty);
      0000E0 05 26            [12]  523 	INC _empty 
                                    524 ;	test3threads.c:132: }
      0000E2 80 C9            [24]  525 	sjmp	00107$
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'main'
                                    528 ;------------------------------------------------------------
                                    529 ;	test3threads.c:134: void main(void){ 
                                    530 ;	-----------------------------------------
                                    531 ;	 function main
                                    532 ;	-----------------------------------------
      0000E4                        533 _main:
                                    534 ;	test3threads.c:136: BUFFERSIZE = (char)0x03;
      0000E4 75 21 03         [24]  535 	mov	_BUFFERSIZE,#0x03
                                    536 ;	test3threads.c:137: n = (char)0x00; SemaphoreCreate(full,n);
      0000E7 75 29 00         [24]  537 	mov	_n,#0x00
      0000EA C2 AF            [12]  538 	CLR 0xAF 
      0000EC 85 29 27         [24]  539 	MOV _full, _n 
      0000EF D2 AF            [12]  540 	SETB 0xAF 
                                    541 ;	test3threads.c:138: n = (char)0x03; SemaphoreCreate(empty,n);
      0000F1 75 29 03         [24]  542 	mov	_n,#0x03
      0000F4 C2 AF            [12]  543 	CLR 0xAF 
      0000F6 85 29 26         [24]  544 	MOV _empty, _n 
      0000F9 D2 AF            [12]  545 	SETB 0xAF 
                                    546 ;	test3threads.c:139: n = (char)0x01; SemaphoreCreate(mutex, n);
      0000FB 75 29 01         [24]  547 	mov	_n,#0x01
      0000FE C2 AF            [12]  548 	CLR 0xAF 
      000100 85 29 28         [24]  549 	MOV _mutex, _n 
      000103 D2 AF            [12]  550 	SETB 0xAF 
                                    551 ;	test3threads.c:140: front = (char)0x00;
      000105 75 2B 00         [24]  552 	mov	_front,#0x00
                                    553 ;	test3threads.c:141: rear  = (char)0x00;
      000108 75 2A 00         [24]  554 	mov	_rear,#0x00
                                    555 ;	test3threads.c:142: ThreadCreate(producer);   //Create Thread for producer1 A-Z        
      00010B 90 00 1A         [24]  556 	mov	dptr,#_producer
      00010E 12 01 4E         [24]  557 	lcall	_ThreadCreate
                                    558 ;	test3threads.c:143: ThreadCreate(producer2);  //Create Thread for producer2 0-9 
      000111 90 00 5D         [24]  559 	mov	dptr,#_producer2
      000114 12 01 4E         [24]  560 	lcall	_ThreadCreate
                                    561 ;	test3threads.c:144: consumer();               //Call consumer;
                                    562 ;	test3threads.c:145: }
      000117 02 00 A0         [24]  563 	ljmp	_consumer
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    566 ;------------------------------------------------------------
                                    567 ;	test3threads.c:148: void _sdcc_gsinit_startup(void) {
                                    568 ;	-----------------------------------------
                                    569 ;	 function _sdcc_gsinit_startup
                                    570 ;	-----------------------------------------
      00011A                        571 __sdcc_gsinit_startup:
                                    572 ;	test3threads.c:151: __endasm;
      00011A 02 01 25         [24]  573 	ljmp	_Bootstrap
                                    574 ;	test3threads.c:152: }
      00011D 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    578 ;------------------------------------------------------------
                                    579 ;	test3threads.c:153: void _mcs51_genRAMCLEAR(void) { }
                                    580 ;	-----------------------------------------
                                    581 ;	 function _mcs51_genRAMCLEAR
                                    582 ;	-----------------------------------------
      00011E                        583 __mcs51_genRAMCLEAR:
      00011E 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    587 ;------------------------------------------------------------
                                    588 ;	test3threads.c:154: void _mcs51_genXINIT(void) { }
                                    589 ;	-----------------------------------------
                                    590 ;	 function _mcs51_genXINIT
                                    591 ;	-----------------------------------------
      00011F                        592 __mcs51_genXINIT:
      00011F 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    596 ;------------------------------------------------------------
                                    597 ;	test3threads.c:155: void _mcs51_genXRAMCLEAR(void) { }
                                    598 ;	-----------------------------------------
                                    599 ;	 function _mcs51_genXRAMCLEAR
                                    600 ;	-----------------------------------------
      000120                        601 __mcs51_genXRAMCLEAR:
      000120 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'timer0_ISR'
                                    605 ;------------------------------------------------------------
                                    606 ;	test3threads.c:158: void timer0_ISR(void) __interrupt(1) {
                                    607 ;	-----------------------------------------
                                    608 ;	 function timer0_ISR
                                    609 ;	-----------------------------------------
      000121                        610 _timer0_ISR:
                                    611 ;	test3threads.c:161: __endasm;
      000121 02 01 F8         [24]  612 	ljmp	_myTimer0Handler
                                    613 ;	test3threads.c:162: }
      000124 32               [24]  614 	reti
                                    615 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    616 ;	eliminated unneeded push/pop not_psw
                                    617 ;	eliminated unneeded push/pop dpl
                                    618 ;	eliminated unneeded push/pop dph
                                    619 ;	eliminated unneeded push/pop b
                                    620 ;	eliminated unneeded push/pop acc
                                    621 	.area CSEG    (CODE)
                                    622 	.area CONST   (CODE)
                                    623 	.area XINIT   (CODE)
                                    624 	.area CABS    (ABS,CODE)
