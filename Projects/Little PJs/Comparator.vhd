library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator is
    Port ( A,B : in  STD_LOGIC_VECTOR (7 downto 0);
           X,Y,Z : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
	X <= '1' WHEN (A > B) ELSE '0';
	Y <= '1' WHEN (A = B) ELSE '0';
	Z <= '1' WHEN (A < B) ELSE '0';

end Behavioral;

