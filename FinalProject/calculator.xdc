## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]                         
    set_property IOSTANDARD LVCMOS33 [get_ports clk]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {select}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {select}]
 set_property PACKAGE_PIN V16 [get_ports {select_memory}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {select_memory}]
set_property PACKAGE_PIN W16 [get_ports {selectsev}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {selectsev}]
    
## LEDs
set_property PACKAGE_PIN U16 [get_ports {overflow}]                 
    set_property IOSTANDARD LVCMOS33 [get_ports {overflow}]
# set_property PACKAGE_PIN E19 [get_ports {led[0]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
# set_property PACKAGE_PIN U19 [get_ports {led[1]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
# set_property PACKAGE_PIN V19 [get_ports {led[2]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
# set_property PACKAGE_PIN W18 [get_ports {led[3]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
# set_property PACKAGE_PIN U15 [get_ports {led[4]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
# set_property PACKAGE_PIN U14 [get_ports {led[5]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
# set_property PACKAGE_PIN V14 [get_ports {led[6]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
# set_property PACKAGE_PIN V13 [get_ports {led[0]}]                 
#   set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
 set_property PACKAGE_PIN V3 [get_ports {led[1]}]                  
   set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
 set_property PACKAGE_PIN W3 [get_ports {led[2]}]                  
   set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
 set_property PACKAGE_PIN U3 [get_ports {led[3]}]                 
   set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
 set_property PACKAGE_PIN P3 [get_ports {led[4]}]                 
   set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
 set_property PACKAGE_PIN N3 [get_ports {led[5]}]                 
   set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
 set_property PACKAGE_PIN P1 [get_ports {led[6]}]                 
   set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property PACKAGE_PIN L1 [get_ports {led[0]}]                 
  set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
    
    
##7 segment display
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]


set_property PACKAGE_PIN U2 [get_ports {an[0]}]                 
    set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]                 
    set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]                 
    set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]                 
    set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


##Buttons
set_property PACKAGE_PIN U18 [get_ports rst]                        
    set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN T18 [get_ports up]                     
    set_property IOSTANDARD LVCMOS33 [get_ports up]
set_property PACKAGE_PIN W19 [get_ports load_btn]                       
    set_property IOSTANDARD LVCMOS33 [get_ports load_btn]
set_property PACKAGE_PIN T17 [get_ports save_btn]                       
    set_property IOSTANDARD LVCMOS33 [get_ports save_btn]
set_property PACKAGE_PIN U17 [get_ports dn]                     
    set_property IOSTANDARD LVCMOS33 [get_ports dn]
 

##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {col[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {col[3]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {col[2]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {col[2]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {col[1]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {col[1]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {col[0]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {col[0]}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {row[3]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {row[2]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {row[1]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}]
##Sch name = JB10
set_property PACKAGE_PIN C16 [get_ports {row[0]}]                   
    set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}]