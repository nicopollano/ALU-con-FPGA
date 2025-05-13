vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/util_vector_logic_v2_0_3
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_3

vmap util_vector_logic_v2_0_3 modelsim_lib/msim/util_vector_logic_v2_0_3
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_3 modelsim_lib/msim/xlslice_v1_0_3

vlog -work util_vector_logic_v2_0_3  -incr -mfcu  \
"../../../../GRUPO6_TP3_COMISION2.1.gen/sources_1/bd/SumadoRestador_bd/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_0_0/sim/SumadoRestador_bd_util_vector_logic_0_0.v" \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_0_1/sim/SumadoRestador_bd_util_vector_logic_0_1.v" \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_2_1/sim/SumadoRestador_bd_util_vector_logic_2_1.v" \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_2_2/sim/SumadoRestador_bd_util_vector_logic_2_2.v" \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_2_3/sim/SumadoRestador_bd_util_vector_logic_2_3.v" \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_2_4/sim/SumadoRestador_bd_util_vector_logic_2_4.v" \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_util_vector_logic_2_5/sim/SumadoRestador_bd_util_vector_logic_2_5.v" \

vlog -work xlslice_v1_0_3  -incr -mfcu  \
"../../../../GRUPO6_TP3_COMISION2.1.gen/sources_1/bd/SumadoRestador_bd/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/SumadoRestador_bd/ip/SumadoRestador_bd_xlslice_0_3/sim/SumadoRestador_bd_xlslice_0_3.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/SumadoRestador_bd/sim/SumadoRestador_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

