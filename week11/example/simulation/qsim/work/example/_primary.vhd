library verilog;
use verilog.vl_types.all;
entity example is
    port(
        and_out         : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        xor_out         : out    vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        or_out          : out    vl_logic
    );
end example;
