// Name and UIN
// Filename = pow.tst

load pow.hack,
output-file pow.out,
compare-to pow.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 2,
set RAM[1] 3,
set RAM[2] -1;  // Test that program initialized product to 0
repeat 100 {
  ticktock;
}
output;


//Rest to be filled based on format specified above.
