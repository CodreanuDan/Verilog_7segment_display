onerror {exit -code 1}
vlib work
vcom -work work BCD_LMDSH.vho
vcom -work work EC22.vwf.vht
vsim -c -t 1ps -sdfmax EC2_vhd_vec_tst/i1=BCD_LMDSH_vhd.sdo -L arriaii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.EC2_vhd_vec_tst
vcd file -direction BCD_LMDSH.msim.vcd
vcd add -internal EC2_vhd_vec_tst/*
vcd add -internal EC2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

