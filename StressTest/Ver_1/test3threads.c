/*
NTHU FALL 2021 - Operating Systems 
Project Checkpoint 4 - testpreempt.c
Solution by Victor D. Lopez 110062426
*/

#include <8051.h>
#include "preemptive.h" 

//Globals: Shared buffer and buffer full bit flag.
__data __at (0x21) static char BUFFERSIZE; //Buffer size - Initialized as 0x03
__data __at (0x22) static char BUFFER[3];  //3 byte BUFFER deep variable  
__data __at (0x25) static char item;       //Producer data-structure

//Semaphores
__data __at (0x26) static char empty;   //semaphore s
__data __at (0x27) static char full;    //n buffers
__data __at (0x28) static char mutex;   //mutex lock
__data __at (0x29) static char n;       //Semaphore initializer
__data __at (0x2A) static char rear;    //Circular queue rear or "tail"
__data __at (0x2B) static char front;   //Circular queue front or "head"
__data __at (0x2C) static char number;  //Producer2 data-structure

//Semaphore assembly macros
#define CNAME(s) _ ## s
#define LABEL(label) label ## $

//Create semaphore - CLR 0xAF is equivalent to EA = 0;
                 //- SETB 0xAF is equivalent to EA = 1;  
#define SemaphoreCreate(s, n){ \
        __asm\
            CLR 0xAF\
            MOV CNAME(s), CNAME(n)\
            SETB 0xAF \
        __endasm;         \
}   

//Semaphore Signal
#define SemaphoreSignal(s){ \
        __asm\
            INC CNAME(s)  \
        __endasm;         \
}   

//Semaphore wait body
//ACC has address 0xE0 - s == 0 case
//ACC bit 7 has address 0xE7 - s < 0 case
#define SemaphoreWaitBody(s, label){\
    __asm\
        LABEL(label): MOV ACC, CNAME(s)\
                          JZ LABEL(label)\
                          JB 0xE7, LABEL(label)\
                          DEC CNAME(s)\
    __endasm;\
}

#define SemaphoreWait(s){\
    SemaphoreWaitBody(s, __COUNTER__)\
}

//Producer1
void producer(void){
    item = (char)0x41;
    while(1){
        if(item > (char)0x5A){
            item = (char)0x41;
        }
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
            //Critical Section
            EA = 0;
            BUFFER[rear] = item; //Write to buffer
            rear++;
            if(rear == BUFFERSIZE){
                rear = (char)0x00;
            }
            item++;  
            EA = 1;
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
    }
}

//Producer2
void producer2(void){
    number = (char)0x30;
    while(1){
        if(number > (char)0x39){
            number = (char)0x30;
        }
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
            //Critical Section
            EA = 0;
            BUFFER[rear] = number; //Write to buffer
            rear++;
            if(rear == BUFFERSIZE){
                rear = (char)0x00;
            }
            number++;  
            EA = 1;
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
    }
}

//Consumer
void consumer(void){
    //Initialize UART Tx for polling 
    TMOD |= 0x20; 
    TH1 = -6; 
    SCON = 0x50; 
    TR1 = 1;
    TI = 0;

    while(1){  
        SemaphoreWait(full);
        SemaphoreWait(mutex);
            EA = 0;
            //Critical Section
            SBUF = BUFFER[front]; //Write to SBUF 3-deep char buffer front value
            front++;
            if(front == BUFFERSIZE){
                front = (char)0x00;
            }
            while(!TI){} //Poll for TI flag
            TI = 0; //Clear TI flag
            EA = 1;
        SemaphoreSignal(mutex);
        SemaphoreSignal(empty);
    }
}

void main(void){ 
    //Create semaphores and circular queue front and rear values
    BUFFERSIZE = (char)0x03;
    n = (char)0x00; SemaphoreCreate(full,n);
    n = (char)0x03; SemaphoreCreate(empty,n);
    n = (char)0x01; SemaphoreCreate(mutex, n);
    front = (char)0x00;
    rear  = (char)0x00;
    ThreadCreate(producer);   //Create Thread for producer1 A-Z        
    ThreadCreate(producer2);  //Create Thread for producer2 0-9 
    consumer();               //Call consumer;
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

//Jump to ISR
void timer0_ISR(void) __interrupt(1) {
        __asm
            ljmp _myTimer0Handler
        __endasm;
}


