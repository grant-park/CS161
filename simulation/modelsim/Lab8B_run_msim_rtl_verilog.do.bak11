transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/multi2C32O.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/register.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/registerFile.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/multi2CO1.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/multi2C8O.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/multi2C4O.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/Lab8B.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/instructionMemory.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/datamemory2.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/ALU.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/adder.sv}
vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/controlunit.sv}

vlog -sv -work work +incdir+/home/class18/gpark18/Documents/cs161/lab8b {/home/class18/gpark18/Documents/cs161/lab8b/tester3.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tester3

add wave *
view structure
view signals
run -all
