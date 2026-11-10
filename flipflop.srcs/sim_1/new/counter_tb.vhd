----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2026 17:11:08
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter
    Port ( EN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           UpDown : in STD_LOGIC;
           load_value : in STD_LOGIC_VECTOR(7 downto 0);
           load : in STD_LOGIC;
           compteur : out STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC);
end component;
begin


end Behavioral;
