// Designed by Teddy Heinen and Aakash Tyagi CSCE-312 SP'20
//The simulator clock (used in testing sequential chips only) emits a series of values
//denoted 0, 0+, 1, 1+, 2, 2+, 3, 3+, and so forth. The progression of these clock
//cycles (also called time units) is controlled by two script commands called tick and
//tock. A tick moves the clock value from t to t+, and a tock from t+ to t+1,
//bringing upon the next time unit. 

load CPU.hdl,
output-file CPU.out,
compare-to CPU.cmp,
output-list time%S0.4.0 fromM%D0.6.0 N%B0.12.0 Reset%B2.1.2 ToM%D1.6.0 WriteM%B3.1.3 AddressM%D0.5.0 PCOut%D0.5.0 AluOut%D0.6.0 R0Out%D2.6.2 R1Out%D2.6.2;

set N %B100000000000, // MREAD R0 M0
set fromM %B000000000001,
tick, output, tock, output;

set N %B100101000000, // MREAD R5 M0
set fromM %B000000000000,
tick, output, tock, output;

set N %B100001000000, // MREAD R1 M0
set fromM %B000000000010,
tick, output, tock, output;

set N %B001000000001, // SUB R0 R0 R1
tick, output, tock, output;

set N %B000000001000, // ADD R0 R1 R0
tick, output, tock, output;

set N %B101000000000, // MWRITE R0 M0
tick, output, tock, output;

set N %B000000001000, // ADD R0 R1 R0
tick, output, tock, output;

set N %B010000001000, // AND R0 R1 R0
tick, output, tock, output;

set N %B000000001000, // ADD R0 R1 R0
tick, output, tock, output;

set N %B011000001000, // OR R0 R1 R0
tick, output, tock, output;

set N %B001000000001, // SUB R0 R0 R1
tick, output, tock, output;

set N %B101000000000, // MWRITE R0 M0
tick, output, tock, output;

set N %B111000000101, // JUMP R0 R5 
tick, output, tock, output;

set N %B111000000001, // JUMP R0 R1 
tick, output, tock, output;

set N %B111000000001, // JUMP R0 R1
set Reset %B0, 
tick, output, tock, output;

set N %B111000000001, // JUMP R0 R1
set Reset %B1, 
tick, output, tock, output;