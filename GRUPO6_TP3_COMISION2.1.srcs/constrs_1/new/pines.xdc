#----------------------------------------
#       ENTRADA SWITCH A
#----------------------------------------

set_property PACKAGE_PIN R2 [get_ports {A[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

set_property PACKAGE_PIN T1 [get_ports {A[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

set_property PACKAGE_PIN U1 [get_ports {A[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

set_property PACKAGE_PIN W2 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

#----------------------------------------
#       ENTRADA SWITCH B
#----------------------------------------

set_property PACKAGE_PIN V17 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]

set_property PACKAGE_PIN V16 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

set_property PACKAGE_PIN W16 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

set_property PACKAGE_PIN W15 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

#----------------------------------------
#       ENTRADA CONTROL
#----------------------------------------

set_property PACKAGE_PIN W19 [get_ports {C1}]
set_property IOSTANDARD LVCMOS33 [get_ports {C1}]
set_property PULLDOWN true [get_ports {C1}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets C2]
set_property PACKAGE_PIN T17 [get_ports {C2}]
set_property IOSTANDARD LVCMOS33 [get_ports {C2}]
set_property PULLDOWN true [get_ports {C2}]

set_property PACKAGE_PIN T18 [get_ports {C3}]
set_property IOSTANDARD LVCMOS33 [get_ports {C3}]
set_property PULLDOWN true [get_ports {C3}]

set_property PACKAGE_PIN U18 [get_ports {C4}]
set_property IOSTANDARD LVCMOS33 [get_ports {C4}]
set_property PULLDOWN true [get_ports {C4}]

#----------------------------------------
#       SALIDAS RESULTADO
#----------------------------------------

set_property PACKAGE_PIN U16 [get_ports {R[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[0]}]

set_property PACKAGE_PIN E19 [get_ports {R[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[1]}]

set_property PACKAGE_PIN U19 [get_ports {R[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[2]}]

set_property PACKAGE_PIN V19 [get_ports {R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[3]}]

#----------------------------------------
#       SALIDAS SUMADOR
#----------------------------------------

set_property PACKAGE_PIN P1 [get_ports {OVF}]
set_property IOSTANDARD LVCMOS33 [get_ports {OVF}]

set_property PACKAGE_PIN L1 [get_ports {CRY}]
set_property IOSTANDARD LVCMOS33 [get_ports {CRY}]