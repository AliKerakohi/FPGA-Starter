library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxBEH is
    Port ( A,B,C,D : in  STD_LOGIC_VECTOR (31 downto 0);
           S : IN  STD_LOGIC_VECTOR (1 downto 0);
			  Y : out  STD_LOGIC_VECTOR (31 downto 0));
end MuxBEH;

architecture Behavioral of MuxBEH is

begin
	Y <= A WHEN S="00" ELSE
		  B WHEN S="01" ELSE
		  C WHEN S="10" ELSE
		  D WHEN S="11";


end Behavioral;

