`include "cpu_defines.svh"

module id_type(
    input   Inst_t      inst,

    output  Oper_t      oper,
    output  Bit_t       reg1_read,
    output  Bit_t       reg2_read,
    output  Reg_addr_t  reg1_addr,
    output  Reg_addr_t  reg2_addr,
    output  Bit_t       wreg_write,
    output  Reg_addr_t  wreg_addr,
    output  Word_t      immediate
);

Opcode_t        opcode;
Reg_addr_t      rs;
Reg_addr_t      rt;
Reg_addr_t      rd;
Sa_t            sa;
Opcode_t        func;
Addr_in_inst_t  addr;
Halfword_t      imm;

assign opcode = inst[31:26];
assign rs     = inst[25:21];
assign rt     = inst[20:16];
assign rd     = inst[15:11];
assign sa     = inst[10:6];
assign func   = inst[5:0];
assign addr   = inst[25:0];
assign imm    = inst[15:0];


always_comb begin
    case (opcode)
        `OPCODE_SPEC : begin
            case (func)
                `SEPC_OPCODE_AND  : oper <= OP_AND  ;
                `SEPC_OPCODE_OR   : oper <= OP_OR   ;
                `SEPC_OPCODE_XOR  : oper <= OP_XOR  ;
                `SEPC_OPCODE_NOR  : oper <= OP_NOR  ;
                `SEPC_OPCODE_SLL  : oper <= OP_SLL  ;
                `SEPC_OPCODE_SRL  : oper <= OP_SRL  ;
                `SEPC_OPCODE_SRA  : oper <= OP_SRA  ;
                `SEPC_OPCODE_SLLV : oper <= OP_SLLV ;
                `SEPC_OPCODE_SRLV : oper <= OP_SRLV ;
                `SEPC_OPCODE_SRAV : oper <= OP_SRAV ;
                `SEPC_OPCODE_MOVN : oper <= OP_MOVN ;
                `SEPC_OPCODE_MOVZ : oper <= OP_MOVZ ;
                `SEPC_OPCODE_MFHI : oper <= OP_MFHI ;
                `SEPC_OPCODE_MFLO : oper <= OP_MFLO ;
                `SEPC_OPCODE_MTHI : oper <= OP_MTHI ;
                `SEPC_OPCODE_MTLO : oper <= OP_MTLO ;
                `SEPC_OPCODE_ADD  : oper <= OP_ADD  ;
                `SEPC_OPCODE_ADDU : oper <= OP_ADDU ;
                `SEPC_OPCODE_SUB  : oper <= OP_SUB  ;
                `SEPC_OPCODE_SUBU : oper <= OP_SUBU ;
                `SEPC_OPCODE_SLT  : oper <= OP_SLT  ;
                `SEPC_OPCODE_SLTU : oper <= OP_SLTU ;
                `SEPC_OPCODE_MULT : oper <= OP_MULT ;
                `SEPC_OPCODE_MULTU: oper <= OP_MULTU;
                default: oper <= OP_NOP;
            endcase
        end
        `OPCODE_SPEC2 : begin
            case(func)
                `SPEC2_OPCODE_CLZ : oper <= OP_CLZ;
                `SPEC2_OPCODE_CLO : oper <= OP_CLO;
                `SPEC2_OPCODE_MUL : oper <= OP_MUL;
                default: oper <= OP_NOP;
            endcase
        end
        `OPCODE_ANDI : oper <= OP_ANDI ;
        `OPCODE_ORI  : oper <= OP_ORI  ;
        `OPCODE_XORI : oper <= OP_XORI ;
        `OPCODE_LUI  : oper <= OP_LUI  ;
        `OPCODE_ANDI : oper <= OP_ANDI ;
        `OPCODE_ADDI : oper <= OP_ADDI ;  
        `OPCODE_ADDIU: oper <= OP_ADDIU;  
        `OPCODE_SLTI : oper <= OP_SLTI ;  
        `OPCODE_SLTIU: oper <= OP_SLTIU;  
        default: oper <= OP_NOP;
    endcase
end

always_comb begin
    case (oper)
        `OPER_TYPE_I_U : begin
            wreg_write <= `ENABLE;
            wreg_addr  <= rt;
            reg1_read  <= `ENABLE;
            reg2_read  <= `DISABLE;
            reg1_addr  <= rs;
            reg2_addr  <= `ZERO_WORD;
            immediate  <= {`ZERO_HWORD, imm}; 
        end
        `OPER_TYPE_I_S : begin
            wreg_write <= `ENABLE;
            wreg_addr  <= rt;
            reg1_read  <= `ENABLE;
            reg2_read  <= `DISABLE;
            reg1_addr  <= rs;
            reg2_addr  <= `ZERO_WORD;
            immediate  <= {{16{imm[15]}}, imm}; 
        end
        //OPER_TYPE_J :
        `OPER_TYPE_R_0 : begin
            wreg_write <= `ENABLE;
            wreg_addr  <= rd;
            reg1_read  <= `ENABLE;
            reg2_read  <= `ENABLE;
            reg1_addr  <= rs;
            reg2_addr  <= rt;
            immediate  <= `ZERO_WORD;
        end
        `OPER_TYPE_R_1 : begin
            wreg_write <= `ENABLE;
            wreg_addr  <= rd;
            reg1_read  <= `DISABLE;
            reg2_read  <= `ENABLE;
            reg1_addr  <= `ZERO_WORD;
            reg2_addr  <= rt;
            immediate  <= {27'b0, sa};
        end
        default : begin end
    endcase
end







    
endmodule