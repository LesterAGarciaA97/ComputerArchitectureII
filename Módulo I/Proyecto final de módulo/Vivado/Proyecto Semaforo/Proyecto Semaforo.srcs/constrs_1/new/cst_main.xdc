set_property PACKAGE_PIN N17 [get_ports {semaforo[2]}]
set_property PACKAGE_PIN M18 [get_ports {semaforo[1]}]
set_property PACKAGE_PIN K17 [get_ports {semaforo[0]}]

set_property PACKAGE_PIN W5 [get_ports Clock]


set_property IOSTANDARD LVCMOS33 [get_ports {semaforo[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {semaforo[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {semaforo[0]}]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {semaforo_OBUF[2]}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {semaforo_OBUF[1]}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {semaforo_OBUF[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports Clock]