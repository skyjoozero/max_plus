library verilog;
use verilog.vl_types.all;
entity example_vlg_sample_tst is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end example_vlg_sample_tst;
