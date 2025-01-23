// Generated by CIRCT firtool-1.75.0
module TileResetSetter(	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  input         clock,	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  input         reset,	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  input         auto_clock_in_member_allClocks_uncore_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_in_member_allClocks_uncore_reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_clock_out_member_allClocks_uncore_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_clock_out_member_allClocks_uncore_reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_tl_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_tl_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_tl_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_tl_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_tl_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [10:0] auto_tl_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [20:0] auto_tl_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_tl_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_tl_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_tl_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_tl_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_tl_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_tl_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [10:0] auto_tl_in_d_bits_source	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire [2:0] tlNodeIn_d_bits_opcode = {2'h0, auto_tl_in_a_bits_opcode == 3'h4};	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36, :105:19]
  TLMonitor_43 monitor (	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (auto_tl_in_d_ready),
    .io_in_a_valid        (auto_tl_in_a_valid),
    .io_in_a_bits_opcode  (auto_tl_in_a_bits_opcode),
    .io_in_a_bits_param   (auto_tl_in_a_bits_param),
    .io_in_a_bits_size    (auto_tl_in_a_bits_size),
    .io_in_a_bits_source  (auto_tl_in_a_bits_source),
    .io_in_a_bits_address (auto_tl_in_a_bits_address),
    .io_in_a_bits_mask    (auto_tl_in_a_bits_mask),
    .io_in_a_bits_corrupt (auto_tl_in_a_bits_corrupt),
    .io_in_d_ready        (auto_tl_in_d_ready),
    .io_in_d_valid        (auto_tl_in_a_valid),
    .io_in_d_bits_opcode  (tlNodeIn_d_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:105:19]
    .io_in_d_bits_size    (auto_tl_in_a_bits_size),
    .io_in_d_bits_source  (auto_tl_in_a_bits_source)
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
  assign auto_clock_out_member_allClocks_uncore_clock = auto_clock_in_member_allClocks_uncore_clock;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  assign auto_clock_out_member_allClocks_uncore_reset = auto_clock_in_member_allClocks_uncore_reset;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  assign auto_tl_in_a_ready = auto_tl_in_d_ready;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  assign auto_tl_in_d_valid = auto_tl_in_a_valid;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  assign auto_tl_in_d_bits_opcode = tlNodeIn_d_bits_opcode;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:105:19]
  assign auto_tl_in_d_bits_size = auto_tl_in_a_bits_size;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
  assign auto_tl_in_d_bits_source = auto_tl_in_a_bits_source;	// @[generators/chipyard/src/main/scala/clocking/TileResetSetter.scala:26:25]
endmodule

