library verilog;
use verilog.vl_types.all;
entity vhdl_vlg_check_tst is
    port(
        and_out         : in     vl_logic;
        or_out          : in     vl_logic;
        xor_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end vhdl_vlg_check_tst;
