module i2s_top(
    input clk,//主时钟
    input Reset_n,
    output reg [23:0] L_Data,//左声道数据
    output reg [23:0] R_Data,//右声道数据
    input KEY_stop,//按键引脚
    output State,//按键状态标志位
    output SCK_output,//串行时钟，对应每一位数据   f=声道数*采样频率+采样位数
    output WS_output,//字段选择信号    f=0左声道，f=1右声道
    input SD_input//mems模块的输入串行信号
);


    parameter div_clk = 28; //i2s时钟分频
    parameter div_ws = div_clk * 64; //i2s位选分频

    reg [15:0] sck_cnt;//时钟计数位
    reg [21:0] ws_cnt;//位选计数位
    reg [23:0] shift_reg_l;//左声道寄存器
    reg [23:0] shift_reg_r;//右声道寄存器

    reg State;  //按键中断播放标志位

    assign SCK_output = (sck_cnt > div_clk/2-1) ? 1'b1 : 1'b0;
    assign WS_output = (ws_cnt > div_ws/2-1) ? 1'b1 : 1'b0;
    //SCK与WS中位输出
    always @(posedge clk or negedge Reset_n) begin
        if(~Reset_n) begin
            sck_cnt <= 0;
        end
        else begin
            if(sck_cnt == div_clk-1) begin
                sck_cnt <= 0;
            end
            else begin
                sck_cnt <= sck_cnt + 1;
            end
        end
    end
    // 时钟计数

    always @(posedge clk or negedge Reset_n) begin
        if(~Reset_n) begin
            ws_cnt <= 0;
        end
        else begin
            if(ws_cnt == div_ws-1) begin
                ws_cnt <= 0;
            end
            else begin
                ws_cnt <= ws_cnt + 1;
            end
        end
    end//位选计数

    always @(posedge clk or negedge Reset_n) begin
        if(~Reset_n) begin
            shift_reg_l <= 0;
            shift_reg_r <= 0;
        end
        else begin
            case(ws_cnt)  //在数据比特位时间中点将每一个比特的数据输入寄存器
                div_clk*1+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*2+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*3+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*4+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*5+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*6+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*7+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*8+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*9+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*10+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*11+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*12+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*13+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*14+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*15+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*16+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*17+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*18+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*19+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*20+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*21+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*22+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*23+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                div_clk*24+div_clk/2-1: begin shift_reg_l <= {shift_reg_l[22:0],SD_input}; shift_reg_r <= shift_reg_r; end
                //填装左声道数据
                div_clk*33+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*34+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*35+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*36+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*37+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*38+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*39+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*40+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*41+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*42+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*43+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*44+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*45+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*46+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*47+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*48+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*49+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*50+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*51+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*52+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*53+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*54+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*55+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                div_clk*56+div_clk/2-1: begin shift_reg_l <= shift_reg_l; shift_reg_r <= {shift_reg_r[22:0],SD_input}; end
                //填装24位右声道数据
                default: begin shift_reg_l <= shift_reg_l; shift_reg_r <= shift_reg_r; end
            endcase
        end
    end
       
    key_check key_Relise_posedge(
      .Clk(clk),
      .Reset_n(Reset_n),
      .Key(KEY_stop),
      .Key_R_Flag(Key_R_Flag)
   );
   wire Key_R_Flag; //按键松手检测标志位

   always@(posedge Key_R_Flag)
      State <= ~State;
      //侦测抬手上升沿,将标志位取反

   always @(posedge clk or negedge Reset_n) begin
        if(~Reset_n) begin
            L_Data <= 0;
            R_Data <= 0;
        end

        else begin
            if(State) begin
                if((ws_cnt == div_clk*56+div_clk/2)) 
                //达成位选完成的条件时将左右声道数据输出
                begin 
                    L_Data <= shift_reg_l;
                    R_Data <= shift_reg_r;
                end
                else begin
                    L_Data <= L_Data;
                    R_Data <= R_Data;
                end
            end
            else//非正常条件时置零 
            begin
            L_Data <= 0;
            R_Data <= 0;
            end
                
        end
    end

endmodule
