library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- BCD TO 7 SEGMENT (7448 IC)
entity BCDto7SEG is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (6 downto 0));
end BCDto7SEG;

architecture Behavioral of BCDto7SEG is

begin

	S <=  "0111111"	WHEN A=X"0" ELSE
		  "0000110"	WHEN A=X"1" ELSE
		  "1011011"	WHEN A=X"2" ELSE
		  "1001111" WHEN A=X"3" ELSE
		  "1100110" WHEN A=X"4" ELSE
		  "1101101"	WHEN A=X"5" ELSE
		  "1111101"	WHEN A=X"6" ELSE
		  "0000111"	WHEN A=X"7" ELSE
		  "1111111"	WHEN A=X"8" ELSE
		  "1101111"	WHEN A=X"9" ELSE
		  "0000000";			
			

end Behavioral;

