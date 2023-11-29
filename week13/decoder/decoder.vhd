library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port( en	:	in	 std_logic;
			x	:	in	 std_logic_vector(2 downto 0);
			D	:	out std_logic_vector(7 downto 0));
end decoder;

architecture main of decoder is
begin
	process(en, x)
	begin
		D <= "00000000";
		if en = '1' then
			case x is
				when "000" => D <= "01111110";
				when "001" => D <= "00110000";
				when "010" => D <= "01101101";
				when "011" => D <= "01111001";
				when "100" => D <= "00110011";
				when "101" => D <= "01011011";
				when "110" => D <= "01011111";
				when "111" => D <= "01110000";
				when others => null;
			end case;
		end if;
	end process;
end main	;