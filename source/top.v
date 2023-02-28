module top(
    input clk50M_System,
    input Reset_n,
    input Key,

    output mic_sck,
    output mic_ws,
    input mic_sd,//输入数据串行位

    output LED,//指示是否暂停的指示灯
    output mic_out_l,
    output mic_out_r
);

    wire clk200M;
    wire signed [23:0] mic_data_L;
    wire signed [23:0] mic_data_R;
    wire [11:0] dac_data_L;
    wire [11:0] dac_data_R;
    wire LED;//用于指示是否暂停
    assign dac_data_L = $unsigned((mic_data_L >>> 12) + 2047);
    assign dac_data_R = $unsigned((mic_data_R >>> 12) + 2047);
// 取补码送入dac模块
    dac_pll dac_pll_u (
        .pll_rst(1'b0),      
        .clkin1(clk50M_System),        
        .pll_lock(),    
        .clkout0(clk200M)       
);//分频

    i2s_top i2s_u(
        .clk(clk50M_System),
        .Reset_n(Reset_n),
        .L_Data(mic_data_L[23:0]),
        .R_Data(mic_data_R[23:0]),
        .KEY_stop(Key),
        .State(LED),
        .SCK_output(mic_sck),
        .WS_output(mic_ws),
        .SD_input(mic_sd)
    );//i2s协议

    dac_out dac_u_l(
        .pwm_clk(clk200M),
        .Reset_n(Reset_n),
        .din(dac_data_L),
        .pwm_out(mic_out_l)
    );//dac输出左声道
    dac_out dac_u_r(
        .pwm_clk(clk200M),
        .Reset_n(Reset_n),
        .din(dac_data_R),
        .pwm_out(mic_out_r)
    );//dac输出右声道
endmodule