// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// Custom File: 8-to-3 Priority Encoder

load Encode8to3.hdl,
output-file Encode8to3.out,
compare-to Encode8to3.cmp,
output-list out2%B3.1.3 out1%B3.1.3 out0%B3.1.3 verify%B3.1.3;

set a 0,
set b 0,
set c 0,
set d 0,
set e 0,
set f 0,
set g 0,
set h 0,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 0,
set e 0,
set f 0,
set g 0,
set h 1,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 0,
set e 0,
set f 0,
set g 1,
set h 0,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 0,
set e 0,
set f 1,
set g 0,
set h 0,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 0,
set e 1,
set f 0,
set g 0,
set h 0,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 1,
set e 0,
set f 0,
set g 0,
set h 0,
eval,
output;

set a 0,
set b 0,
set c 1,
set d 0,
set e 0,
set f 0,
set g 0,
set h 0,
eval,
output;

set a 0,
set b 1,
set c 0,
set d 0,
set e 0,
set f 0,
set g 0,
set h 0,
eval,
output;

set a 1,
set b 0,
set c 0,
set d 0,
set e 0,
set f 0,
set g 0,
set h 0,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 1,
set e 1,
set f 0,
set g 1,
set h 0,
eval,
output;

set a 0,
set b 1,
set c 0,
set d 0,
set e 1,
set f 1,
set g 0,
set h 1,
eval,
output;

set a 1,
set b 0,
set c 0,
set d 1,
set e 0,
set f 1,
set g 0,
set h 0,
eval,
output;
