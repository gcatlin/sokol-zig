//
// zig translate-c sokol_gfx.h
//

pub const Buffer = extern struct { id: u32 };
pub const Image = extern struct { id: u32 };
pub const Shader = extern struct { id: u32 };
pub const Pipeline = extern struct { id: u32 };
pub const Pass = extern struct { id: u32 };
pub const Context = extern struct { id: u32 };

pub const Feature = extern enum {
    Instancing = 0,
    TextureCompressionDxt = 1,
    TextureCompressionPvrtc = 2,
    TextureCompressionAtc = 3,
    TextureCompressionEtc2 = 4,
    TextureFloat = 5,
    TextureHalfFloat = 6,
    OriginBottomLeft = 7,
    OriginTopLeft = 8,
    MsaaRenderTargets = 9,
    PackedVertexFormat10_2 = 10,
    MultipleRenderTarget = 11,
    ImageType3d = 12,
    ImageTypeArray = 13,
};

pub const ResourceState = extern enum {
    Initial = 0,
    Alloc = 1,
    Valid = 2,
    Failed = 3,
    Invalid = 4,
};

pub const Usage = extern enum {
    Default = 0,
    Immutable = 1,
    Dynamic = 2,
    Stream = 3,
};

pub const BufferType = extern enum {
    Default = 0,
    VertexBuffer = 1,
    IndexBuffer = 2,
};

pub const IndexType = extern enum {
    Default = 0,
    None = 1,
    Uint16 = 2,
    Uint32 = 3,
};

pub const ImageType = extern enum {
    Default = 0,
    _2d = 1,
    Cube = 2,
    _3d = 3,
    Array = 4,
};

pub const CubeFace = extern enum {
    PosX = 0,
    NegX = 1,
    PosY = 2,
    NegY = 3,
    PosZ = 4,
    NegZ = 5,
};

pub const ShaderStage = extern enum {
    Vertex = 0,
    Fragement = 1,
};

pub const PixelFormat = extern enum {
    Default = 0,
    None = 1,
    RGBA8 = 2,
    RGB8 = 3,
    RGBA4 = 4,
    R5G6B5 = 5,
    R5G5B5A1 = 6,
    R10G10B10A2 = 7,
    RGBA32F = 8,
    RGBA16F = 9,
    R32F = 10,
    R16F = 11,
    L8 = 12,
    DXT1 = 13,
    DXT3 = 14,
    DXT5 = 15,
    Depth = 16,
    DepthStencil = 17,
    PVRTC2_RGB = 18,
    PVRTC4_RGB = 19,
    PVRTC2_RGBA = 20,
    PVRTC4_RGBA = 21,
    ETC2_RGB8 = 22,
    ETC2_SRGB8 = 23,
    Num = 24,
};

pub const PrimitiveType = extern enum {
    Default = 0,
    Points = 1,
    Lines = 2,
    LineStrip = 3,
    Triangles = 4,
    TriangleStrip = 5,
};

pub const Filter = extern enum {
    Default = 0,
    Nearest = 1,
    Linear = 2,
    NearestMipmapNearest = 3,
    NearestMipmapLinear = 4,
    LinearMipmapNearest = 5,
    LinearMipmapLinear = 6,
};

pub const Wrap = extern enum {
    Default = 0,
    Repeat = 1,
    ClampToEdge = 2,
    MirroredRepeat = 3,
};

pub const VertexFormat = extern enum {
    Invalid = 0,
    Float = 1,
    Float2 = 2,
    Float3 = 3,
    Float4 = 4,
    Byte4 = 5,
    Byte4N = 6,
    Ubyte4 = 7,
    Ubyte4N = 8,
    Short2 = 9,
    Short2N = 10,
    Short4 = 11,
    Short4N = 12,
    Uint10N2 = 13,
};

pub const VertexStep = extern enum {
    Default = 0,
    PerVertex = 1,
    PerInstance = 2,
};

pub const UniformType = extern enum {
    Invalid = 0,
    Float = 1,
    Float2 = 2,
    Float3 = 3,
    Float4 = 4,
    Mat4 = 5,
};

pub const CullMode = extern enum {
    Default = 0,
    None = 1,
    Front = 2,
    Back = 3,
};

pub const FaceWinding = extern enum {
    Default = 0,
    Ccw = 1,
    Cw = 2,
};

pub const CompareFunc = extern enum {
    Default = 0,
    Never = 1,
    Less = 2,
    Equal = 3,
    LessEqual = 4,
    Greater = 5,
    NotEqual = 6,
    GreaterEqual = 7,
    Always = 8,
};

pub const StencilOp = extern enum {
    Default = 0,
    Keep = 1,
    Zero = 2,
    Replace = 3,
    IncrClamp = 4,
    DecrClamp = 5,
    Invert = 6,
    IncrWrap = 7,
    DecrWrap = 8,
};

pub const BlendFactor = extern enum {
    Default = 0,
    Zero = 1,
    One = 2,
    SrcColor = 3,
    OneMinusSrcColor = 4,
    SrcAlpha = 5,
    OneMinusSrcAlpha = 6,
    DstColor = 7,
    OneMinusDstColor = 8,
    DstAlpha = 9,
    OneMinusDstAlpha = 10,
    SrcAlphaSaturated = 11,
    BlendColor = 12,
    OneMinusBlendColor = 13,
    BlendAlpha = 14,
    OneMinusBlendAlpha = 15,
};

pub const BlendOp = extern enum {
    Default = 0,
    Add = 1,
    Subtract = 2,
    ReverseSubtract = 3,
};

pub const ColorMask = extern enum {
    Default = 0,
    None = 16,
    R = 1,
    G = 2,
    B = 4,
    A = 8,
    RGB = 7,
};

pub const Action = extern enum {
    Default = 0,
    Clear = 1,
    Load = 2,
    DontCare = 3,
};

pub const ColorAttachmentAction = extern struct {
    action: Action,
    val: [4]f32,
};

pub const DepthAttachmentAction = extern struct {
    action: Action,
    val: f32,
};

pub const StencilAttachmentAction = extern struct {
    action: Action,
    val: u8,
};

pub const PassAction = extern struct {
    _start_canary: u32,
    colors: [4]ColorAttachmentAction,
    depth: DepthAttachmentAction,
    stencil: StencilAttachmentAction,
    _end_canary: u32,
};

pub const DrawState = extern struct {
    _start_canary: u32,
    pipeline: Pipeline,
    vertex_buffers: [4]Buffer,
    vertex_buffer_offsets: [4]u32,
    index_buffer: Buffer,
    index_buffer_offset: u32,
    vs_images: [12]Image,
    fs_images: [12]Image,
    _end_canary: u32,
};

pub const Desc = extern struct {
    _start_canary: u32,
    buffer_pool_size: c_int,
    image_pool_size: c_int,
    shader_pool_size: c_int,
    pipeline_pool_size: c_int,
    pass_pool_size: c_int,
    context_pool_size: c_int,
    gl_force_gles2: bool,
    mtl_device: ?*const c_void,
    mtl_renderpass_descriptor_cb: ?extern fn() ?*const c_void,
    mtl_drawable_cb: ?extern fn() ?*const c_void,
    mtl_global_uniform_buffer_size: c_int,
    mtl_sampler_cache_size: c_int,
    d3d11_device: ?*const c_void,
    d3d11_device_context: ?*const c_void,
    d3d11_render_target_view_cb: ?extern fn() ?*const c_void,
    d3d11_depth_stencil_view_cb: ?extern fn() ?*const c_void,
    _end_canary: u32,
};

pub const BufferDesc = extern struct {
    _start_canary: u32,
    size: c_int,
    type: BufferType,
    usage: Usage,
    content: ?*const c_void,
    gl_buffers: [2]u32,
    mtl_buffers: [2](?*const c_void),
    d3d11_buffer: ?*const c_void,
    _end_canary: u32,
};

pub const SubimageContent = extern struct {
    ptr: ?*const c_void,
    size: c_int,
};

pub const ImageContent = extern struct {
    subimage: [6][16]SubimageContent,
};

pub const ImageDesc = extern struct {
    _start_canary: u32,
    type: ImageType,
    render_target: bool,
    width: c_int,
    height: c_int,
    @"": extern union {
        depth: c_int,
        layers: c_int,
    },
    num_mipmaps: c_int,
    usage: Usage,
    pixel_format: PixelFormat,
    sample_count: c_int,
    min_filter: Filter,
    mag_filter: Filter,
    wrap_u: Wrap,
    wrap_v: Wrap,
    wrap_w: Wrap,
    max_anisotropy: u32,
    min_lod: f32,
    max_lod: f32,
    content: ImageContent,
    gl_textures: [2]u32,
    mtl_textures: [2](?*const c_void),
    d3d11_texture: ?*const c_void,
    _end_canary: u32,
};

pub const ShaderUniformDesc = extern struct {
    name: ?[*]const u8,
    type: UniformType,
    array_count: c_int,
};

pub const ShaderUniformBlockDesc = extern struct {
    size: c_int,
    uniforms: [16]ShaderUniformDesc,
};

pub const ShaderImageDesc = extern struct {
    name: ?[*]const u8,
    type: ImageType,
};

pub const ShaderStageDesc = extern struct {
    source: ?[*]const u8,
    byte_code: ?[*]const u8,
    byte_code_size: c_int,
    entry: ?[*]const u8,
    uniform_blocks: [4]ShaderUniformBlockDesc,
    images: [12]ShaderImageDesc,
};

pub const ShaderDesc = extern struct {
    _start_canary: u32,
    vs: ShaderStageDesc,
    fs: ShaderStageDesc,
    _end_canary: u32,
};

pub const BufferLayoutDesc = extern struct {
    stride: c_int,
    step_func: VertexStep,
    step_rate: c_int,
};

pub const VertexAttrDesc = extern struct {
    name: ?[*]const u8,
    sem_name: ?[*]const u8,
    sem_index: c_int,
    buffer_index: c_int,
    offset: c_int,
    format: VertexFormat,
};

pub const LayoutDesc = extern struct {
    buffers: [4]BufferLayoutDesc,
    attrs: [16]VertexAttrDesc,
};

pub const StencilState = extern struct {
    fail_op: StencilOp,
    depth_fail_op: StencilOp,
    pass_op: StencilOp,
    compare_func: CompareFunc,
};

pub const DepthStencilState = extern struct {
    stencil_front: StencilState,
    stencil_back: StencilState,
    depth_compare_func: CompareFunc,
    depth_write_enabled: bool,
    stencil_enabled: bool,
    stencil_read_mask: u8,
    stencil_write_mask: u8,
    stencil_ref: u8,
};

pub const BlendState = extern struct {
    enabled: bool,
    src_factor_rgb: BlendFactor,
    dst_factor_rgb: BlendFactor,
    op_rgb: BlendOp,
    src_factor_alpha: BlendFactor,
    dst_factor_alpha: BlendFactor,
    op_alpha: BlendOp,
    color_write_mask: u8,
    color_attachment_count: c_int,
    color_format: PixelFormat,
    depth_format: PixelFormat,
    blend_color: [4]f32,
};

pub const RasterizerState = extern struct {
    alpha_to_coverage_enabled: bool,
    cull_mode: CullMode,
    face_winding: FaceWinding,
    sample_count: c_int,
    depth_bias: f32,
    depth_bias_slope_scale: f32,
    depth_bias_clamp: f32,
};

pub const PipelineDesc = extern struct {
    _start_canary: u32,
    layout: LayoutDesc,
    shader: Shader,
    primitive_type: PrimitiveType,
    index_type: IndexType,
    depth_stencil: DepthStencilState,
    blend: BlendState,
    rasterizer: RasterizerState,
    _end_canary: u32,
};

pub const AttachmentDesc = extern struct {
    image: Image,
    mip_level: c_int,
    @"": extern union {
        face: c_int,
        layer: c_int,
        slice: c_int,
    },
};

pub const PassDesc = extern struct {
    _start_canary: u32,
    color_attachments: [4]AttachmentDesc,
    depth_stencil_attachment: AttachmentDesc,
    _end_canary: u32,
};

pub extern fn sg_setup(desc: *const Desc) void;
pub extern fn sg_shutdown() void;
pub extern fn sg_isvalid() bool;
pub extern fn sg_query_feature(feature: Feature) bool;
pub extern fn sg_reset_state_cache() void;
pub extern fn sg_make_buffer(desc: *const BufferDesc) Buffer;
pub extern fn sg_make_image(desc: *const ImageDesc) Image;
pub extern fn sg_make_shader(desc: *const ShaderDesc) Shader;
pub extern fn sg_make_pipeline(desc: *const PipelineDesc) Pipeline;
pub extern fn sg_make_pass(desc: *const PassDesc) Pass;
pub extern fn sg_destroy_buffer(buf: Buffer) void;
pub extern fn sg_destroy_image(img: Image) void;
pub extern fn sg_destroy_shader(shd: Shader) void;
pub extern fn sg_destroy_pipeline(pip: Pipeline) void;
pub extern fn sg_destroy_pass(pass: Pass) void;
pub extern fn sg_update_buffer(buf: Buffer, data_ptr: ?*const c_void, data_size: c_int) void;
pub extern fn sg_update_image(img: Image, data: *const ImageContent) void;
pub extern fn sg_query_buffer_state(buf: Buffer) ResourceState;
pub extern fn sg_query_image_state(img: Image) ResourceState;
pub extern fn sg_query_shader_state(shd: Shader) ResourceState;
pub extern fn sg_query_pipeline_state(pip: Pipeline) ResourceState;
pub extern fn sg_query_pass_state(pass: Pass) ResourceState;
pub extern fn sg_begin_default_pass(pass_action: *const PassAction, width: c_int, height: c_int) void;
pub extern fn sg_begin_pass(pass: Pass, pass_action: *const PassAction) void;
pub extern fn sg_apply_viewport(x: c_int, y: c_int, width: c_int, height: c_int, origin_top_left: bool) void;
pub extern fn sg_apply_scissor_rect(x: c_int, y: c_int, width: c_int, height: c_int, origin_top_left: bool) void;
pub extern fn sg_apply_draw_state(ds: *const DrawState) void;
pub extern fn sg_apply_uniform_block(stage: ShaderStage, ub_index: c_int, data: ?*const c_void, num_bytes: c_int) void;
pub extern fn sg_draw(base_element: c_int, num_elements: c_int, num_instances: c_int) void;
pub extern fn sg_end_pass() void;
pub extern fn sg_commit() void;
pub extern fn sg_alloc_buffer() Buffer;
pub extern fn sg_alloc_image() Image;
pub extern fn sg_alloc_shader() Shader;
pub extern fn sg_alloc_pipeline() Pipeline;
pub extern fn sg_alloc_pass() Pass;
pub extern fn sg_init_buffer(buf_id: Buffer, desc: *const BufferDesc) void;
pub extern fn sg_init_image(img_id: Image, desc: *const ImageDesc) void;
pub extern fn sg_init_shader(shd_id: Shader, desc: *const ShaderDesc) void;
pub extern fn sg_init_pipeline(pip_id: Pipeline, desc: *const PipelineDesc) void;
pub extern fn sg_init_pass(pass_id: Pass, desc: *const PassDesc) void;
pub extern fn sg_fail_buffer(buf_id: Buffer) void;
pub extern fn sg_fail_image(img_id: Image) void;
pub extern fn sg_fail_shader(shd_id: Shader) void;
pub extern fn sg_fail_pipeline(pip_id: Pipeline) void;
pub extern fn sg_fail_pass(pass_id: Pass) void;
pub extern fn sg_setup_context() Context;
pub extern fn sg_activate_context(ctx_id: Context) void;
pub extern fn sg_discard_context(ctx_id: Context) void;

pub const setup = sg_setup;
pub const shutdown = sg_shutdown;
pub const isValid = sg_isvalid;
pub const queryFeature = sg_query_feature;
pub const resetStateCache = sg_reset_state_cache;
pub const makeBuffer = sg_make_buffer;
pub const makeImage = sg_make_image;
pub const makeShader = sg_make_shader;
pub const makePipeline = sg_make_pipeline;
pub const makePass = sg_make_pass;
pub const destroyBuffer = sg_destroy_buffer;
pub const destroyImage = sg_destroy_image;
pub const destroyShader = sg_destroy_shader;
pub const destroyPipeline = sg_destroy_pipeline;
pub const destroyPass = sg_destroy_pass;
pub const updateBuffer = sg_update_buffer;
pub const updateImage = sg_update_image;
pub const queryBufferState = sg_query_buffer_state;
pub const queryImageState = sg_query_image_state;
pub const queryShaderState = sg_query_shader_state;
pub const queryPipelineState = sg_query_pipeline_state;
pub const queryPassState = sg_query_pass_state;
pub const beginDefaultPass = sg_begin_default_pass;
pub const beginPass = sg_begin_pass;
pub const applyViewport = sg_apply_viewport;
pub const applyScissorRect = sg_apply_scissor_rect;
pub const applyDrawState = sg_apply_draw_state;
pub const applyUniformBlock = sg_apply_uniform_block;
pub const draw = sg_draw;
pub const endPass = sg_end_pass;
pub const commit = sg_commit;
pub const allocBuffer = sg_alloc_buffer;
pub const allocImage = sg_alloc_image;
pub const allocShader = sg_alloc_shader;
pub const allocPipeline = sg_alloc_pipeline;
pub const allocPass = sg_alloc_pass;
pub const initBuffer = sg_init_buffer;
pub const initImage = sg_init_image;
pub const initShader = sg_init_shader;
pub const initPipeline = sg_init_pipeline;
pub const initPass = sg_init_pass;
pub const failBuffer = sg_fail_buffer;
pub const failImage = sg_fail_image;
pub const failShader = sg_fail_shader;
pub const failPipeline = sg_fail_pipeline;
pub const failPass = sg_fail_pass;
pub const setupContext = sg_setup_context;
pub const activateContext = sg_activate_context;
pub const discardContext = sg_discard_context;
