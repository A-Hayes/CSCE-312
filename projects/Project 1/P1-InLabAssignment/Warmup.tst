load Warmup.hdl,
output-file Warmup.out,
compare-to Warmup.cmp,
output-list B%B1.1.1 C%B1.1.1 Z%B1.1.1;

// Example test commands
set B 0,
set C 0,
eval,
output;

set B 1,
set C 0,
eval,
output;

set B 0,
set C 1,
eval,
output;

set B 1,
set C 1,
eval,
output;

// Now complete the rest of the commands