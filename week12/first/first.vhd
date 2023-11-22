library ieee;
use ieee.std_logic_1164.all;

entity first is
	port ( a, b							: in std_logic;
			 andOut, orOut, notOut  : out std_logic);
end first;

architecture Behvaioral of first is
begin
	andOut <= a and b;
	orOut  <= a or b;
	notOut <= not a;
end Behvaioral;