// Asa Hayes 525003952

// File name: div.asm

// The program calculates the quotient from a division operation. 
// The values of dividend a and divisor b are stored in RAM[0] (R0) and RAM[1] (R1), respectively. 
// The dividend a is a non-negative integer, and the divisor b is a positive integer. 
// Store the quotient in RAM[2] (R2). Ignore the remainder.

// Put your code below this line

(BEGIN)
  //Ensure that R2, which will be acting as the counter, is 0
  @R2
  M=0
  
  //sets D to value of dividend
  @R0
  D=M
  
  //does first subtraction to see if quotient = 0 or <1
  @R1
  D=D-M
  
  //if if quotient <1, END
  @END
  D;JLT
  
  
(LOOP)  //continue subtracting until result is LEQ to 0
  //if it gets to a new loop iteration, quotient++
  @R2
  M=M+1
  
  //loop subtraction, D is (dividend - (divisor * iterations) ) 
  @R1
  D=D-M
  
  //if D => 0, iterate
  //(if loop subtraction sets D to 0, allow 1 more iteration to get proper increase in quotient)
  @LOOP
  D;JGE

(END)
  @END
  0;JMP