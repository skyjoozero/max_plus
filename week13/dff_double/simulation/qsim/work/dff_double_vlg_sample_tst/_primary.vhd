library verilog;
use verilog.vl_types.all;
entity dff_double_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        d1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dff_double_vlg_sample_tst;
