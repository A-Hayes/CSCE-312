//NAME AND UIN

// File name: draw.asm

// This program takes keyboard inputs and draws to the screen
// based on the input. The conditions for what to draw are as follows:
// (a) If KEY T is pressed, draw a horizontal line of 1 pixel width on the
// top row of the SCREEN.
// (b) If KEY B is pressed, draw a horizontal line of 1 pixel width on the
// bottom row of the SCREEN.
// (c) Otherwise, clear the SCREEN.
// State any other assumptions made in your program 

// Assumptions (as applicable)

// Put your code below this line
(BEGIN) 	// 1. access the first register of screen

	@SCREEN
	D=A
	@pixel
	M=D

(LOOP)

	@KBD
	D = M // save kbd value to D

	// if D == (B or 66), then jump to draw bottom
	@66
	D = D - A

	@PREBOTTOM
	D;JEQ

	// if D == (T or 84), then jump to draw top
	// 84 = 66 + 18
	@18
	D = D - A

	@TOP
	D;JEQ

(WHITE) // otherwise

	// 2. set that register to 0
	@pixel
	A = M
	M = 0 // colouring 16 pixels at a time white

	// 3. go to next register
	@pixel
	M = M + 1

	// 4. check if within screen bounds
	D = M
	@KBD
	D = D - A 
	
	// if the next iteration is out of bounds, then we stop drawing white
	@BEGIN
	D; JEQ

	// 5. go to (2)
	@WHITE
	0; JMP


(TOP) // if t is pressed

	// 2. set that register to -1
	@pixel
	A = M
	M = -1 // colouring 16 pixels at a time black

	// 3. go to next register
	@pixel
	MD = M + 1

	// 4. check if we are 32 registers into the screen, and quit if so
	@128
	D = D - A
	@SCREEN
	D = D - A

	// if the next iteration is out of bounds, then we stop drawing white
	@BEGIN
	D; JEQ

	// 5. go to (2)
	@TOP
	0; JMP

(PREBOTTOM) // 1. access the last register of screen

	@KBD
	D = A - 1 // access last register of screen
	@pixel
	M = D // save register to pixel

(BOTTOM) // if b is pressed

	// 2. set that register to -1
	@pixel
	A = M
	M = -1 // colouring 16 pixels at a time black

	// 3. go to previous register
	@pixel
	MD = M - 1

	// 4. check if we are 32 registers into the screen, and quit if so
	@128
	D = D + A
	@KBD
	A = A - 1 // kbd is the first register after screen, so -1 accessses the last register of screen
	D = D - A

	// if the next iteration is out of bounds, then we stop drawing white
	@BEGIN
	D; JEQ

	// 5. go to (2)
	@BOTTOM
	0; JMP