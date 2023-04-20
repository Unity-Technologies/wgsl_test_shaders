diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_BlitMipLevel : f32,
  /* @offset(16) */
  x_BlitDecodeInstructions : vec4<f32>,
}

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlatb2 : vec2<bool>;

@group(0) @binding(0) var x_BlitCubeTexture : texture_cube<f32>;

@group(0) @binding(1) var sampler_LinearRepeat : sampler;

@group(1) @binding(0) var<uniform> x_256 : PGlobals;

var<private> u_xlat12 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_54 : vec2<f32>;
  var x_66 : vec2<f32>;
  var x_95 : vec2<f32>;
  var x_111 : vec2<f32>;
  var x_127 : vec2<f32>;
  var x_139 : vec2<f32>;
  var x_149 : vec2<f32>;
  var hlslcc_movcTemp : vec2<f32>;
  var x_197 : f32;
  var x_210 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = vs_TEXCOORD0.x;
  u_xlatb0.x = (x_18 < 0.0f);
  let x_24 : bool = u_xlatb0.x;
  if (x_24) {
    let x_28 : vec2<f32> = vs_TEXCOORD0;
    let x_33 : vec4<bool> = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) < vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb0 = vec2<bool>(x_33.x, x_33.y);
    let x_38 : vec2<f32> = vs_TEXCOORD0;
    u_xlat1 = (vec3<f32>(x_38.x, x_38.y, x_38.y) + vec3<f32>(1.0f, 1.0f, -1.0f));
    let x_45 : vec2<f32> = vs_TEXCOORD0;
    u_xlat8 = (-(x_45) + vec2<f32>(0.0f, 1.0f));
    let x_52 : bool = u_xlatb0.y;
    if (x_52) {
      let x_57 : vec2<f32> = u_xlat8;
      x_54 = x_57;
    } else {
      let x_59 : vec3<f32> = u_xlat1;
      x_54 = vec2<f32>(x_59.x, x_59.z);
    }
    let x_61 : vec2<f32> = x_54;
    u_xlat4 = x_61;
    let x_65 : bool = u_xlatb0.x;
    if (x_65) {
      let x_69 : vec3<f32> = u_xlat1;
      x_66 = vec2<f32>(x_69.x, x_69.y);
    } else {
      let x_72 : vec2<f32> = u_xlat4;
      x_66 = x_72;
    }
    let x_73 : vec2<f32> = x_66;
    let x_74 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  } else {
    let x_80 : vec2<f32> = vs_TEXCOORD0;
    let x_83 : vec4<bool> = (vec4<f32>(x_80.x, x_80.y, x_80.y, x_80.x) < vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f));
    u_xlatb1 = vec3<bool>(x_83.x, x_83.y, x_83.z);
    let x_86 : vec2<f32> = vs_TEXCOORD0;
    u_xlat2 = (-(vec4<f32>(x_86.x, x_86.y, x_86.x, x_86.y)) + vec4<f32>(1.0f, 2.0f, 2.0f, 1.0f));
    let x_94 : bool = u_xlatb1.z;
    if (x_94) {
      let x_98 : vec2<f32> = vs_TEXCOORD0;
      x_95 = x_98;
    } else {
      let x_100 : vec4<f32> = u_xlat2;
      x_95 = vec2<f32>(x_100.x, x_100.y);
    }
    let x_102 : vec2<f32> = x_95;
    u_xlat8 = x_102;
    let x_103 : vec2<f32> = vs_TEXCOORD0;
    let x_106 : vec2<f32> = (-(x_103) + vec2<f32>(1.0f, 0.0f));
    let x_107 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
    let x_110 : bool = u_xlatb1.y;
    if (x_110) {
      let x_114 : vec4<f32> = u_xlat2;
      x_111 = vec2<f32>(x_114.x, x_114.y);
    } else {
      let x_117 : vec2<f32> = u_xlat8;
      x_111 = x_117;
    }
    let x_118 : vec2<f32> = x_111;
    u_xlat8 = x_118;
    let x_120 : vec2<f32> = vs_TEXCOORD0;
    u_xlat3 = (vec3<f32>(x_120.x, x_120.y, x_120.y) + vec3<f32>(-1.0f, 1.0f, -1.0f));
    let x_126 : bool = u_xlatb1.z;
    if (x_126) {
      let x_130 : vec4<f32> = u_xlat2;
      x_127 = vec2<f32>(x_130.z, x_130.w);
    } else {
      let x_133 : vec3<f32> = u_xlat3;
      x_127 = vec2<f32>(x_133.x, x_133.z);
    }
    let x_135 : vec2<f32> = x_127;
    u_xlat9 = x_135;
    let x_138 : bool = u_xlatb1.y;
    if (x_138) {
      let x_142 : vec3<f32> = u_xlat3;
      x_139 = vec2<f32>(x_142.x, x_142.y);
    } else {
      let x_145 : vec2<f32> = u_xlat9;
      x_139 = x_145;
    }
    let x_146 : vec2<f32> = x_139;
    u_xlat5 = x_146;
    let x_148 : bool = u_xlatb1.x;
    if (x_148) {
      let x_152 : vec2<f32> = u_xlat8;
      x_149 = x_152;
    } else {
      let x_154 : vec2<f32> = u_xlat5;
      x_149 = x_154;
    }
    let x_155 : vec2<f32> = x_149;
    let x_156 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  }
  let x_158 : vec4<f32> = u_xlat0;
  let x_163 : vec2<f32> = ((vec2<f32>(x_158.x, x_158.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  let x_168 : f32 = u_xlat0.x;
  u_xlat8.x = (-(abs(x_168)) + 1.0f);
  let x_174 : f32 = u_xlat0.y;
  let x_178 : f32 = u_xlat8.x;
  u_xlat1.z = (-(abs(x_174)) + x_178);
  let x_182 : f32 = u_xlat1.z;
  u_xlat8.x = max(-(x_182), 0.0f);
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : vec4<bool> = (vec4<f32>(x_187.x, x_187.y, x_187.x, x_187.x) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_190.x, x_190.y);
  let x_193 : vec2<f32> = u_xlat8;
  hlslcc_movcTemp = x_193;
  let x_195 : bool = u_xlatb2.x;
  if (x_195) {
    let x_201 : f32 = u_xlat8.x;
    x_197 = -(x_201);
  } else {
    let x_205 : f32 = u_xlat8.x;
    x_197 = x_205;
  }
  let x_206 : f32 = x_197;
  hlslcc_movcTemp.x = x_206;
  let x_209 : bool = u_xlatb2.y;
  if (x_209) {
    let x_214 : f32 = u_xlat8.x;
    x_210 = -(x_214);
  } else {
    let x_218 : f32 = u_xlat8.x;
    x_210 = x_218;
  }
  let x_219 : f32 = x_210;
  hlslcc_movcTemp.y = x_219;
  let x_221 : vec2<f32> = hlslcc_movcTemp;
  u_xlat8 = x_221;
  let x_222 : vec2<f32> = u_xlat8;
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec2<f32> = (x_222 + vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_225.x, x_225.y, x_226.z);
  let x_228 : vec3<f32> = u_xlat1;
  let x_229 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_228, x_229);
  let x_233 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_233);
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = u_xlat1;
  let x_239 : vec3<f32> = (vec3<f32>(x_236.x, x_236.x, x_236.x) * x_238);
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_261 : f32 = x_256.x_BlitMipLevel;
  let x_262 : vec4<f32> = textureSampleLevel(x_BlitCubeTexture, sampler_LinearRepeat, vec3<f32>(x_252.x, x_252.y, x_252.z), x_261);
  u_xlat0 = x_262;
  let x_266 : f32 = u_xlat0.w;
  u_xlat12 = (x_266 + -1.0f);
  let x_270 : f32 = x_256.x_BlitDecodeInstructions.w;
  let x_271 : f32 = u_xlat12;
  u_xlat12 = ((x_270 * x_271) + 1.0f);
  let x_274 : f32 = u_xlat12;
  u_xlat12 = max(x_274, 0.0f);
  let x_276 : f32 = u_xlat12;
  u_xlat12 = log2(x_276);
  let x_278 : f32 = u_xlat12;
  let x_280 : f32 = x_256.x_BlitDecodeInstructions.y;
  u_xlat12 = (x_278 * x_280);
  let x_282 : f32 = u_xlat12;
  u_xlat12 = exp2(x_282);
  let x_284 : f32 = u_xlat12;
  let x_286 : f32 = x_256.x_BlitDecodeInstructions.x;
  u_xlat12 = (x_284 * x_286);
  let x_290 : vec4<f32> = u_xlat0;
  let x_292 : f32 = u_xlat12;
  let x_294 : vec3<f32> = (vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292, x_292, x_292));
  let x_295 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


