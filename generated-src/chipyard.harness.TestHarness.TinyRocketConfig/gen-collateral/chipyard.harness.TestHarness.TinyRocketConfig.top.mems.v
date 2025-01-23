module rockettile_dcache_data_arrays_0_ext(
  input  [10:0] RW0_addr,
  input         RW0_clk,
  input  [31:0] RW0_wdata,
  output [31:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input  [3:0]  RW0_wmask
);
  wire [10:0] mem_0_0_A;
  wire  mem_0_0_CE;
  wire [7:0] mem_0_0_I;
  wire [7:0] mem_0_0_O;
  wire  mem_0_0_CSB;
  wire  mem_0_0_OEB;
  wire  mem_0_0_WEB;
  wire [10:0] mem_0_1_A;
  wire  mem_0_1_CE;
  wire [7:0] mem_0_1_I;
  wire [7:0] mem_0_1_O;
  wire  mem_0_1_CSB;
  wire  mem_0_1_OEB;
  wire  mem_0_1_WEB;
  wire [10:0] mem_0_2_A;
  wire  mem_0_2_CE;
  wire [7:0] mem_0_2_I;
  wire [7:0] mem_0_2_O;
  wire  mem_0_2_CSB;
  wire  mem_0_2_OEB;
  wire  mem_0_2_WEB;
  wire [10:0] mem_0_3_A;
  wire  mem_0_3_CE;
  wire [7:0] mem_0_3_I;
  wire [7:0] mem_0_3_O;
  wire  mem_0_3_CSB;
  wire  mem_0_3_OEB;
  wire  mem_0_3_WEB;
  wire [7:0] RW0_rdata_0_0 = mem_0_0_O;
  wire [7:0] RW0_rdata_0_1 = mem_0_1_O;
  wire [7:0] RW0_rdata_0_2 = mem_0_2_O;
  wire [7:0] RW0_rdata_0_3 = mem_0_3_O;
  wire [23:0] _GEN_1 = {RW0_rdata_0_2,RW0_rdata_0_1,RW0_rdata_0_0};
  SRAM1RW2048x8 mem_0_0 (
    .A(mem_0_0_A),
    .CE(mem_0_0_CE),
    .I(mem_0_0_I),
    .O(mem_0_0_O),
    .CSB(mem_0_0_CSB),
    .OEB(mem_0_0_OEB),
    .WEB(mem_0_0_WEB)
  );
  SRAM1RW2048x8 mem_0_1 (
    .A(mem_0_1_A),
    .CE(mem_0_1_CE),
    .I(mem_0_1_I),
    .O(mem_0_1_O),
    .CSB(mem_0_1_CSB),
    .OEB(mem_0_1_OEB),
    .WEB(mem_0_1_WEB)
  );
  SRAM1RW2048x8 mem_0_2 (
    .A(mem_0_2_A),
    .CE(mem_0_2_CE),
    .I(mem_0_2_I),
    .O(mem_0_2_O),
    .CSB(mem_0_2_CSB),
    .OEB(mem_0_2_OEB),
    .WEB(mem_0_2_WEB)
  );
  SRAM1RW2048x8 mem_0_3 (
    .A(mem_0_3_A),
    .CE(mem_0_3_CE),
    .I(mem_0_3_I),
    .O(mem_0_3_O),
    .CSB(mem_0_3_CSB),
    .OEB(mem_0_3_OEB),
    .WEB(mem_0_3_WEB)
  );
  assign RW0_rdata = {RW0_rdata_0_3,_GEN_1};
  assign mem_0_0_A = RW0_addr;
  assign mem_0_0_CE = RW0_clk;
  assign mem_0_0_I = RW0_wdata[7:0];
  assign mem_0_0_CSB = ~RW0_en;
  assign mem_0_0_OEB = ~(~RW0_wmode & RW0_en);
  assign mem_0_0_WEB = ~(RW0_wmode & RW0_wmask[0]);
  assign mem_0_1_A = RW0_addr;
  assign mem_0_1_CE = RW0_clk;
  assign mem_0_1_I = RW0_wdata[15:8];
  assign mem_0_1_CSB = ~RW0_en;
  assign mem_0_1_OEB = ~(~RW0_wmode & RW0_en);
  assign mem_0_1_WEB = ~(RW0_wmode & RW0_wmask[1]);
  assign mem_0_2_A = RW0_addr;
  assign mem_0_2_CE = RW0_clk;
  assign mem_0_2_I = RW0_wdata[23:16];
  assign mem_0_2_CSB = ~RW0_en;
  assign mem_0_2_OEB = ~(~RW0_wmode & RW0_en);
  assign mem_0_2_WEB = ~(RW0_wmode & RW0_wmask[2]);
  assign mem_0_3_A = RW0_addr;
  assign mem_0_3_CE = RW0_clk;
  assign mem_0_3_I = RW0_wdata[31:24];
  assign mem_0_3_CSB = ~RW0_en;
  assign mem_0_3_OEB = ~(~RW0_wmode & RW0_en);
  assign mem_0_3_WEB = ~(RW0_wmode & RW0_wmask[3]);
endmodule


module rockettile_icache_tag_array_0_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [20:0] RW0_wdata,
  output [20:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [5:0] mem_0_0_A;
  wire  mem_0_0_CE;
  wire [20:0] mem_0_0_I;
  wire [20:0] mem_0_0_O;
  wire  mem_0_0_CSB;
  wire  mem_0_0_OEB;
  wire  mem_0_0_WEB;
  SRAM1RW64x21 mem_0_0 (
    .A(mem_0_0_A),
    .CE(mem_0_0_CE),
    .I(mem_0_0_I),
    .O(mem_0_0_O),
    .CSB(mem_0_0_CSB),
    .OEB(mem_0_0_OEB),
    .WEB(mem_0_0_WEB)
  );
  assign RW0_rdata = mem_0_0_O;
  assign mem_0_0_A = RW0_addr;
  assign mem_0_0_CE = RW0_clk;
  assign mem_0_0_I = RW0_wdata;
  assign mem_0_0_CSB = ~RW0_en;
  assign mem_0_0_OEB = ~(~RW0_wmode & RW0_en);
  assign mem_0_0_WEB = ~RW0_wmode;
endmodule


module rockettile_icache_data_arrays_0_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [31:0] RW0_wdata,
  output [31:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [8:0] mem_0_0_A;
  wire  mem_0_0_CE;
  wire [31:0] mem_0_0_I;
  wire [31:0] mem_0_0_O;
  wire  mem_0_0_CSB;
  wire  mem_0_0_OEB;
  wire  mem_0_0_WEB;
  SRAM1RW512x32 mem_0_0 (
    .A(mem_0_0_A),
    .CE(mem_0_0_CE),
    .I(mem_0_0_I),
    .O(mem_0_0_O),
    .CSB(mem_0_0_CSB),
    .OEB(mem_0_0_OEB),
    .WEB(mem_0_0_WEB)
  );
  assign RW0_rdata = mem_0_0_O;
  assign mem_0_0_A = RW0_addr;
  assign mem_0_0_CE = RW0_clk;
  assign mem_0_0_I = RW0_wdata;
  assign mem_0_0_CSB = ~RW0_en;
  assign mem_0_0_OEB = ~(~RW0_wmode & RW0_en);
  assign mem_0_0_WEB = ~RW0_wmode;
endmodule

