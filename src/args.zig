pub const Desc = extern struct {
    argc: c_int,
    argv: ?[*][*]const u8,
    max_args: c_int,
    buf_size: c_int,
};

pub extern fn sargs_setup(desc: *const Desc) void;
pub extern fn sargs_shutdown() void;
pub extern fn sargs_isvalid() bool;
pub extern fn sargs_exists(key: ?[*]const u8) bool;
pub extern fn sargs_value(key: ?[*]const u8) ?[*]const u8;
pub extern fn sargs_value_def(key: ?[*]const u8, def: ?[*]const u8) ?[*]const u8;
pub extern fn sargs_equals(key: ?[*]const u8, val: ?[*]const u8) bool;
pub extern fn sargs_boolean(key: ?[*]const u8) bool;
pub extern fn sargs_find(key: ?[*]const u8) c_int;
pub extern fn sargs_num_args() c_int;
pub extern fn sargs_key_at(index: c_int) ?[*]const u8;
pub extern fn sargs_value_at(index: c_int) ?[*]const u8;

pub const setup = sargs_setup;
pub const shutdown = sargs_shutdown;
pub const isValid = sargs_isvalid;
pub const exists = sargs_exists;
pub const value = sargs_value;
pub const valueDef = sargs_value_def;
pub const equals = sargs_equals;
pub const boolean = sargs_boolean;
pub const find = sargs_find;
pub const numArgs = sargs_num_args;
pub const keyAt = sargs_key_at;
pub const valueAt = sargs_value_at;
