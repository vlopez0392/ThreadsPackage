/*
NTHU FALL 2021 - Operating Systems
Project Checkpoint 1 - testcoop.c
Solution by Victor D. Lopez 110062426
*/

#include <8051.h>
#include "cooperative.h" 

//Globals: Shared buffer and buffer full bit flag.
__data __at (0x22) static char BUFFER;  //1 byte BUFFER variable 
__bit isBufferFull = 0;                 //Bit-addresable register 0x20
__data __at (0x23) static char item;    //Producer data-structure
//Producer
void producer(void){
    item = (char)0x41;
    while(1){ 
        if(item > 0x5A){
            item = 0x41;
        }
        while(isBufferFull){ //Poll-Buffer
            ThreadYield();
        }
        BUFFER = item;       //Write to buffer
        item++;   
        isBufferFull = 1; //Buffer full, consumer must reset flag when it consumes
    }
}

//Consumer
void consumer(void){
    //Initialize UART Tx for polling 
    TMOD = 0x20; 
    TH1 = -6; 
    SCON = 0x50; 
    TR1 = 1;
    TI = 0;

    while(1){  
        //Waiting for new data from producer
        while(!isBufferFull){ 
           ThreadYield();
        }  
        SBUF = BUFFER;    //Write to SBUF
        isBufferFull = 0; //Buffer empty, data consumed 

        //Poll for TI flag
        while(!TI){}
        TI = 0; //Clear TI flag
    }
}

void main(void){ 
    ThreadCreate(producer);  //Create Thread for producer;
    consumer();              //Call consumer;
}

//Start-up code, jump to Bootstrap in cooperative.c
void _sdcc_gsinit_startup(void) {
    __asm
        ljmp  _Bootstrap
    __endasm;
}
void _mcs51_genRAMCLEAR(void) { }
void _mcs51_genXINIT(void) { }
void _mcs51_genXRAMCLEAR(void) { }

