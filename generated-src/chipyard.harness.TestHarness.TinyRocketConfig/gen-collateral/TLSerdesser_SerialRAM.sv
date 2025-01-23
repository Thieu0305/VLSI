// Generated by CIRCT firtool-1.75.0
module TLSerdesser_SerialRAM(	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9]
  input         clock,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9]
  input         reset,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9]
  output        auto_manager_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_manager_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_manager_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_manager_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_manager_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_manager_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_manager_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_manager_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_manager_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_manager_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_manager_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_manager_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_manager_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_manager_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_manager_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_manager_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_manager_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_manager_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_manager_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_manager_in_d_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        io_ser_0_in_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_0_in_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input  [31:0] io_ser_0_in_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output [31:0] io_ser_0_out_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output        io_ser_1_in_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_1_in_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input  [31:0] io_ser_1_in_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output        io_ser_2_in_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_2_in_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input  [31:0] io_ser_2_in_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_2_out_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output        io_ser_2_out_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output [31:0] io_ser_2_out_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output        io_ser_3_in_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_3_in_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input  [31:0] io_ser_3_in_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output        io_ser_4_in_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_4_in_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input  [31:0] io_ser_4_in_bits_flit,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  input         io_ser_4_out_ready,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output        io_ser_4_out_valid,	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
  output [31:0] io_ser_4_out_bits_flit	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:40:16]
);

  wire        _des_4_io_out_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_4_io_out_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_4_io_out_bits_tail;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_3_io_out_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_3_io_out_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_3_io_out_bits_tail;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_2_io_out_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_2_io_out_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_2_io_out_bits_tail;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_1_io_out_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire [64:0] _des_1_io_out_bits_payload;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_1_io_out_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_1_io_out_bits_tail;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_0_io_out_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_0_io_out_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _des_0_io_out_bits_tail;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  wire        _in_channels_4_2_io_beat_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:82:28]
  wire        _in_channels_3_2_io_beat_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:81:28]
  wire        _in_channels_2_2_io_beat_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:80:28]
  wire        _in_channels_1_2_io_protocol_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire [2:0]  _in_channels_1_2_io_protocol_bits_opcode;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire [1:0]  _in_channels_1_2_io_protocol_bits_param;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire [7:0]  _in_channels_1_2_io_protocol_bits_size;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire [7:0]  _in_channels_1_2_io_protocol_bits_source;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire [7:0]  _in_channels_1_2_io_protocol_bits_sink;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire        _in_channels_1_2_io_protocol_bits_denied;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire        _in_channels_1_2_io_protocol_bits_corrupt;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire        _in_channels_1_2_io_beat_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  wire        _in_channels_0_2_io_beat_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:78:28]
  wire        _ser_4_io_in_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
  wire        _out_channels_4_2_io_protocol_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
  wire        _out_channels_4_2_io_beat_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
  wire [85:0] _out_channels_4_2_io_beat_bits_payload;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
  wire        _out_channels_4_2_io_beat_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
  wire        _out_channels_4_2_io_beat_bits_tail;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
  wire        _out_channels_2_2_io_beat_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:61:50]
  wire        _out_channels_0_2_io_beat_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:59:50]
  TLMonitor_45 monitor (	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (_out_channels_4_2_io_protocol_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
    .io_in_a_valid        (auto_manager_in_a_valid),
    .io_in_a_bits_opcode  (auto_manager_in_a_bits_opcode),
    .io_in_a_bits_param   (auto_manager_in_a_bits_param),
    .io_in_a_bits_size    (auto_manager_in_a_bits_size),
    .io_in_a_bits_source  (auto_manager_in_a_bits_source),
    .io_in_a_bits_address (auto_manager_in_a_bits_address),
    .io_in_a_bits_mask    (auto_manager_in_a_bits_mask),
    .io_in_a_bits_corrupt (auto_manager_in_a_bits_corrupt),
    .io_in_d_ready        (auto_manager_in_d_ready),
    .io_in_d_valid        (_in_channels_1_2_io_protocol_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
    .io_in_d_bits_opcode  (_in_channels_1_2_io_protocol_bits_opcode),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
    .io_in_d_bits_param   (_in_channels_1_2_io_protocol_bits_param),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
    .io_in_d_bits_size    (_in_channels_1_2_io_protocol_bits_size[3:0]),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28, :85:9]
    .io_in_d_bits_source  (_in_channels_1_2_io_protocol_bits_source[0]),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28, :85:9]
    .io_in_d_bits_sink    (_in_channels_1_2_io_protocol_bits_sink[0]),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28, :85:9]
    .io_in_d_bits_denied  (_in_channels_1_2_io_protocol_bits_denied),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
    .io_in_d_bits_corrupt (_in_channels_1_2_io_protocol_bits_corrupt)	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
  TLEToBeat_SerialRAM_a64d64s8k8z8c out_channels_0_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:59:50]
    .clock             (clock),
    .reset             (reset),
    .io_beat_bits_head (_out_channels_0_2_io_beat_bits_head)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:59:50]
  TLCToBeat_SerialRAM_a64d64s8k8z8c out_channels_2_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:61:50]
    .clock             (clock),
    .reset             (reset),
    .io_beat_bits_head (_out_channels_2_2_io_beat_bits_head)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:61:50]
  TLAToBeat_SerialRAM_a64d64s8k8z8c out_channels_4_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
    .clock                    (clock),
    .reset                    (reset),
    .io_protocol_ready        (_out_channels_4_2_io_protocol_ready),
    .io_protocol_valid        (auto_manager_in_a_valid),
    .io_protocol_bits_opcode  (auto_manager_in_a_bits_opcode),
    .io_protocol_bits_param   (auto_manager_in_a_bits_param),
    .io_protocol_bits_size    ({4'h0, auto_manager_in_a_bits_size}),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:68:21]
    .io_protocol_bits_source  ({7'h0, auto_manager_in_a_bits_source}),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:68:21]
    .io_protocol_bits_address ({32'h0, auto_manager_in_a_bits_address}),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:68:21]
    .io_protocol_bits_mask    (auto_manager_in_a_bits_mask),
    .io_protocol_bits_data    (auto_manager_in_a_bits_data),
    .io_protocol_bits_corrupt (auto_manager_in_a_bits_corrupt),
    .io_beat_ready            (_ser_4_io_in_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
    .io_beat_valid            (_out_channels_4_2_io_beat_valid),
    .io_beat_bits_payload     (_out_channels_4_2_io_beat_bits_payload),
    .io_beat_bits_head        (_out_channels_4_2_io_beat_bits_head),
    .io_beat_bits_tail        (_out_channels_4_2_io_beat_bits_tail)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
  GenericSerializer_TLBeatw10_f32 ser_0 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
    .io_in_bits_head  (_out_channels_0_2_io_beat_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:59:50]
    .io_out_bits_flit (io_ser_0_out_bits_flit)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
  GenericSerializer_TLBeatw88_f32 ser_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
    .clock              (clock),
    .reset              (reset),
    .io_in_ready        (/* unused */),
    .io_in_valid        (1'h0),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :40:16, :59:50, :61:50, :69:23]
    .io_in_bits_payload (86'h0),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:61:50, :69:23]
    .io_in_bits_head    (_out_channels_2_2_io_beat_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:61:50]
    .io_in_bits_tail    (1'h1),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:59:50, :61:50, :69:23]
    .io_out_ready       (io_ser_2_out_ready),
    .io_out_valid       (io_ser_2_out_valid),
    .io_out_bits_flit   (io_ser_2_out_bits_flit)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
  GenericSerializer_TLBeatw88_f32 ser_4 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
    .clock              (clock),
    .reset              (reset),
    .io_in_ready        (_ser_4_io_in_ready),
    .io_in_valid        (_out_channels_4_2_io_beat_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
    .io_in_bits_payload (_out_channels_4_2_io_beat_bits_payload),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
    .io_in_bits_head    (_out_channels_4_2_io_beat_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
    .io_in_bits_tail    (_out_channels_4_2_io_beat_bits_tail),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:63:50]
    .io_out_ready       (io_ser_4_out_ready),
    .io_out_valid       (io_ser_4_out_valid),
    .io_out_bits_flit   (io_ser_4_out_bits_flit)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:69:23]
  TLEFromBeat_SerialRAM_a64d64s8k8z8c in_channels_0_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:78:28]
    .clock             (clock),
    .reset             (reset),
    .io_beat_ready     (_in_channels_0_2_io_beat_ready),
    .io_beat_valid     (_des_0_io_out_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_head (_des_0_io_out_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_tail (_des_0_io_out_bits_tail)	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:78:28]
  TLDFromBeat_SerialRAM_a64d64s8k8z8c in_channels_1_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
    .clock                    (clock),
    .reset                    (reset),
    .io_protocol_ready        (auto_manager_in_d_ready),
    .io_protocol_valid        (_in_channels_1_2_io_protocol_valid),
    .io_protocol_bits_opcode  (_in_channels_1_2_io_protocol_bits_opcode),
    .io_protocol_bits_param   (_in_channels_1_2_io_protocol_bits_param),
    .io_protocol_bits_size    (_in_channels_1_2_io_protocol_bits_size),
    .io_protocol_bits_source  (_in_channels_1_2_io_protocol_bits_source),
    .io_protocol_bits_sink    (_in_channels_1_2_io_protocol_bits_sink),
    .io_protocol_bits_denied  (_in_channels_1_2_io_protocol_bits_denied),
    .io_protocol_bits_data    (auto_manager_in_d_bits_data),
    .io_protocol_bits_corrupt (_in_channels_1_2_io_protocol_bits_corrupt),
    .io_beat_ready            (_in_channels_1_2_io_beat_ready),
    .io_beat_valid            (_des_1_io_out_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_payload     (_des_1_io_out_bits_payload),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_head        (_des_1_io_out_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_tail        (_des_1_io_out_bits_tail)	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
  TLCFromBeat_SerialRAM_a64d64s8k8z8c in_channels_2_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:80:28]
    .clock             (clock),
    .reset             (reset),
    .io_beat_ready     (_in_channels_2_2_io_beat_ready),
    .io_beat_valid     (_des_2_io_out_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_head (_des_2_io_out_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_tail (_des_2_io_out_bits_tail)	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:80:28]
  TLBFromBeat_SerialRAM_a64d64s8k8z8c in_channels_3_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:81:28]
    .clock             (clock),
    .reset             (reset),
    .io_beat_ready     (_in_channels_3_2_io_beat_ready),
    .io_beat_valid     (_des_3_io_out_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_head (_des_3_io_out_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_tail (_des_3_io_out_bits_tail)	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:81:28]
  TLAFromBeat_SerialRAM_a64d64s8k8z8c in_channels_4_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:82:28]
    .clock             (clock),
    .reset             (reset),
    .io_beat_ready     (_in_channels_4_2_io_beat_ready),
    .io_beat_valid     (_des_4_io_out_valid),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_head (_des_4_io_out_bits_head),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_beat_bits_tail (_des_4_io_out_bits_tail)	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:82:28]
  GenericDeserializer_TLBeatw10_f32 des_0 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .io_in_ready      (io_ser_0_in_ready),
    .io_in_valid      (io_ser_0_in_valid),
    .io_in_bits_flit  (io_ser_0_in_bits_flit),
    .io_out_ready     (_in_channels_0_2_io_beat_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:78:28]
    .io_out_valid     (_des_0_io_out_valid),
    .io_out_bits_head (_des_0_io_out_bits_head),
    .io_out_bits_tail (_des_0_io_out_bits_tail)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  GenericDeserializer_TLBeatw67_f32 des_1 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .clock               (clock),
    .reset               (reset),
    .io_in_ready         (io_ser_1_in_ready),
    .io_in_valid         (io_ser_1_in_valid),
    .io_in_bits_flit     (io_ser_1_in_bits_flit),
    .io_out_ready        (_in_channels_1_2_io_beat_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:79:28]
    .io_out_valid        (_des_1_io_out_valid),
    .io_out_bits_payload (_des_1_io_out_bits_payload),
    .io_out_bits_head    (_des_1_io_out_bits_head),
    .io_out_bits_tail    (_des_1_io_out_bits_tail)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  GenericDeserializer_TLBeatw88_f32 des_2 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .clock               (clock),
    .reset               (reset),
    .io_in_ready         (io_ser_2_in_ready),
    .io_in_valid         (io_ser_2_in_valid),
    .io_in_bits_flit     (io_ser_2_in_bits_flit),
    .io_out_ready        (_in_channels_2_2_io_beat_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:80:28]
    .io_out_valid        (_des_2_io_out_valid),
    .io_out_bits_payload (/* unused */),
    .io_out_bits_head    (_des_2_io_out_bits_head),
    .io_out_bits_tail    (_des_2_io_out_bits_tail)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  GenericDeserializer_TLBeatw87_f32 des_3 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .clock            (clock),
    .reset            (reset),
    .io_in_ready      (io_ser_3_in_ready),
    .io_in_valid      (io_ser_3_in_valid),
    .io_in_bits_flit  (io_ser_3_in_bits_flit),
    .io_out_ready     (_in_channels_3_2_io_beat_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:81:28]
    .io_out_valid     (_des_3_io_out_valid),
    .io_out_bits_head (_des_3_io_out_bits_head),
    .io_out_bits_tail (_des_3_io_out_bits_tail)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  GenericDeserializer_TLBeatw88_f32 des_4 (	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
    .clock               (clock),
    .reset               (reset),
    .io_in_ready         (io_ser_4_in_ready),
    .io_in_valid         (io_ser_4_in_valid),
    .io_in_bits_flit     (io_ser_4_in_bits_flit),
    .io_out_ready        (_in_channels_4_2_io_beat_ready),	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:82:28]
    .io_out_valid        (_des_4_io_out_valid),
    .io_out_bits_payload (/* unused */),
    .io_out_bits_head    (_des_4_io_out_bits_head),
    .io_out_bits_tail    (_des_4_io_out_bits_tail)
  );	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:86:23]
  assign auto_manager_in_a_ready = _out_channels_4_2_io_protocol_ready;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :63:50]
  assign auto_manager_in_d_valid = _in_channels_1_2_io_protocol_valid;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28]
  assign auto_manager_in_d_bits_opcode = _in_channels_1_2_io_protocol_bits_opcode;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28]
  assign auto_manager_in_d_bits_param = _in_channels_1_2_io_protocol_bits_param;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28]
  assign auto_manager_in_d_bits_size = _in_channels_1_2_io_protocol_bits_size[3:0];	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28, :85:9]
  assign auto_manager_in_d_bits_source = _in_channels_1_2_io_protocol_bits_source[0];	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28, :85:9]
  assign auto_manager_in_d_bits_sink = _in_channels_1_2_io_protocol_bits_sink[0];	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28, :85:9]
  assign auto_manager_in_d_bits_denied = _in_channels_1_2_io_protocol_bits_denied;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28]
  assign auto_manager_in_d_bits_corrupt = _in_channels_1_2_io_protocol_bits_corrupt;	// @[generators/testchipip/src/main/scala/serdes/TLSerdes.scala:39:9, :79:28]
endmodule

