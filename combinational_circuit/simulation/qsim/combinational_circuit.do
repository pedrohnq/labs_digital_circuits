onerror {quit -f}
vlib work
vlog -work work combinational_circuit.vo
vlog -work work combinational_circuit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.combinational_circuit_vlg_vec_tst
vcd file -direction combinational_circuit.msim.vcd
vcd add -internal combinational_circuit_vlg_vec_tst/*
vcd add -internal combinational_circuit_vlg_vec_tst/i1/*
add wave /*
run -all
