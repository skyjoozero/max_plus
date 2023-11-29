library verilog;
use verilog.vl_types.all;
entity dff_double is
    port(
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        d1              : in     vl_logic;
        q1              : out    vl_logic;
        q2              : out    vl_logic
    );
end dff_double;
