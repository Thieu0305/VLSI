// Generated by CIRCT firtool-1.75.0

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module ICache(	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
  input         clock,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
  input         reset,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
  input         auto_master_out_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_master_out_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_master_out_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_master_out_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_master_out_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_master_out_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_master_out_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_master_out_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         io_req_valid,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  input  [31:0] io_req_bits_addr,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  input  [31:0] io_s1_paddr,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  input         io_s1_kill,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  input         io_s2_kill,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  output        io_resp_valid,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  output [31:0] io_resp_bits_data,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  output        io_resp_bits_ae,	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
  input         io_invalidate	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
);

  wire         readEnable;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:567:28, :590:46]
  wire         writeEnable;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:570:32]
  wire         readEnable_0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:567:28, :590:46]
  wire         wen;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:570:32]
  wire         readEnable_1;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:426:83]
  wire [5:0]   _tag_rdata_T;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:426:42]
  wire         io_req_ready;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:394:19]
  wire [31:0]  _rockettile_icache_data_arrays_1_0_RW0_rdata;	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  wire [31:0]  _rockettile_icache_data_arrays_0_0_RW0_rdata;	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  wire [20:0]  _rockettile_icache_tag_array_0_RW0_rdata;	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  wire         s0_valid = io_req_ready & io_req_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:394:19, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  reg          s1_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:341:25]
  reg          s2_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:363:25]
  reg          s2_hit;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:364:23]
  reg          invalidated;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:367:24]
  reg          refill_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:368:29]
  wire         s2_miss = s2_valid & ~s2_hit & ~io_s2_kill;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:363:25, :364:23, :378:{26,29,37,40}]
  reg          s2_request_refill_REG;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:385:45]
  wire         s2_request_refill = s2_miss & s2_request_refill_REG;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:378:{26,37}, :385:{35,45}]
  reg  [31:0]  refill_paddr;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:386:31]
  wire         refill_one_beat = auto_master_out_d_valid & auto_master_out_d_bits_opcode[0];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36]
  assign io_req_ready = ~refill_one_beat;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39, :394:19]
  wire [26:0]  _r_beats1_decode_T = 27'hFFF << auto_master_out_d_bits_size;	// @[generators/rocket-chip/src/main/scala/util/package.scala:243:71]
  wire [8:0]   r_beats1 = auto_master_out_d_bits_opcode[0] ? ~(_r_beats1_decode_T[11:3]) : 9'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:430:58, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36, :221:14, generators/rocket-chip/src/main/scala/util/package.scala:243:{46,71,76}]
  reg  [8:0]   r_counter;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
  wire [8:0]   _r_counter1_T = r_counter - 9'h1;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27, :230:28]
  wire [8:0]   refill_cnt = r_beats1 & ~_r_counter1_T;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :230:28, :234:{25,27}]
  wire         writeEnable_0 = refill_one_beat & (r_counter == 9'h1 | r_beats1 == 9'h0);	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39, :399:37, :430:58, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :232:{25,33,43}, :233:22]
  assign _tag_rdata_T = io_req_bits_addr[11:6];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:426:42]
  assign readEnable_1 = ~writeEnable_0 & s0_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:399:37, :426:{70,83}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:233:22, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  reg          accruedRefillError;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:428:31]
  wire         refillError = auto_master_out_d_bits_corrupt | (|refill_cnt) & accruedRefillError;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:428:31, :430:{43,58,64}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:234:25]
  reg  [63:0]  vb_array;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:448:25]
  wire [63:0]  _s1_vb_T_1 = vb_array >> io_s1_paddr[11:6];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:448:25, :508:25, :859:21]
  wire         s1_hit = _s1_vb_T_1[0] & _rockettile_icache_tag_array_0_RW0_rdata[19:0] == io_s1_paddr[31:12];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:361:40, :493:30, :508:25, :514:{26,33}, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:163:13]
  assign wen = refill_one_beat & ~invalidated;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:367:24, :391:39, :570:{32,35}]
  wire [8:0]   _mem_idx_T_6 = {refill_paddr[11:6], 3'h0};	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:386:31, :574:40, :859:21]
  assign readEnable_0 = ~wen & s0_valid & ~(io_req_bits_addr[2]);	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:564:111, :567:28, :570:32, :590:{41,46}, generators/rocket-chip/src/main/scala/util/package.scala:163:13, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  assign writeEnable = refill_one_beat & ~invalidated;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:367:24, :391:39, :570:{32,35}]
  assign readEnable = ~writeEnable & s0_valid & io_req_bits_addr[2];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:567:28, :570:32, :590:{41,46}, generators/rocket-chip/src/main/scala/util/package.scala:163:13, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  reg  [31:0]  s2_dout_0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:612:26]
  reg          s2_tl_error;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:615:30]
  wire [127:0] _vb_array_T_3 = 128'h1 << refill_paddr[11:6];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:386:31, :452:32, :859:21]
  wire         _s1_can_request_refill_T = s2_miss | refill_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:368:29, :378:{26,37}, :380:41]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
      s1_valid <= 1'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:341:25]
      s2_valid <= 1'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:363:25]
      refill_valid <= 1'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:368:29]
      r_counter <= 9'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:430:58, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
      vb_array <= 64'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:448:25]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
      s1_valid <= s0_valid;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:341:25, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      s2_valid <= s1_valid & ~io_s1_kill;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:341:25, :363:{25,35,38}]
      refill_valid <= ~writeEnable_0 & (auto_master_out_a_ready & s2_request_refill | refill_valid);	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:368:29, :385:35, :399:37, :830:{22,37}, :831:{22,37}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:233:22, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      if (auto_master_out_d_valid)	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
        r_counter <= r_counter == 9'h0 ? r_beats1 : _r_counter1_T;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:430:58, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :230:28, :231:25, :236:21]
      if (io_invalidate)	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:256:14]
        vb_array <= 64'h0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:448:25]
      else if (refill_one_beat)	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39]
        vb_array <= writeEnable_0 & ~invalidated ? vb_array | _vb_array_T_3[63:0] : ~(~vb_array | _vb_array_T_3[63:0]);	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:367:24, :399:37, :448:25, :452:{32,72,75}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:233:22]
    end
    s2_hit <= s1_hit;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:361:40, :364:23]
    invalidated <= refill_valid & (io_invalidate | invalidated);	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:367:24, :368:29, :457:21, :459:17, :829:{24,38}]
    s2_request_refill_REG <= ~_s1_can_request_refill_T;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:380:{31,41}, :385:45]
    if (s1_valid & ~_s1_can_request_refill_T)	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:341:25, :380:{31,41}, :386:54]
      refill_paddr <= io_s1_paddr;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:386:31]
    if (refill_one_beat)	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39]
      accruedRefillError <= refillError;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:428:31, :430:43]
    if (s1_valid) begin	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:341:25]
      s2_dout_0 <= io_s1_paddr[2] ? _rockettile_icache_data_arrays_1_0_RW0_rdata : _rockettile_icache_data_arrays_0_0_RW0_rdata;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:592:71, :593:15, :612:26, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:163:13]
      s2_tl_error <= s1_hit & _rockettile_icache_tag_array_0_RW0_rdata[20];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:361:40, :518:32, :615:30, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:163:13]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:8];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
        for (logic [3:0] i = 4'h0; i < 4'h9; i += 4'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
        end	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
        s1_valid = _RANDOM[4'h0][4];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :341:25]
        s2_valid = _RANDOM[4'h1][5];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25]
        s2_hit = _RANDOM[4'h1][6];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25, :364:23]
        invalidated = _RANDOM[4'h1][7];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25, :367:24]
        refill_valid = _RANDOM[4'h1][8];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25, :368:29]
        s2_request_refill_REG = _RANDOM[4'h1][11];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25, :385:45]
        refill_paddr = {_RANDOM[4'h1][31:12], _RANDOM[4'h2][11:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25, :386:31]
        r_counter = _RANDOM[4'h3][20:12];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
        accruedRefillError = _RANDOM[4'h3][21];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :428:31, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
        vb_array = {_RANDOM[4'h3][31:22], _RANDOM[4'h4], _RANDOM[4'h5][21:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :448:25, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
        s2_dout_0 = {_RANDOM[4'h7][31:3], _RANDOM[4'h8][2:0]};	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :612:26]
        s2_tl_error = _RANDOM[4'h8][4];	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :612:26, :615:30]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  rockettile_icache_tag_array_0 rockettile_icache_tag_array_0 (	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_addr  (writeEnable_0 ? refill_paddr[11:6] : _tag_rdata_T),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:386:31, :399:37, :426:42, :859:21, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:233:22, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_en    (readEnable_1 | writeEnable_0),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:399:37, :426:83, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:233:22, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_clk   (clock),
    .RW0_wmode (refill_one_beat),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39]
    .RW0_wdata ({refillError, refill_paddr[31:12]}),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:386:31, :388:33, :430:43, :435:34]
    .RW0_rdata (_rockettile_icache_tag_array_0_RW0_rdata)
  );	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  rockettile_icache_data_arrays_0_0 rockettile_icache_data_arrays_0_0 (	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_addr  (refill_one_beat ? _mem_idx_T_6 | refill_cnt : io_req_bits_addr[11:3]),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39, :565:31, :574:{10,40,67}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:234:25]
    .RW0_en    (readEnable_0 | wen),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:567:28, :570:32, :590:46, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_clk   (clock),
    .RW0_wmode (refill_one_beat),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39]
    .RW0_wdata (auto_master_out_d_bits_data[31:0]),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:583:71]
    .RW0_rdata (_rockettile_icache_data_arrays_0_0_RW0_rdata)
  );	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  rockettile_icache_data_arrays_1_0 rockettile_icache_data_arrays_1_0 (	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_addr  (refill_one_beat ? _mem_idx_T_6 | refill_cnt : io_req_bits_addr[11:3]),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39, :565:31, :574:{10,40,67}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:234:25]
    .RW0_en    (readEnable | writeEnable),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:567:28, :570:32, :590:46, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_clk   (clock),
    .RW0_wmode (refill_one_beat),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:391:39]
    .RW0_wdata (auto_master_out_d_bits_data[63:32]),	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:583:71]
    .RW0_rdata (_rockettile_icache_data_arrays_1_0_RW0_rdata)
  );	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  assign auto_master_out_a_valid = s2_request_refill;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :385:35]
  assign auto_master_out_a_bits_address = {refill_paddr[31:6], 6'h0};	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :386:31, :442:40, :769:64]
  assign io_resp_valid = s2_valid & s2_hit;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :363:25, :364:23, :659:33]
  assign io_resp_bits_data = s2_dout_0;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :612:26]
  assign io_resp_bits_ae = s2_tl_error;	// @[generators/rocket-chip/src/main/scala/rocket/ICache.scala:251:7, :615:30]
endmodule

