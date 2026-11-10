----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2026 15:16:26
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( EN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           UpDown : in STD_LOGIC;
           load_value : in STD_LOGIC_VECTOR(7 downto 0);
           load : in STD_LOGIC;
           compteur : out STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC);
end counter;

architecture counter_arch of counter is
signal compt : unsigned(7 downto 0);
begin
    process(reset, CLK)
    begin 
      if(reset ='1') then compt <= (others => '0');
        if(CLK'event and CLK = '1') -- front montant d'horloge
        then 
          if(EN='1') --condition pour que le comptage/decomptage soit authorisé
          then
            if(load = '1') then compteur <= load_value; --charger valeur
          else
            if(UpDown = '1') --en mode comptage
            then 
                if(compt = 255) then compt <= x"00"; --si le compteur atteint la valeur max il retourne a 0
                end if;
                compt <= compt + 1; --incrementer le signal interne
            else -- en mode decomptage
                if(compt = 0) then compt <= "1";
                end if;
                compt <= compt - 1;
            end if;
          end if;
          end if;
       end if;       
      end if; 
    end process; 
    
    compteur <= std_logic_vector(compt); --maj du compteur  

end counter_arch;
