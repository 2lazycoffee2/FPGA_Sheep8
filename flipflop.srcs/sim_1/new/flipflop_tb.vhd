----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2026 14:22:38
-- Design Name: 
-- Module Name: flipflop_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflop_tb is
--  Port ( );
end flipflop_tb;

architecture flipflop_arch of flipflop_tb is
    component flipflop is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           EN : in STD_LOGIC);
    end component;
    signal D, Q: STD_LOGIC_VECTOR(7 downto 0);
    signal CLK, EN: STD_LOGIC;      
begin
    uut: flipflop port map ( D=> D, Q=> Q, CLK=> CLK, EN=> EN );
    process
        begin
            CLK <= '1'; EN <= '1'; D <= "11111111";
            wait for 100ns;
            CLK <= '0'; EN <= '1'; D <= "11110000";
            wait for 100ns; 
            CLK <= '1'; EN <= '1'; D <= "11110000"; 
            wait;  
    end process;

end flipflop_arch;
