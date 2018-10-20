pub const Desc = extern struct {
    sample_rate: c_int,
    num_channels: c_int,
    buffer_frames: c_int,
    packet_frames: c_int,
    num_packets: c_int,
    stream_cb: ?extern fn(?[*]f32, c_int, c_int) void,
};

pub extern fn saudio_setup(desc: *const Desc) void;
pub extern fn saudio_shutdown() void;
pub extern fn saudio_isvalid() bool;
pub extern fn saudio_sample_rate() c_int;
pub extern fn saudio_buffer_size() c_int;
pub extern fn saudio_channels() c_int;
pub extern fn saudio_expect() c_int;
pub extern fn saudio_push(frames: ?[*]const f32, num_frames: c_int) c_int;

pub const setup = saudio_setup;
pub const shutdown = saudio_shutdown;
pub const isValid = saudio_isvalid;
pub const sampleRate = saudio_sample_rate;
pub const bufferSize = saudio_buffer_size;
pub const channels = saudio_channels;
pub const expect = saudio_expect;
pub const push = saudio_push;
