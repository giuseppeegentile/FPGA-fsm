create_clock -period 100.000 -name i_clk -waveform {0.000 50.000} -add [get_ports -filter { NAME =~  "i_clk" && DIRECTION == "IN" }]
