library verilog;
use verilog.vl_types.all;
entity vhdl is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c1              : in     vl_logic;
        c0              : in     vl_logic;
        and_out         : out    vl_logic;
        or_out          : out    vl_logic;
        xor_out         : out    vl_logic
    );
end vhdl;
