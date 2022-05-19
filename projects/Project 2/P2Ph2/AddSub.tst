load AddSub.hdl,
output-file AddSub.out,
compare-to AddSub.cmp,
output-list a%B1.4.1 b%B1.4.1 sub%B1.1.1 out%B1.4.1 carry%B1.1.1;

set a %B0000,
set b %B0000,
set sub 0,
eval,
output;

set a %B0010,
set b %B0010,
set sub 0,
eval,
output;

set a %B0100,
set b %B0001,
set sub 0,
eval,
output;

set a %B1100,
set b %B1100,
set sub 0,
eval,
output;

set a %B1100,
set b %B0011,
set sub 0,
eval,
output;

set a %B1010,
set b %B0110,
set sub 0,
eval,
output;

set a %B0000,
set b %B0000,
set sub 1,
eval,
output;

set a %B0010,
set b %B0010,
set sub 1,
eval,
output;

set a %B0100,
set b %B0001,
set sub 1,
eval,
output;

set a %B1100,
set b %B1100,
set sub 1,
eval,
output;

set a %B1100,
set b %B0011,
set sub 1,
eval,
output;
