library verilog;
use verilog.vl_types.all;
entity dff_single is
    port(
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic
    );
end dff_single;
