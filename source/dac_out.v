module dac_out(
    input wire pwm_clk,
    input wire Reset_n,
    input wire [11:0] din,
    output wire pwm_out
);//ģ���ź����ģ��

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
//ͨ��OC�Ƚϴ������pwmռ�ձ�
endmodule