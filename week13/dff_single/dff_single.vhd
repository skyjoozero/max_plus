library ieee;
use ieee.std_logic_1164.all;

entity dff_single is
	port (
		clr	:	in		std_logic;
		clk	:	in 	std_logic;
		d		:	in 	std_logic;
		q		:	out	std_logic);
end dff_single;

architecture main of dff_single is

begin
	process(clr, clk, d)
		begin
			if(clr='0') then
				q <= '0';
			elsif rising_edge(clk) then
				q <= d;
			end if;
	end process;
end main;	