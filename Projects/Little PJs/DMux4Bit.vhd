library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity DMuxBeh is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           A,B,C,D : out  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0));
end DMuxBeh;

--DMUX 4BIT

architecture Behavioral of DMuxBeh is

begin

	A<=X WHEN S="00" ELSE "0000";
	B<=X WHEN S="01" ELSE "0000";
	C<=X WHEN S="10" ELSE "0000";
	D<=X WHEN S="11" ELSE "0000";

end Behavioral;

