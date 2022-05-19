load palindrome.asm,
output-file palindrome.out,
compare-to palindrome.cmp,
output-list RAM[1024]%D2.6.2 RAM[1025]%D2.6.2 RAM[1026]%D2.6.2 RAM[1027]%D2.6.2 RAM[1028]%D2.6.2 RAM[0]%D2.6.2;

set RAM[0] -1,
set RAM[1024] 65,
set RAM[1025] 66,
set RAM[1026] 67,
set RAM[1027] 66,
set RAM[1028] 65,
repeat 50 {
    ticktock;
}
set RAM[1024] 65,
set RAM[1025] 66,
set RAM[1026] 67,
set RAM[1027] 66,
set RAM[1028] 65,
output;
set PC 0,

set RAM[0] -1,
set RAM[1024] 65,
set RAM[1025] 66,
set RAM[1026] 67,
set RAM[1027] 66,
set RAM[1028] 70,
repeat 50 {
    ticktock;
}
set RAM[1024] 65,
set RAM[1025] 66,
set RAM[1026] 67,
set RAM[1027] 66,
set RAM[1028] 70,
output;
set PC 0,

set RAM[0] -1,
set RAM[1024] 10,
set RAM[1025] 11,
set RAM[1026] 11,
set RAM[1027] 11,
set RAM[1028] 10,
repeat 50 {
    ticktock;
}
set RAM[1024] 10,
set RAM[1025] 11,
set RAM[1026] 11,
set RAM[1027] 11,
set RAM[1028] 10,
output;
set PC 0,

set RAM[0] -1,
set RAM[1024] 10,
set RAM[1025] 10,
set RAM[1026] 11,
set RAM[1027] 10,
set RAM[1028] 11,
repeat 50 {
    ticktock;
}
set RAM[1024] 10,
set RAM[1025] 10,
set RAM[1026] 11,
set RAM[1027] 10,
set RAM[1028] 11,
output;
set PC 0,