#Generated by Fabric Compiler ( version 2022.1 <build 99559> ) at Sat Feb 25 13:23:54 2023

add_design "D:/FPGA/Project/I2S/source/i2s_top.v"
add_design "D:/FPGA/Project/I2S/source/dac_out.v"
add_design "D:/FPGA/Project/I2S/source/top.v"
add_design D:/FPGA/Project/I2S/ipcore/dac_pll/dac_pll.idf
add_simulation "D:/FPGA/Project/I2S/source/sim_top.v"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
synthesize -synplify_pro -selected_syn_tool_opt 1 -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
synthesize -synplify_pro -selected_syn_tool_opt 1 -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
synthesize -synplify_pro -selected_syn_tool_opt 1 -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
synthesize -synplify_pro -selected_syn_tool_opt 1 -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
synthesize -synplify_pro -selected_syn_tool_opt 1 -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
synthesize -synplify_pro -selected_syn_tool_opt 1 -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
add_constraint "D:/FPGA/Project/I2S/I2S.fdc"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
report_power 
gen_netlist 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
add_design "D:/FPGA/Project/I2S/source/keyfilter.v"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
remove_constraint  -logic -fdc "E:/A_university_study_E/FPGA/PDS/PDS_project/I2S/I2S.fdc"
add_constraint "E:/A_university_study_E/FPGA/PDS/PDS_project/I2S/source/io_sourese.fdc"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
remove_constraint  -logic -fdc "E:/A_university_study_E/FPGA/PDS/PDS_project/I2S/source/io_sourese.fdc"
add_constraint "E:/A_university_study_E/FPGA/PDS/PDS_project/I2S/source/IO.fdc"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
add_design "E:/A_university_study_E/FPGA/PDS/PDS_project/I2S/source/FIR.v"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
remove_design -verilog "E:/A_university_study_E/FPGA/PDS/PDS_project/I2S/source/FIR.v"
set_arch -family Logos -device PGL22G -speedgrade -6 -package MBG324
compile -top_module top
synthesize -dir {D:/pango/PDS_2022.1/syn/bin/synplify_pro.exe} -ads -selected_syn_tool_opt 2 
dev_map 
pnr 
report_timing 
gen_bit_stream 
report_power 
gen_netlist 
