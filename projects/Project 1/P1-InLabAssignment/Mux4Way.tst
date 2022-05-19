//TST file for Mux4Way using Mux
load Mux4Way.hdl,
output-file Mux4Way.out,
compare-to Mux4Way.cmp,
output-list a%B1.1.1 b%B1.1.1 c%B1.1.1 d%B1.1.1 sel%B2.2.1 out%B2.1.2;

//Example Test Case
set a 0,
set b 0,
set c 0,
set d 0,
set sel %B00,
eval,
output;

//Now create more test cases
set a 0,
set b 1,
set c 1,
set d 1,
set sel %B00,
eval,
output;

set a 1,
set b 0,
set c 1,
set d 1,
set sel %B01,
eval,
output;

set a 1,
set b 1,
set c 0,
set d 1,
set sel %B10,
eval,
output;

set a 1,
set b 1,
set c 1,
set d 0,
set sel %B11,
eval,
output;

set a 1,
set b 0,
set c 0,
set d 0,
set sel %B00,
eval,
output;

set a 0,
set b 1,
set c 0,
set d 0,
set sel %B01,
eval,
output;

set a 0,
set b 0,
set c 1,
set d 0,
set sel %B10,
eval,
output;

set a 0,
set b 0,
set c 0,
set d 1,
set sel %B11,
eval,
output;

set a 1,
set b 0,
set c 1,
set d 0,
set sel %B10,
eval,
output;

set a 0,
set b 1,
set c 0,
set d 1,
set sel %B11,
eval,
output;

set a 1,
set b 0,
set c 0,
set d 1,
set sel %B10,
eval,
output;

set a 0,
set b 1,
set c 1,
set d 0,
set sel %B11,
eval,
output;

