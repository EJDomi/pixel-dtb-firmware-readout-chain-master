# TCL File Generated by Component Editor 11.1
# Tue Jun 19 08:36:35 CEST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | adv3224 "adv3224" v1.0
# | Silvan Melchior 2012.06.19.08:36:35
# | Communicate with adv3224
# | 
# | C:/FPGA_DTB/first_nios/ip/adv3224/adv3224.v
# | 
# |    ./adv3224.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module adv3224
# | 
set_module_property DESCRIPTION "Communicate with adv3224"
set_module_property NAME adv3224
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP DTB
set_module_property AUTHOR "Silvan Melchior"
set_module_property DISPLAY_NAME adv3224
set_module_property TOP_LEVEL_HDL_FILE adv3224.v
set_module_property TOP_LEVEL_HDL_MODULE adv3224
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME adv3224
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file adv3224.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter divider INTEGER 50 "Should be even"
set_parameter_property divider DEFAULT_VALUE 50
set_parameter_property divider DISPLAY_NAME divider
set_parameter_property divider TYPE INTEGER
set_parameter_property divider UNITS None
set_parameter_property divider ALLOWED_RANGES -2147483648:2147483647
set_parameter_property divider DESCRIPTION "Should be even"
set_parameter_property divider AFFECTS_GENERATION false
set_parameter_property divider HDL_PARAMETER true
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point slave
# | 
add_interface slave avalon end
set_interface_property slave addressUnits WORDS
set_interface_property slave associatedClock clock
set_interface_property slave associatedReset reset
set_interface_property slave bitsPerSymbol 8
set_interface_property slave burstOnBurstBoundariesOnly false
set_interface_property slave burstcountUnits WORDS
set_interface_property slave explicitAddressSpan 0
set_interface_property slave holdTime 0
set_interface_property slave linewrapBursts false
set_interface_property slave maximumPendingReadTransactions 0
set_interface_property slave readLatency 0
set_interface_property slave readWaitTime 1
set_interface_property slave setupTime 0
set_interface_property slave timingUnits Cycles
set_interface_property slave writeWaitTime 0

set_interface_property slave ENABLED true

add_interface_port slave avs_slave_write write Input 1
add_interface_port slave avs_slave_read read Input 1
add_interface_port slave avs_slave_writedata writedata Input 8
add_interface_port slave avs_slave_readdata readdata Output 8
add_interface_port slave avs_slave_address address Input 3
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point adv3224
# | 
add_interface adv3224 conduit end

set_interface_property adv3224 ENABLED true

add_interface_port adv3224 cps_reset_n export Output 1
add_interface_port adv3224 cps_ce_n export Output 1
add_interface_port adv3224 cps_update_n export Output 1
add_interface_port adv3224 cps_clk export Output 1
add_interface_port adv3224 cps_datain export Output 1
# | 
# +-----------------------------------
