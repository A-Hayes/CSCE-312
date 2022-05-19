// Asa Hayes 525003952

// File name: mod.asm

// This program calculates the modulo of two given numbers a and b, which is a%b in math. 
// The value of a is stored in RAM[0] (R0), and the value of b is stored in RAM[1] (R1). 
// The value a is non-negative integer and b is positive integer. 
// The modulo value is stored in RAM[2] (R2).



//[REMOVE THIS LINE AFTER TESTING --- REMOVE THIS LINE AFTER TESTING --- REMOVE THIS LINE AFTER TESTING --- REMOVE THIS LINE AFTER TESTING --- ]



// Put your code below this line

(BEGIN)
  //sets D to value of dividend
  @R0
  D=M
  
  //does first subtraction to see if quotient = 0 or <1
  @R1
  D=D-M
  
  //if R0 < R1, goto Case A
  @CASEA
  D;JLT
  
  //if D=0 from first subtraction, goto Case B
  @CASEB
  D;JEQ
  
  
(LOOP)  //continue subtracting until result is LEQ to 0
  //loop subtraction, D is (R0 value - (R1 * iterations) ) 
  @R1
  D=D-M
  
  //if loop subtraction puts D to <= 0, goto CASEB to set R2 to result
  @CASEB
  D;JLE
  
  //if D > 0, iterate
  @LOOP
  0;JMP
  
(CASEA)  //if val of R1 < val of R2, modulo states that result is just val of R1
  //Set val of R2 to val of R0
  @R0
  D=M
  @R2
  M=D
  
  //goto END
  @END
  0;JMP
  
(CASEB) //determines end conditions for R2
  //if loop subtraction puts D to 0, exit to END as R2 is already initialized to 0
  @END
  D;JEQ
  
  //if loop subtraction sets D to <0, the result before the last subtraction is the result
  @R1
  D=D+M
  
  //set R2 to now positive result
  @R2
  M=D
  
  //goto END
  @END
  0;JMP

(END)
  @END
  0;JMP