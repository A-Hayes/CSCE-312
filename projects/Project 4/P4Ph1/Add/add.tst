// Name and UIN
// Filename = add.tst

load add.hack,
output-file add.out,
compare-to add.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;


set RAM[0] 1,   // Set test arguments
set RAM[1] 1,
set RAM[2] -1;  // Test that program initialized product to 0
repeat 10 {
  ticktock;
}
set RAM[0] 1,   // Restore arguments in case program used them as loop counter
set RAM[1] 1,
output;

set PC 0,
set RAM[0] 4,   // Set test arguments
set RAM[1] 0,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 10 {
  ticktock;
}
set RAM[0] 4,   // Restore arguments in case program used them as loop counter
set RAM[1] 0,
output;

set PC 0,
set RAM[0] 3,   // Set test arguments
set RAM[1] 2,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 10 {
  ticktock;
}
set RAM[0] 3,   // Restore arguments in case program used them as loop counter
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 6,   // Set test arguments
set RAM[1] 3,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 10 {
  ticktock;
}
set RAM[0] 6,   // Restore arguments in case program used them as loop counter
set RAM[1] 3,
output;