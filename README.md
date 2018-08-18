# adder-4bit
A simple 4 bit adder. The types of the ports were defined as **unsigned**
for the sake of simplicity. We recommend to use **std_logic_vector**
in real designs. The library package **ieee.std_logic_unsigned** was
not used because it is a vendor specific extension from Synopsys or
Mentor Graphics. We tried to abide to the standard whenever possible.

## Testbench
The testbench provided does not use **assert** or any other form of 
feedback to the user. Hence, this testbench should be used with a
simulator that provides some visual feedback in order to check the 
results.

