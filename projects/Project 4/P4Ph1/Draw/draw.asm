//NAME AND UIN

// File name: draw.asm

// This program takes keyboard inputs and draws to the screen
// based on the input. The conditions for what to draw are as follows:
// (a) If KEY T is pressed, draw a horizontal line of 1 pixel height on the
// top row of the SCREEN.
// (b) If KEY B is pressed, draw a horizontal line of 1 pixel height on the
// bottom row of the SCREEN.
// (c) Otherwise, clear the SCREEN.
// State any other assumptions made in your program 

// Assumptions (as applicable)

// Put your code below this line

(BEGIN) // 1. access the first register corresponding to screen //// int i = 0
	
	@SCREEN
	D = A
	@pixel
	M = D // pixel's memory now holds SCREEN's address

(LOOP) // read keyboard value and jump accordingly

	@KBD
	D = M // save ascii value to D


	// if D == (B or 66), then jump to draw bottom
	@66
	D = D - A // ascii - 66 = D

	@PREBOTTOM
	D; JEQ // if ascii - 66 = 0, then ascii is B


	// if D == (T or 84), then jump to draw top
	// is currently (ascii - 66)
	@18
	D = D - A // (ascii - 66) - 18 = D

	@TOP
	D; JEQ

// otherwise, jump to clear screen
(CLEAR) // sets all screen pixels to white (i.e. 0)

	// 2. set that register to 0
	@pixel
	A = M
	M = 0 // colouring 16 pixels white at the same time

	// 3. go to next register
	@pixel
	MD = M + 1

	// 4. check if we are at the end of the screen registers
	@KBD
	//check if register - A == 0
	D = D - A

	// 5. to back to beginning if true
	@BEGIN
	D; JEQ

	// 6. go to (2) if false
	@CLEAR
	0; JMP


(TOP)

	// 2. set that register to -1
	@pixel 
	A = M
	M = -1 // colouring 16 pixels black at the same time

	// 3. go to next register
	@pixel
	MD = M + 1

	// 4. check if we are at the end of the first row registers
	// i.e. check if we are 32 registers into SCREEN
	@32
	D = D - A // D = D - 32
	@SCREEN
	D = D - A

	// 5. to back to beginning if true
	@BEGIN
	D; JEQ

	// 6. go to (2) if false
	@TOP
	0; JMP

(PREBOTTOM) // 1. access the last register corresponding to screen i.e. 1 before KBD

	@KBD
	D = A - 1
	@pixel
	M = D // pixel's memory now holds the last register's address

(BOTTOM)

	// 2. set that register to -1
	@pixel
	A = M
	M = -1 // colouring 16 pixels black at the same time

	// 3. go to previous register
	@pixel
	MD = M - 1

	// 4. check if we are at the beginning of the last row if registers corresponding to screen
	// i.e. check if we are 32 registers away from the KBD-1
	@32
	D = D + A
	@KBD
	A = A - 1 // kbd is the first register after screen, so -1 accessess the last register of screen
	D = D - A
	
	// 5. to back to beginning if true
	@BEGIN
	D; JEQ

	// 6. go to (2) if false
	@BOTTOM
	0; JMP