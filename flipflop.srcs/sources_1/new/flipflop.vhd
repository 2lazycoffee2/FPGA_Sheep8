----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2026 14:07:36
-- Design Name: 
-- Module Name: flipflop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity flipflop is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           EN : in STD_LOGIC);
end flipflop;

architecture flipflop_arch of flipflop is

begin
    p1: process (CLK)
    begin
        if(CLK'event and CLK ='1')
        then
            if(EN ='1') then Q <= D;
            end if;
        end if;
    end process;
 

end flipflop_arch;
