`ifndef DEFINES_SVH
`define DEFINES_SVH


//project configuration
`default_nettype wire
`timescale 1ns / 1ps

//Global define
`define ENABLE 1'b1
`define DISABLE 1'b0

//data format
typedef logic       Bit_t;
typedef logic[7:0]  Byte_t;
typedef logic[15:0] Halfword_t;
typedef logic[31:0] Word_t;
typedef logic[63:0] Doubleword_t;

`define ZERO_BIT    1'b0
`define ZERO_BYTE   8'h0
`define ZERO_HWORD  16'h0
`define ZERO_WORD   32'h0
`define ZERO_DWORD  64'h0

//instruction
`define INST_WIDTH          32
`define INST_BUS            `INST_WIDTH - 1:0
typedef logic[`INST_BUS]    Inst_t;

`define INST_ADDR_WIDTH         32
`define INST_ADDR_BUS           `INST_ADDR_WIDTH - 1:0
typedef logic[`INST_ADDR_BUS]   Inst_addr_t;

`define INST_BYTE_NUM  4



`endif