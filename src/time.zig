pub extern fn stm_setup() void;
pub extern fn stm_now() u64;
pub extern fn stm_diff(new_ticks: u64, old_ticks: u64) u64;
pub extern fn stm_since(start_ticks: u64) u64;
pub extern fn stm_laptime(last_time: ?*u64) u64;
pub extern fn stm_sec(ticks: u64) f64;
pub extern fn stm_ms(ticks: u64) f64;
pub extern fn stm_us(ticks: u64) f64;
pub extern fn stm_ns(ticks: u64) f64;

pub const setup = stm_setup;
pub const now = stm_now;
pub const diff = stm_diff;
pub const since = stm_since;
pub const lapTime = stm_laptime;
pub const sec = stm_sec;
pub const ms = stm_ms;
pub const us = stm_us;
pub const ns = stm_ns;
