# Threads Package in 8051 assembly / Small Device C Compiler
Threads Package Project - Programmed in C and 8051 assembly

This is my implementation of the Threads Package project for the undergraduate FALL 2021, OS course in NTHU in Hsinchu Taiwan. It is divided into 4 parts: 
<ol> 
  <li> Cooperative Threads - Basically a Polling version where each thread yields control while it waits for input/ouput.
  <li> Preemptive Threads  - Threads no longer yield voluntarily, instead, the hardware interrupt most reclaim control whenever appropriate.
  <li> Semaphores - Use of Semaphores to control access to critical section
  <li> Stress Test - Enhances the scheduling policy in our OS
  
This project was programmed in C and 8051 assembly. Feel free to clone and make your own changes.
