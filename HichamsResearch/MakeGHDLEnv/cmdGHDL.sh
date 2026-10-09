ghdl -s #file.vhd for syntax checking
ghdl -a #file.vhd for logical checking, it's an analysis
ghdl -e #object for elaborate, building a simulation of our testbench. Test the entity you want.
ghdl -r #object for running a testbench