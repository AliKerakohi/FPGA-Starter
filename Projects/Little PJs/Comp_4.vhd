library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comp is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC);
end Comp;

architecture Arch_Comp of Comp is
	signal x: STD_LOGIC_VECTOR(3 downto 0);
begin

	x(0) <= a(0) Xnor b(0);
	x(1) <= a(1) Xnor b(1);
	x(2) <= a(2) Xnor b(2);
	x(3) <= a(3) Xnor b(3);
	Y <=	x(0) and x(1) and x(2) and x(3);
	
end Arch_Comp;