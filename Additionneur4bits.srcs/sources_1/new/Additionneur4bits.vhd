----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2026 13:55:54
-- Design Name: 
-- Module Name: Additionneur4bits - Behavioral
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

entity Additionneur4bits is
    Port ( cin : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end Additionneur4bits;

architecture Behavioral of Additionneur4bits is
    signal cout0, cout1, cout2 : STD_LOGIC;

begin
    s(0) <= a(0) xor b(0) xor cin;
    cout0 <= (a(0) and b(0)) or (a(0) and cin) or (b(0) and cin);
    
    s(1) <= a(1) xor b(1) xor cout0;
    cout1 <= (a(1) and b(1)) or (a(1) and cout0) or (b(1) and cout0);
    
    s(2) <= a(2) xor b(2) xor cout1;
    cout2 <= (a(2) and b(2)) or (a(2) and cout1) or (b(2) and cout1);
    
    s(3) <= a(3) xor b(3) xor cout2;
    cout <= (a(3) and b(3)) or (a(3) and cout2) or (b(3) and cout2);

end Behavioral;
