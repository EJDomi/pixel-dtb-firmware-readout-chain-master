#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: C:\Users\Erich\Google_Drive\Documents\ReadoutChain\pixel-dtb-firmware-readout-chain-master\dtb\dtb.sof to: "..\flash/dtb_epcs_controller.flash"
#
sof2flash --input="C:/Users/Erich/Google_Drive/Documents/ReadoutChain/pixel-dtb-firmware-readout-chain-master/dtb/dtb.sof" --output="../flash/dtb_epcs_controller.flash" --epcs 

#
# Programming File: "..\flash/dtb_epcs_controller.flash" To Device: epcs_controller
#
nios2-flash-programmer "../flash/dtb_epcs_controller.flash" --base=0x8000000 --epcs --sidp=0x8001000 --id=0x1 --accept-bad-sysid --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

#
# Converting ELF File: C:\Users\Erich\Google_Drive\Documents\ReadoutChain\pixel-dtb-firmware-readout-chain-master\software\dtb_expert\dtb_expert.elf to: "..\flash/dtb_expert_epcs_controller.flash"
#
elf2flash --input="C:/Users/Erich/Google_Drive/Documents/ReadoutChain/pixel-dtb-firmware-readout-chain-master/software/dtb_expert/dtb_expert.elf" --output="../flash/dtb_expert_epcs_controller.flash" --epcs --after="../flash/dtb_epcs_controller.flash" 

#
# Programming File: "..\flash/dtb_expert_epcs_controller.flash" To Device: epcs_controller
#
nios2-flash-programmer "../flash/dtb_expert_epcs_controller.flash" --base=0x8000000 --epcs --sidp=0x8001000 --id=0x1 --accept-bad-sysid --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program 

