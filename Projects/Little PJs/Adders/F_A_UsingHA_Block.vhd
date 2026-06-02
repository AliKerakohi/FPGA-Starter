library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity F_A_UsingHA_Block is
    Port ( A,B,Ci : in  STD_LOGIC;
           S,Co : out  STD_LOGIC);
end F_A_UsingHA_Block;

architecture Behavioral of F_A_UsingHA_Block is
COMPONENT H_A
	PORT(
		A : IN std_logic;
		B : IN std_logic;          
		S : OUT std_logic;
		C : OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL X1,X2,X3: STD_LOGIC;

begin

	U1: H_A PORT MAP(
		A => A,
		B => B,
		S => X1,
		C => X2
	);
	
	U2: H_A PORT MAP(
		A => X1,
		B => Ci,
		S => S,
		C => X3
	);
	
	Co <= X2 OR X3;

end Behavioral;

