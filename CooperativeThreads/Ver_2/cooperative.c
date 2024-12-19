/*
NTHU FALL 2021 - Operating Systems
Project Checkpoint 1 - cooperative.c
Solution by Victor D. Lopez 110062426
*/

#include <8051.h>
#include "cooperative.h"

//Thread manager globals 
__data __at (0x32) static char SPArray[MAXTHREADS]; //Stack pointer array
__data __at (0x36) static char currThr;         //Current Active Thread 
__data __at (0x37) static char threadBitMask;   //Thread bitMask
//Other temporaries
__data __at (0x21) static char pushZero = (char)0x00;  //Direct address to push 0 to registers in ThreadCreate                   
__data __at (0x38) static char tempBitMask;   //Temporary threadbitmask
__data __at (0x39) static char tempSP;        //Temporary stack pointer
__data __at (0x3A) static char tempPSW = (char)0x00;   //Temporary PSW
__data __at (0x3B) unsigned static char shift;    //Round-robin shift value

//SAVESTATE AND RESTORESTATE macros 
//SAVESTATE
#define SAVESTATE { \
        __asm\
            PUSH ACC       \
            PUSH  B        \
            PUSH  DPL      \
            PUSH  DPH      \
            PUSH  PSW      \
        __endasm;         \
        SPArray[currThr] = SP; \
}   
//RESTORESTATE 
#define RESTORESTATE {   \
        SP = SPArray[currThr];  \
        __asm                   \
            POP PSW             \
            POP DPH             \
            POP DPL             \
            POP B               \
            POP ACC             \
        __endasm;               \
}

//External reference to main 
extern void main(void);

//Bootstraping
void Bootstrap(void) {
    threadBitMask = (char)0x00;
    currThr = ThreadCreate(main);
    RESTORESTATE;
}

//ThreadCreate 
ThreadID ThreadCreate(FunctionPtr fp){
    //Max number of threads reached 
    if(threadBitMask == (char)0x0F){
        return -1;
    }   

    //Update bitmask - Sets the rightmost unset bit
    threadBitMask |= ((threadBitMask+1) & (~threadBitMask));

    //Find a threadID not in use
    ThreadID threadId = (char)0x00;
    tempBitMask = threadBitMask;
    
    while(tempBitMask>>=1){
        threadId++;
    }

    //Calculate starting point of SP 
    char startingSP = (char)(((threadId^(0x01<<2))<<4));

    //Save current stack pointer in a temporary SP and set SP to starting SP
    tempSP = SP; 
    SP = startingSP;

    //Select appropriate PSW bits 3 and 4 by masking with threadID shift
    tempPSW ^= (threadId<<3);

    //Push return address and initialize ACC, B, DPL, DPH and PSW registers
    __asm   
        PUSH DPL        ;; low-byte  of fp parameter
        PUSH DPH        ;; high-byte of fp parameter
        PUSH _pushZero  ;; ACC
        PUSH _pushZero  ;; B 
        PUSH _pushZero  ;; DPL
        PUSH _pushZero  ;; DPH
        PUSH _tempPSW   ;; PSW 
    __endasm;

    //Write current SP to SPArray
    SPArray[threadId] = SP;

    //Set current SP to saved SP    
    SP = tempSP;

    //Return threadID
    return threadId;
}

//ThreadYield - Version 2 - Works much better 
void ThreadYield(void) {
    SAVESTATE;
    //Round-robin scheduling policy - Choose next thread available
    shift = (char)0x01 << currThr;
    char pos = currThr;

    do{
        if(shift == (char)0x08){
            shift = 0x01;
            pos = 0;
        }else{
            shift = (shift << 1) | (shift >>7);
            pos++;
        }
        if(shift & threadBitMask){
            currThr = pos;
            break;
        }
    }while(1);
    RESTORESTATE;
}

//Version 1 - Elegant yet ineffective - Works OK but calling the mod operator is very expensive
//Puts a lot of pressure in the stack.  
// void ThreadYield(void) {
//     SAVESTATE;
//     //Round-robin scheduling policy - Choose next thread available
//     char i = currThr;
//     do{
//         if(((char)0x01<<((i+1)%(MAXTHREADS))) & threadBitMask){
//             currThr = (i+1)%MAXTHREADS;
//             break;
//         }
//         i = (i+1)%MAXTHREADS;
//     }while(1);
//     RESTORESTATE;
// }


