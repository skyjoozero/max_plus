onerror {quit -f}
vlib work
vlog -work work example.vo
vlog -work work example.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.example_vlg_vec_tst
vcd file -direction example.msim.vcd
vcd add -internal example_vlg_vec_tst/*
vcd add -internal example_vlg_vec_tst/i1/*
add wave /*
run -all
