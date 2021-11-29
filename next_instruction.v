module next_instruction(
    input logic[31:0] r_s,
    input logic[31:0] r_t,
    input logic[15:0] I_intermidiete,
    input logic[25:0] J_intermidiete,
    output logic[31:0] PC_out,
    input logic STALL,
    output logic link,
    output logic state,
    input logic clk,
    input logic rst,
    input logic J,
    input logic JAL,
    input logic JR,
    input logic JALR,
    input logic BEQ,
    input logic BGEZ,
    input logic BGEZAL,
    input logic BGTZ,
    input logic BLEZ,
    input logic BLTZ,
    input logic BLTZAL,
    input logic BNE
);
logic jump;
logic[31:0] jump_amount;
assign PC_out = PC + 4;
reg[31:0] PC;

initial begin 
    PC = 0;
    state = 0;
end
always_comb begin
    if(J == 1) begin
        jump_amount = {6'b0, J_intermidiete}*4;
        jump = 1;
    end
    else if(JAL == 1) begin
        jump_amount = {6'b0, J_intermidiete}*4;
        jump = 1;
        link = 1;
    end
    else if(JR == 1)begin
        jump_amount = r_s * 4;
        jump = 1;
        
    end
    else if(JALR == 1)begin
        jump_amount = r_s * 4;
        jump = 1;
        link = 1;
    end
    else if(BEQ == 1 && r_s == r_t)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
    end
    else if(BGEZ == 1 && r_s >= 0)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
    end
    else if(BGEZAL == 1 && r_s >= 0)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
        link = 1;
    end
    else if(BGTZ == 1 && r_s > 0)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
    end
    else if(BLEZ == 1 && r_s <= 0)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
    end
    else if(BLTZ == 1 && r_s < 0)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
    end
    else if(BLTZAL == 1 && r_s < 0)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
        link = 1;
    end
    else if(BNE == 1 && r_s != r_t)begin
        jump_amount = {16'h0000, I_intermidiete} * 4;
        jump =1;
    end
    else begin
        jump_amount = 0;
        jump = 0;
        link = 0;
    end
 
end
always_ff @(posedge clk) begin
    if(state == 1)begin
        if(jump == 0)begin
            PC <= PC + 4;
        end
        else begin
            PC <= PC + 4 + jump_amount ;
        end
    end
    if(STALL == 0) state <= !state;
    else state <= 0;
end
endmodule