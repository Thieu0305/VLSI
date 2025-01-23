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
module Queue1_TLBundleD_a64d64s8k8z8c(	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
  input         clock,	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
  input         reset,	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
  output        io_enq_ready,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_valid,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [2:0]  io_enq_bits_opcode,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [1:0]  io_enq_bits_param,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [7:0]  io_enq_bits_size,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [7:0]  io_enq_bits_source,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [7:0]  io_enq_bits_sink,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_bits_denied,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [63:0] io_enq_bits_data,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_bits_corrupt,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_deq_ready,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output        io_deq_valid,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [2:0]  io_deq_bits_opcode,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [1:0]  io_deq_bits_param,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [7:0]  io_deq_bits_size,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [7:0]  io_deq_bits_source,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [7:0]  io_deq_bits_sink,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output        io_deq_bits_denied,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [63:0] io_deq_bits_data,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output        io_deq_bits_corrupt	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
);

  wire        io_enq_ready_0;	// @[src/main/scala/chisel3/util/Decoupled.scala:286:16, :306:{24,39}]
  reg  [94:0] ram;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  reg         full;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27]
  wire        io_deq_valid_0 = io_enq_valid | full;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27, :285:16, :297:{24,39}]
  wire        do_enq = ~(~full & io_deq_ready) & io_enq_ready_0 & io_enq_valid;	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :261:28, :263:27, :286:16, :298:17, :301:{26,35}, :306:{24,39}]
  assign io_enq_ready_0 = io_deq_ready | ~full;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27, :286:{16,19}, :306:{24,39}]
  always @(posedge clock) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    if (do_enq)	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :263:27, :298:17, :301:{26,35}]
      ram <= {io_enq_bits_corrupt, io_enq_bits_data, io_enq_bits_denied, io_enq_bits_sink, io_enq_bits_source, io_enq_bits_size, io_enq_bits_param, io_enq_bits_opcode};	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    if (reset)	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      full <= 1'h0;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27]
    else if (~(do_enq == (full & io_deq_ready & io_deq_valid_0)))	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :263:27, :264:27, :276:{15,27}, :277:16, :285:16, :297:{24,39}, :298:17, :300:14, :301:{26,35}]
      full <= do_enq;	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :263:27, :298:17, :301:{26,35}]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `FIRRTL_BEFORE_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:2];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    initial begin	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        `INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        for (logic [1:0] i = 2'h0; i < 2'h3; i += 2'h1) begin
          _RANDOM[i] = `RANDOM;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        end	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        ram = {_RANDOM[2'h0][31:1], _RANDOM[2'h1], _RANDOM[2'h2]};	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91]
        full = _RANDOM[2'h0][0];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `FIRRTL_AFTER_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_enq_ready = io_enq_ready_0;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :286:16, :306:{24,39}]
  assign io_deq_valid = io_deq_valid_0;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :285:16, :297:{24,39}]
  assign io_deq_bits_opcode = full ? ram[2:0] : io_enq_bits_opcode;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_param = full ? ram[4:3] : io_enq_bits_param;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_size = full ? ram[12:5] : io_enq_bits_size;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_source = full ? ram[20:13] : io_enq_bits_source;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_sink = full ? ram[28:21] : io_enq_bits_sink;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_denied = full ? ram[29] : io_enq_bits_denied;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_data = full ? ram[93:30] : io_enq_bits_data;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
  assign io_deq_bits_corrupt = full ? ram[94] : io_enq_bits_corrupt;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27, :293:17, :298:17, :299:19]
endmodule

