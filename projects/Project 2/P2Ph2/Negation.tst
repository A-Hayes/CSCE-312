//Negation.tst

load Negation.hdl,
output-file Negation.out,
compare-to Negation.cmp,
output-list in%B1.16.1 out%B1.16.1;

//in=1
set in %B0000000000000001,
eval,
output;

//Write more tst commands and also complete the .cmp file accordingly