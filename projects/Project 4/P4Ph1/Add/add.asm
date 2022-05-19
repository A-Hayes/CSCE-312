//NAME AND UIN

// File name: add.asm

// The program calculates the sum of two numbers in O(1) time complexity and O(1) space complexity. 
// The values of a and b are stored in RAM[0] (R0) and RAM[1] (R1), respectively. 
// The value of a is a whole number, and b is a whole number.
// Compute and store the result in RAM[2] (R2).


 


@R0 // D = r0(M)
D = M

@R1 // D = D + r1(M)
D = D + M

@R2 // r2(M) = D
M = D