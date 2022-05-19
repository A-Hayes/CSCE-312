load series.asm,
output-file series.out,
compare-to series.cmp,
output-list RAM[0]%D2.6.2 RAM[1024]%D2.6.2;

set RAM[0] -1,   // Set test arguments
set RAM[1024] 0,
repeat 100 {
  ticktock;
}
set RAM[0] -1, 
output;
set PC 0,

set RAM[0] 0,   // Set test arguments
set RAM[1024] 0,
repeat 100 {
  ticktock;
}
set RAM[0] 0, 
output;
set PC 0,

set RAM[0] 1,   // Set test arguments
set RAM[1024] 0,
repeat 100 {
  ticktock;
}
set RAM[0] 1,
output;
set PC 0,

set RAM[0] 2,   // Set test arguments
set RAM[1024] 0,
repeat 200 {
  ticktock;
}
set RAM[0] 2,
output;
set PC 0,

set RAM[0] 5,   // Set test arguments
set RAM[1024] 0,
repeat 500 {
  ticktock;
}
set RAM[0] 5,
output;
set PC 0,

set RAM[0] 10,   // Set test arguments
set RAM[1024] 0,
repeat 1000 {
  ticktock;
}
set RAM[0] 10,
output;
set PC 0,

