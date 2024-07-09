`resetall
`timescale 1ns / 1ps
`default_nettype none
/*compile command:"`resetall" command reset all compilation instructions to default values
;"`default_nettype none":when this command is executed, variables will no longer be set to wire type by default, but require explicit declaration */

/*AXI4 width adapter*/
module my_axi_adapter_rd #
(
    parameter ADDR_WIDTH = 32,
    parameter S_DATA_WIDTH = 32,
    parameter S_STRB_WIDTH = (S_DATA_WIDTH/8),
    parameter M_DATA_WIDTH = 32,
    parameter M_STRB_WIDTH = (M_DATA_WIDTH/8),
    parameter ID_WIDTH = 8,
    parameter ARUSER_ENABLE = 0,
    parameter ARUSER_WIDTH = 1,
    parameter RUSER_ENABLE = 0,
    parameter RUSER_WIDTH = 1,
    parameter CONVERT_BURST = 1,
    parameter CONVERT_NARROW_BURST = 0,
    parameter FORWARD_ID = 0
)
(
    input  wire                     clk,
    input  wire                     rst,
    /*
     * AXI slave interface
     */
     input  wire [ID_WIDTH-1:0]      s_axi_arid,
     input  wire [ADDR_WIDTH-1:0]    s_axi_araddr,
     input  wire [7:0]               s_axi_arlen,
     input  wire [2:0]               s_axi_arsize,
     input  wire [1:0]               s_axi_arburst,
     input  wire                     s_axi_arlock,
     input  wire [3:0]               s_axi_arcache,
     input  wire [2:0]               s_axi_arprot,
     input  wire [3:0]               s_axi_arqos,
     input  wire [3:0]               s_axi_arregion,
     input  wire [ARUSER_WIDTH-1:0]  s_axi_aruser,
     input  wire                     s_axi_arvalid,
     output wire                     s_axi_arready,
     output wire [ID_WIDTH-1:0]      s_axi_rid,
     output wire [S_DATA_WIDTH-1:0]  s_axi_rdata,
     output wire [1:0]               s_axi_rresp,
     output wire                     s_axi_rlast,
     output wire [RUSER_WIDTH-1:0]   s_axi_ruser,
     output wire                     s_axi_rvalid,
     input  wire                     s_axi_rready,
     /*
     * AXI master interface
     */
     output wire [ID_WIDTH-1:0]      m_axi_arid,
     output wire [ADDR_WIDTH-1:0]    m_axi_araddr,
     output wire [7:0]               m_axi_arlen,
     output wire [2:0]               m_axi_arsize,
     output wire [1:0]               m_axi_arburst,
     output wire                     m_axi_arlock,
     output wire [3:0]               m_axi_arcache,
     output wire [2:0]               m_axi_arprot,
     output wire [3:0]               m_axi_arqos,
     output wire [3:0]               m_axi_arregion,
     output wire [ARUSER_WIDTH-1:0]  m_axi_aruser,
     output wire                     m_axi_arvalid,
     input  wire                     m_axi_arready,
     input  wire [ID_WIDTH-1:0]      m_axi_rid,
     input  wire [M_DATA_WIDTH-1:0]  m_axi_rdata,
     input  wire [1:0]               m_axi_rresp,
     input  wire                     m_axi_rlast,
     input  wire [RUSER_WIDTH-1:0]   m_axi_ruser,
     input  wire                     m_axi_rvalid,
     output wire                     m_axi_rready     
);
parameter S_ADDR_BIT_OFFSET = $clog2(S_STRB_WIDTH);
parameter M_ADDR_BIT_OFFSET = $clog2(M_STRB_WIDTH);
parameter S_WORD_WIDTH = S_STRB_WIDTH;
parameter M_WORD_WIDTH = M_STRB_WIDTH;
parameter S_WORD_SIZE = S_DATA_WIDTH/S_WORD_WIDTH;
parameter M_WORD_SIZE = M_DATA_WIDTH/M_WORD_WIDTH;
parameter S_BURST_SIZE = $clog2(S_STRB_WIDTH);
parameter M_BURST_SIZE = $clog2(M_STRB_WIDTH);