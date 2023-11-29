onerror {quit -f}
vlib work
vlog -work work dff_single.vo
vlog -work work dff_single.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dff_single_vlg_vec_tst
vcd file -direction dff_single.msim.vcd
vcd add -internal dff_single_vlg_vec_tst/*
vcd add -internal dff_single_vlg_vec_tst/i1/*
add wave /*
run -all
