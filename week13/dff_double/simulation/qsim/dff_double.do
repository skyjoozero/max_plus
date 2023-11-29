onerror {quit -f}
vlib work
vlog -work work dff_double.vo
vlog -work work dff_double.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dff_double_vlg_vec_tst
vcd file -direction dff_double.msim.vcd
vcd add -internal dff_double_vlg_vec_tst/*
vcd add -internal dff_double_vlg_vec_tst/i1/*
add wave /*
run -all
