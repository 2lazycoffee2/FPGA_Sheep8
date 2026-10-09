library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity add is
  port (
    a0, a1 : in std_logic;
    s0: out std_logic
    );
end add ; 


architecture behavioral of add is
    begin 
        s0 <= a0 or a1;

    end behavioral;