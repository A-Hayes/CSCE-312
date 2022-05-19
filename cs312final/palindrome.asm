// Asa Hayes 525003952

// Check if 5-char sequence from ROM[1024] to ROM[1028] is a palindrome
// If so, set R0 to 1. If not, set R0 to 0

(BEGIN)
  @1024
  D=M
  @1028
  D=D-M
  
  @NOPAL
  D;JNE
  
  @1025
  D=M
  @1027
  D=D-M
  
  @NOPAL
  D;JNE
  
  @0
  M=1
  
  @END
  0;JMP
  
(NOPAL)
  @0
  M=0
  
  @END
  0;JMP

(END)
  @END
  0;JMP