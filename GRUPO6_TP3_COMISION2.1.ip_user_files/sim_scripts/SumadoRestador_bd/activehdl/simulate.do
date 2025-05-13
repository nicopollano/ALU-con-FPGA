transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+SumadoRestador_bd  -L util_vector_logic_v2_0_3 -L xil_defaultlib -L xlslice_v1_0_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SumadoRestador_bd xil_defaultlib.glbl

do {SumadoRestador_bd.udo}

run 1000ns

endsim

quit -force
