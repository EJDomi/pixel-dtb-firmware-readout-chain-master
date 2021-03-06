onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_probe/avs_ctrl_write
add wave -noupdate -radix decimal /test_probe/avs_ctrl_writedata
add wave -noupdate /test_probe/clk
add wave -noupdate /test_probe/reset
add wave -noupdate /test_probe/select
add wave -noupdate -radix hexadecimal /test_probe/sig_in
add wave -noupdate /test_probe/sig_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {383250 ps}
