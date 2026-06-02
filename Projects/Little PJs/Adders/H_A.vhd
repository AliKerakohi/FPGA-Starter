library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity H_A is
    Port ( A,B : in  STD_LOGIC;
           S,C : out  STD_LOGIC);
end H_A;

architecture Behavioral of H_A is

begin

	S<= a xor b;
	C<= a and b;

end Behavioral;

