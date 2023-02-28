module key_check(
    Clk,
    Reset_n,
    Key,
    Key_R_Flag
    );
    
    input Clk;
    input Reset_n;
    input Key;
    output reg Key_R_Flag;
    
    reg Key_R_Flag;
        
    reg [1:0]sync_Key;
    always@(posedge Clk)
        sync_Key <= {sync_Key[0],Key};
        
    reg [1:0]r_Key;
    always@(posedge Clk)
        r_Key <= {r_Key[0],sync_Key[1]};    
    
    wire pedge_key;
    assign pedge_key = r_Key == 2'b01;
    wire nedge_key;
    assign nedge_key = r_Key == 2'b10;
    
    reg [19:0]cnt;

    reg [1:0]state;
    always@(posedge Clk or negedge Reset_n)
    if(!Reset_n)begin
        state <= 0;
        Key_R_Flag <= 1'b0;
        cnt <= 0;
    end
    else begin
        case(state)
            0:
                begin
                    Key_R_Flag <= 1'b0;
                if(nedge_key)
                    state <= 1;
                else
                    state <= 0;
                end
            1:
                if((pedge_key) && (cnt < 1000000 - 1))begin
                    state <= 1;
                    cnt <= 0;
                end
                else if(cnt >= 1000000 - 1)begin
                    state <= 2;
                    cnt <= 0;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    state <= 1;
                end
            2:
                begin
                if(pedge_key)
                    state <= 3;
                else
                    state <= 2;
                end
            3:
                if((nedge_key) && (cnt < 1000000 - 1))begin
                    state <= 2;
                    cnt <= 0;
                end
                else if(cnt >= 1000000 - 1)begin
                    state <= 0;
                    cnt <= 0;
                    Key_R_Flag <= 1'b1;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    state <= 3;
                end
        endcase
    end//状态机
/*
状态0:正常状态
状态1:检测按下,消除按下抖动
状态2:按下状态保持
状态3:检测释放,消除释放抖动
*/
    
    
endmodule
