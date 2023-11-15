library ieee;
use ieee.std_logic_1164.all;
entity vhdl is
port( a,b,c1,c0: in std_logic;
and_out,or_out,xor_out : out std_logic);
end vhdl;
architecture sample of vhdl is
 signal an : std_logic;
 signal cn : std_logic;
begin
an <= a and b;
cn <= c1 or c0;
and_out <= an;
or_out <= cn;
xor_out <= an xor cn;
end sample;