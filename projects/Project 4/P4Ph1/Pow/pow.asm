//NAME AND UIN

// File name: pow.asm

// The program calculates the pow in O(N) time complexity and O(1) space complexity. 
// The values of n and k are stored in RAM[0] (R0) and RAM[1] (R1), respectively. 
// The value of n is a non-negative integer, and k is an whole number.
// Store the answer in RAM[2] (R2).

// code

(VARSETUP) // set inputs to variables 

	@R2 // initialize R2 to 0`
	M=0

	@R0
	D=M
	@product // sets product to base for iteration, so we multiply power-1 times
	M=D

	@R1 // in case we do not want to change R1
	D=M
	@power
	M=D


(POWLOOP) // check if we continue multiplying, or finish

	@product // add previous product to power result
	D=M
	@R2
	M=D

	@power
	MD=M-1

	@END 
	D;JEQ 	// if power is 0, then multiplications are complete

	/////////////// continue down if still multiplying ///////////////////

	// 0a. reset base to be R0 every iteration for multloop to decrement it
	@R0
	D=M
	@base
	M=D

	// 0b. before multiplying, set a variable for multiply to be added to

	@product
	M=0

(MULTLOOP) // otherwise, continue multiplications

	// 1. add R2 to product
	@R2
	D=M
	@product
	M=M+D

	// 2. decrement base
	@base
	MD=M-1

	// 3. check if base is 0

		// 3a. if 0, jump to pow loop
		@POWLOOP
		D; JEQ

		// 3b. else, keep multiplying
		@MULTLOOP
		0; JMP


(END)

	@END
	0;JMP