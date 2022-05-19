// Asa Hayes 525003952
// File name: gcd.asm

// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in RAM[0] (R0) and RAM[1] (R1). 
// The gcd is stored in RAM[2] (R2).



// Put your code below this line
(BEGIN)
  //set 2 temp values to store R0 and R1 init values
  @R1
  D=M
  @temp2
  M=D
  @R0
  D=M
  @temp1
  M=D
  
(LOOP)
  @R0
  D=M
  @R1
  D=D-M
  
  //if R0 = R1, goto SAME
  @SAME
  D;JEQ
  
  //if R0 < R1, goto SWAP
  @SWAP
  D;JLT
  
  @R0
  M=D
  
  @LOOP
  0;JMP   

(SWAP) //swaps values of R0 and R1 so that larger value is in R0
  @R0
  D=M
  @R2
  M=D
  @R1
  D=M
  @R0
  M=D
  @R2
  D=M
  @R1
  M=D
  
  @LOOP
  0;JMP

(SAME)  //as result of Euclid GCD is found when a = b, set R2 to that value and goto END
  @R0
  D=M
  @R2
  M=D
  
  //set R0 and R1 to init values
  @temp1
  D=M
  @R0
  M=D
  @temp2
  D=M
  @R1
  M=D
  
  @END
  0;JMP

(END)
  @END
  0;JMP