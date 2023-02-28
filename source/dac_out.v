module dac_out(
    input wire pwm_clk,
    input wire Reset_n,
    input wire [11:0] din,
    output wire pwm_out
);//模拟信号输出模块

    parameter COUNT_MAX = 12'd4095;

    reg [11:0] count;

    always@(posedge	pwm_clk or negedge Reset_n)
        if(~Reset_n)
            count <= 12'd0;
        else if(count == COUNT_MAX)
            count <= 12'd0;
        else
            count <= count + 1'b1;

    assign pwm_out = (count <= din)?1'b1:1'b0;
//通过OC比较创造合适pwm占空比
endmodule