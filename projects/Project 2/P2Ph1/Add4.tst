//Add4.tst

load Add4.hdl,
output-file Add4.out,
compare-to Add4.cmp,
output-list a%B1.4.1 b%B1.4.1 out%B1.4.1 carry%B3.1.3;

set a %B0000,
set b %B0000,
eval,
output;

set a %B0001,
set b %B0000,
eval,
output;

set a %B0001,
set b %B0001,
eval,
output;

set a %B0001,
set b %B0011,
eval,
output;

set a %B0001,
set b %B0111,
eval,
output;

set a %B0001,
set b %B1111,
eval,
output;

set a %B0100,
set b %B0010,
eval,
output;

set a %B1100,
set b %B0011,
eval,
output;

set a %B1011,
set b %B1110,
eval,
output;

set a %B0100,
set b %B0011,
eval,
output;

set a %B0101,
set b %B1010,
eval,
output;

set a %B1111,
set b %B1111,
eval,
output;

//Fill in remaining test commands
//You do not need to test exhaustive test cases but enough testcases (general and corner-case) to build confidence


