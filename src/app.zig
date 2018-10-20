//
// zig translate-c sokol_app.h
//
pub const MaxKeyCodes = 512;
pub const MaxMouseButtons = 3;
pub const MaxTouchPoints = 8;

pub const ModifierShift = 1;
pub const ModifierCtrl = 2;
pub const ModifierAlt = 4;
pub const ModifierSuper = 8;

pub const EventType = extern enum {
    Invalid = 0,
    KeyDown = 1,
    KeyUp = 2,
    Char = 3,
    MouseDown = 4,
    MouseUp = 5,
    MouseScroll = 6,
    MouseMove = 7,
    MouseEnter = 8,
    MouseLeave = 9,
    TouchesBegan = 10,
    TouchesMoved = 11,
    TouchesEnded = 12,
    TouchesCancelled = 13,
    Resized = 14,
    Iconified = 15,
    Restored = 16,
    Suspended = 17,
    Resumed = 18,
    UpdateCursor = 19,
};

pub const KeyCode = extern enum {
    Invalid = 0,
    Space = 32,
    Apostrophe = 39,
    Comma = 44,
    Minus = 45,
    Period = 46,
    Slash = 47,
    _0 = 48,
    _1 = 49,
    _2 = 50,
    _3 = 51,
    _4 = 52,
    _5 = 53,
    _6 = 54,
    _7 = 55,
    _8 = 56,
    _9 = 57,
    Semicolon = 59,
    Equal = 61,
    A = 65,
    B = 66,
    C = 67,
    D = 68,
    E = 69,
    F = 70,
    G = 71,
    H = 72,
    I = 73,
    J = 74,
    K = 75,
    L = 76,
    M = 77,
    N = 78,
    O = 79,
    P = 80,
    Q = 81,
    R = 82,
    S = 83,
    T = 84,
    U = 85,
    V = 86,
    W = 87,
    X = 88,
    Y = 89,
    Z = 90,
    LeftBracket = 91,
    Backslash = 92,
    RightBracket = 93,
    GraveAccent = 96,
    World1 = 161,
    World2 = 162,
    Escape = 256,
    Enter = 257,
    Tab = 258,
    Backspace = 259,
    Insert = 260,
    Delete = 261,
    Right = 262,
    Left = 263,
    Down = 264,
    Up = 265,
    PageUp = 266,
    PageDown = 267,
    Home = 268,
    End = 269,
    CapsLock = 280,
    ScrollLock = 281,
    NumLock = 282,
    PrintScreen = 283,
    Pause = 284,
    F1 = 290,
    F2 = 291,
    F3 = 292,
    F4 = 293,
    F5 = 294,
    F6 = 295,
    F7 = 296,
    F8 = 297,
    F9 = 298,
    F10 = 299,
    F11 = 300,
    F12 = 301,
    F13 = 302,
    F14 = 303,
    F15 = 304,
    F16 = 305,
    F17 = 306,
    F18 = 307,
    F19 = 308,
    F20 = 309,
    F21 = 310,
    F22 = 311,
    F23 = 312,
    F24 = 313,
    F25 = 314,
    KP_0 = 320,
    KP_1 = 321,
    KP_2 = 322,
    KP_3 = 323,
    KP_4 = 324,
    KP_5 = 325,
    KP_6 = 326,
    KP_7 = 327,
    KP_8 = 328,
    KP_9 = 329,
    KP_Decimal = 330,
    KP_Divide = 331,
    KP_Multiply = 332,
    KP_Subtract = 333,
    KP_Add = 334,
    KP_Enter = 335,
    KP_Equal = 336,
    LeftShift = 340,
    LeftControl = 341,
    LeftAlt = 342,
    LeftSuper = 343,
    RightShift = 344,
    RightControl = 345,
    RightAlt = 346,
    RightSuper = 347,
    Menu = 348,
};

pub const MouseButton = extern enum {
    Invalid = -1,
    Left = 0,
    Right = 1,
    Middle = 2,
};

pub const TouchPoint = extern struct {
    identifier: usize,
    pos_x: f32,
    pos_y: f32,
    changed: bool,
};

pub const Event = extern struct {
    type: EventType,
    frame_count: u32,
    key_code: KeyCode,
    char_code: u32,
    modifiers: u32,
    mouse_button: MouseButton,
    mouse_x: f32,
    mouse_y: f32,
    scroll_x: f32,
    scroll_y: f32,
    num_touches: c_int,
    touches: [MaxTouchPoints]TouchPoint,
    window_width: c_int,
    window_height: c_int,
    framebuffer_width: c_int,
    framebuffer_height: c_int,
};

pub const Desc = extern struct {
    init_cb: ?extern fn() void,
    frame_cb: ?extern fn() void,
    cleanup_cb: ?extern fn() void,
    event_cb: ?extern fn(?*const Event) void,
    fail_cb: ?extern fn(?[*]const u8) void,
    width: c_int,
    height: c_int,
    sample_count: c_int,
    swap_interval: c_int,
    high_dpi: bool,
    fullscreen: bool,
    alpha: bool,
    premultiplied_alpha: bool,
    preserve_drawing_buffer: bool,
    window_title: ?[*]const u8,
    html5_canvas_name: ?[*]const u8,
    html5_canvas_resize: bool,
    ios_keyboard_resizes_canvas: bool,
    gl_force_gles2: bool,
    user_cursor: bool,
};

// pub extern fn sokol_main(argc: c_int, argv: ?[*](?[*]u8)) sapp_desc;

pub extern fn sapp_isvalid() bool;
pub extern fn sapp_width() c_int;
pub extern fn sapp_height() c_int;
pub extern fn sapp_high_dpi() bool;
pub extern fn sapp_dpi_scale() f32;
pub extern fn sapp_show_keyboard(visible: bool) void;
pub extern fn sapp_keyboard_shown() bool;
pub extern fn sapp_gles2() bool;
pub extern fn sapp_metal_get_device() ?*const c_void;
pub extern fn sapp_metal_get_renderpass_descriptor() ?*const c_void;
pub extern fn sapp_metal_get_drawable() ?*const c_void;
pub extern fn sapp_macos_get_window() ?*const c_void;
pub extern fn sapp_ios_get_window() ?*const c_void;
pub extern fn sapp_d3d11_get_device() ?*const c_void;
pub extern fn sapp_d3d11_get_device_context() ?*const c_void;
pub extern fn sapp_d3d11_get_render_target_view() ?*const c_void;
pub extern fn sapp_d3d11_get_depth_stencil_view() ?*const c_void;
pub extern fn sapp_win32_get_hwnd() ?*const c_void;

pub const isValid = sapp_isvalid;
pub const width = sapp_width;
pub const height = sapp_height;
pub const highDpi = sapp_high_dpi;
pub const dpiScale = sapp_dpi_scale;
pub const showKeyboard = sapp_show_keyboard;
pub const keyboardShown = sapp_keyboard_shown;
pub const gles2 = sapp_gles2;
pub const metalGetDevice = sapp_metal_get_device;
pub const metalGetRenderpassDescriptor = sapp_metal_get_renderpass_descriptor;
pub const metalGetDrawable = sapp_metal_get_drawable;
pub const macosGetWindow = sapp_macos_get_window;
pub const iosGetWindow = sapp_ios_get_window;
pub const d3d11GetDevice = sapp_d3d11_get_device;
pub const d3d11GetDeviceContext = sapp_d3d11_get_device_context;
pub const d3d11GetRenderTargetView = sapp_d3d11_get_render_target_view;
pub const d3d11GetDepthStencilView = sapp_d3d11_get_depth_stencil_view;
pub const win32GetHwnd = sapp_win32_get_hwnd;
