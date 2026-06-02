library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( A,B,C1 : in  STD_LOGIC;
           S,C0 : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

begin

	S<= (A Xor B) Xor C1;
	C0<= (A And B) Or ((A Xor B) And C1);

end Behavioral;

