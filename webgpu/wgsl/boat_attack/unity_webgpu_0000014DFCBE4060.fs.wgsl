diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BloomTexture_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_Lut_Params : vec4<f32>,
  /* @offset(80) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(96) */
  x_Bloom_Params : vec4<f32>,
  /* @offset(112) */
  x_Bloom_RGBM : f32,
  /* @offset(128) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Grain_Params : vec2<f32>,
  /* @offset(208) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(224) */
  x_Bloom_Texture_TexelSize : vec4<f32>,
  /* @offset(240) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_216 : f32;
  var x_248 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_730 : f32;
  var x_742 : f32;
  var x_754 : f32;
  var x_923 : f32;
  var x_935 : f32;
  var x_947 : f32;
  var x_1151 : f32;
  var x_1163 : f32;
  var x_1175 : f32;
  var x_1265 : f32;
  var x_1277 : f32;
  var x_1289 : f32;
  var x_1346 : f32;
  var x_1358 : f32;
  var x_1370 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat8.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_115);
    let x_118 : f32 = u_xlat8.x;
    let x_119 : f32 = u_xlat15;
    u_xlat8.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat8;
    let x_129 : vec2<f32> = u_xlat14;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_136);
    let x_138 : f32 = u_xlat22;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat22 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_158);
    let x_160 : f32 = u_xlat9;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat9 = (x_166 * x_168);
    let x_171 : f32 = u_xlat9;
    u_xlat16.x = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_177 : f32 = u_xlat9;
    let x_179 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_177 * x_179) + 0.18014100193977355957f);
    let x_184 : f32 = u_xlat9;
    let x_186 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_184 * x_186) + -0.33029949665069580078f);
    let x_191 : f32 = u_xlat9;
    let x_193 : f32 = u_xlat16.x;
    u_xlat9 = ((x_191 * x_193) + 0.99986600875854492188f);
    let x_197 : f32 = u_xlat9;
    let x_199 : f32 = u_xlat2.x;
    u_xlat16.x = (x_197 * x_199);
    let x_204 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_204));
    let x_208 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_208 * -2.0f) + 1.57079637050628662109f);
    let x_214 : bool = u_xlatb23;
    if (x_214) {
      let x_220 : f32 = u_xlat16.x;
      x_216 = x_220;
    } else {
      x_216 = 0.0f;
    }
    let x_222 : f32 = x_216;
    u_xlat16.x = x_222;
    let x_225 : f32 = u_xlat2.x;
    let x_226 : f32 = u_xlat9;
    let x_229 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_225 * x_226) + x_229);
    let x_233 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_233, 1.0f);
    let x_240 : f32 = u_xlat1.x;
    let x_242 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_240 < -(x_242));
    let x_247 : bool = u_xlatb1.x;
    if (x_247) {
      let x_252 : f32 = u_xlat2.x;
      x_248 = -(x_252);
    } else {
      let x_256 : f32 = u_xlat2.x;
      x_248 = x_256;
    }
    let x_257 : f32 = x_248;
    u_xlat1.x = x_257;
    let x_259 : f32 = u_xlat22;
    let x_261 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_259 * x_261) + -1.0f);
    let x_265 : vec4<f32> = u_xlat0;
    let x_267 : vec4<f32> = u_xlat1;
    let x_270 : vec2<f32> = u_xlat14;
    let x_271 : vec2<f32> = ((vec2<f32>(x_265.x, x_265.y) * vec2<f32>(x_267.x, x_267.x)) + x_270);
    let x_272 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_271.x, x_271.y, x_272.z);
  }
  let x_276 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_282 : vec4<f32> = x_25.x_RTHandleScale;
  let x_284 : vec2<f32> = ((-(vec2<f32>(x_276.x, x_276.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_282.x, x_282.y));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_285.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = u_xlat8;
  let x_291 : vec2<f32> = min(vec2<f32>(x_287.x, x_287.y), vec2<f32>(x_289.x, x_289.y));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
  let x_304 : vec4<f32> = u_xlat0;
  let x_308 : f32 = x_25.x_GlobalMipBias.x;
  let x_309 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_304.x, x_304.y), x_308);
  let x_310 : vec3<f32> = vec3<f32>(x_309.x, x_309.y, x_309.z);
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_315 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_320 : vec4<f32> = x_25.x_RTHandleScale;
  let x_322 : vec2<f32> = ((-(vec2<f32>(x_315.x, x_315.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_323.y, x_323.z, x_322.y);
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec3<f32> = u_xlat8;
  let x_329 : vec2<f32> = min(vec2<f32>(x_325.x, x_325.w), vec2<f32>(x_327.x, x_327.y));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_330.y, x_330.z, x_329.y);
  let x_332 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_339 : vec2<f32> = ((vec2<f32>(x_332.x, x_332.w) * vec2<f32>(x_336.z, x_336.w)) + vec2<f32>(0.5f, 0.5f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_340.y, x_340.z, x_339.y);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec2<f32> = floor(vec2<f32>(x_342.x, x_342.w));
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec2<f32> = fract(vec2<f32>(x_347.x, x_347.w));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_350.y, x_350.z, x_349.y);
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_352.x, x_352.w, x_352.x, x_352.w)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_360.x, x_360.w, x_360.x, x_360.w) * x_362) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_366.x, x_366.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec2<f32> = (vec2<f32>(x_372.x, x_372.w) * vec2<f32>(x_374.x, x_374.w));
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_379.x, x_379.y) * x_381) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_386.x, x_386.w, x_386.x, x_386.w) * x_388) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_392 : vec2<f32> = u_xlat16;
  let x_395 : vec2<f32> = (-(x_392) + vec2<f32>(1.0f, 1.0f));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_396.y, x_396.z, x_395.y);
  let x_398 : vec4<f32> = u_xlat3;
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec2<f32> = (-(vec2<f32>(x_398.x, x_398.y)) + vec2<f32>(x_401.x, x_401.w));
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_404.y, x_404.z, x_403.y);
  let x_406 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec2<f32> = (-(vec2<f32>(x_406.z, x_406.w)) + vec2<f32>(x_409.x, x_409.w));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_412.y, x_412.z, x_411.y);
  let x_415 : vec2<f32> = u_xlat16;
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_415 + vec2<f32>(x_416.z, x_416.w));
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec4<f32> = u_xlat3;
  let x_423 : vec2<f32> = (vec2<f32>(x_419.x, x_419.w) + vec2<f32>(x_421.x, x_421.y));
  let x_424 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  let x_426 : vec2<f32> = u_xlat17;
  let x_430 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_426.x, x_426.y));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_433 : vec2<f32> = u_xlat16;
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec2<f32> = ((x_433 * vec2<f32>(x_434.x, x_434.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_437.x, x_437.y);
  let x_440 : vec4<f32> = u_xlat3;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_441.x, x_441.y));
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec2<f32> = u_xlat16;
  let x_450 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.w) * x_448) + vec2<f32>(1.0f, 1.0f));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y) + vec4<f32>(x_456.z, x_456.w, x_456.x, x_456.w));
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_459 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_462 : vec4<f32> = u_xlat5;
  let x_464 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_462 * vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y));
  let x_467 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_467, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_475 : vec4<f32> = u_xlat5;
  let x_477 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_475.x, x_475.y), 0.0f);
  u_xlat6 = x_477;
  let x_481 : vec4<f32> = u_xlat5;
  let x_483 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_481.z, x_481.w), 0.0f);
  u_xlat5 = x_483;
  let x_484 : vec4<f32> = u_xlat3;
  let x_486 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_484.x, x_484.x, x_484.x, x_484.x) * x_486);
  let x_488 : vec2<f32> = u_xlat17;
  let x_490 : vec4<f32> = u_xlat6;
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_488.x, x_488.x, x_488.x, x_488.x) * x_490) + x_492);
  let x_494 : vec4<f32> = u_xlat2;
  let x_496 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_494.x, x_494.y, x_494.x, x_494.y) + vec4<f32>(x_496.z, x_496.y, x_496.x, x_496.y));
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_499 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_501 : vec4<f32> = u_xlat2;
  let x_503 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_501 * vec4<f32>(x_503.x, x_503.y, x_503.x, x_503.y));
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_506, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_511.x, x_511.y), 0.0f);
  u_xlat4 = x_513;
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_517.z, x_517.w), 0.0f);
  u_xlat2 = x_519;
  let x_520 : vec4<f32> = u_xlat2;
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_520 * vec4<f32>(x_521.x, x_521.x, x_521.x, x_521.x));
  let x_524 : vec2<f32> = u_xlat17;
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_524.x, x_524.x, x_524.x, x_524.x) * x_526) + x_528);
  let x_530 : vec4<f32> = u_xlat2;
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_530 * vec4<f32>(x_531.y, x_531.y, x_531.y, x_531.y));
  let x_534 : vec2<f32> = u_xlat17;
  let x_536 : vec4<f32> = u_xlat5;
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_534.y, x_534.y, x_534.y, x_534.y) * x_536) + x_538);
  let x_543 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_543);
  let x_545 : bool = u_xlatb21;
  if (x_545) {
    let x_548 : vec4<f32> = u_xlat2;
    let x_550 : vec4<f32> = u_xlat2;
    let x_552 : vec3<f32> = (vec3<f32>(x_548.w, x_548.w, x_548.w) * vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_553 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat3;
    let x_559 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_560 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  }
  let x_562 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = x_25.x_Bloom_Params;
  let x_568 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_566.x, x_566.x, x_566.x));
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat2;
  let x_574 : vec4<f32> = x_25.x_Bloom_Params;
  let x_577 : vec4<f32> = u_xlat0;
  let x_579 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_574.y, x_574.z, x_574.w)) + vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_585 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_585);
  let x_587 : bool = u_xlatb21;
  if (x_587) {
    let x_590 : vec3<f32> = u_xlat8;
    let x_593 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_596 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) + -(vec2<f32>(x_593.x, x_593.y)));
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
    let x_599 : vec4<f32> = u_xlat1;
    let x_603 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_605 : vec2<f32> = (abs(vec2<f32>(x_599.x, x_599.y)) * vec2<f32>(x_603.z, x_603.z));
    let x_606 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_606.x, x_605.x, x_605.y, x_606.w);
    let x_609 : f32 = u_xlat1.y;
    let x_612 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_609 * x_612);
    let x_616 : vec4<f32> = u_xlat1;
    let x_618 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_616.x, x_616.z), vec2<f32>(x_618.x, x_618.z));
    let x_621 : f32 = u_xlat21;
    u_xlat21 = (-(x_621) + 1.0f);
    let x_624 : f32 = u_xlat21;
    u_xlat21 = max(x_624, 0.0f);
    let x_626 : f32 = u_xlat21;
    u_xlat21 = log2(x_626);
    let x_628 : f32 = u_xlat21;
    let x_630 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_628 * x_630);
    let x_632 : f32 = u_xlat21;
    u_xlat21 = exp2(x_632);
    let x_635 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_639 : vec3<f32> = (-(vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_640 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
    let x_642 : f32 = u_xlat21;
    let x_644 : vec4<f32> = u_xlat1;
    let x_648 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_650 : vec3<f32> = ((vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
    let x_651 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat0;
    let x_655 : vec4<f32> = u_xlat1;
    let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.y, x_655.z));
    let x_658 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  }
  let x_660 : vec4<f32> = u_xlat0;
  let x_664 : vec4<f32> = x_25.x_Lut_Params;
  let x_666 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_664.w, x_664.w, x_664.w));
  let x_667 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = clamp(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_678 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_678);
  let x_680 : bool = u_xlatb21;
  if (x_680) {
    let x_683 : vec4<f32> = u_xlat0;
    let x_687 : vec3<f32> = (vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_688 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat0;
    let x_692 : vec3<f32> = log2(vec3<f32>(x_690.x, x_690.y, x_690.z));
    let x_693 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_695 : vec4<f32> = u_xlat2;
    let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_700 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
    let x_702 : vec4<f32> = u_xlat2;
    let x_704 : vec3<f32> = exp2(vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_705 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_707 : vec4<f32> = u_xlat2;
    let x_714 : vec3<f32> = ((vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_715 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
    let x_720 : vec4<f32> = u_xlat0;
    let x_723 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.x));
    u_xlatb3 = vec3<bool>(x_723.x, x_723.y, x_723.z);
    let x_727 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_727;
    let x_729 : bool = u_xlatb3.x;
    if (x_729) {
      let x_734 : f32 = u_xlat1.x;
      x_730 = x_734;
    } else {
      let x_737 : f32 = u_xlat2.x;
      x_730 = x_737;
    }
    let x_738 : f32 = x_730;
    hlslcc_movcTemp.x = x_738;
    let x_741 : bool = u_xlatb3.y;
    if (x_741) {
      let x_746 : f32 = u_xlat1.y;
      x_742 = x_746;
    } else {
      let x_749 : f32 = u_xlat2.y;
      x_742 = x_749;
    }
    let x_750 : f32 = x_742;
    hlslcc_movcTemp.y = x_750;
    let x_753 : bool = u_xlatb3.z;
    if (x_753) {
      let x_758 : f32 = u_xlat1.z;
      x_754 = x_758;
    } else {
      let x_761 : f32 = u_xlat2.z;
      x_754 = x_761;
    }
    let x_762 : f32 = x_754;
    hlslcc_movcTemp.z = x_762;
    let x_764 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_764;
    let x_765 : vec4<f32> = u_xlat1;
    let x_768 : vec4<f32> = x_25.x_UserLut_Params;
    let x_770 : vec3<f32> = (vec3<f32>(x_765.z, x_765.x, x_765.y) * vec3<f32>(x_768.z, x_768.z, x_768.z));
    let x_771 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
    let x_774 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_774);
    let x_777 : vec4<f32> = x_25.x_UserLut_Params;
    let x_779 : vec2<f32> = (vec2<f32>(x_777.x, x_777.y) * vec2<f32>(0.5f, 0.5f));
    let x_780 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_779.x, x_780.y, x_780.z, x_779.y);
    let x_782 : vec4<f32> = u_xlat2;
    let x_785 : vec4<f32> = x_25.x_UserLut_Params;
    let x_788 : vec4<f32> = u_xlat2;
    let x_790 : vec2<f32> = ((vec2<f32>(x_782.y, x_782.z) * vec2<f32>(x_785.x, x_785.y)) + vec2<f32>(x_788.x, x_788.w));
    let x_791 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_791.x, x_790.x, x_790.y, x_791.w);
    let x_793 : f32 = u_xlat21;
    let x_795 : f32 = x_25.x_UserLut_Params.y;
    let x_798 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_793 * x_795) + x_798);
    let x_805 : vec4<f32> = u_xlat2;
    let x_807 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_805.x, x_805.z), 0.0f);
    let x_808 : vec3<f32> = vec3<f32>(x_807.x, x_807.y, x_807.z);
    let x_809 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
    let x_812 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_812;
    u_xlat4.y = 0.0f;
    let x_815 : vec4<f32> = u_xlat2;
    let x_817 : vec4<f32> = u_xlat4;
    let x_819 : vec2<f32> = (vec2<f32>(x_815.x, x_815.z) + vec2<f32>(x_817.x, x_817.y));
    let x_820 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
    let x_825 : vec4<f32> = u_xlat2;
    let x_827 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_825.x, x_825.y), 0.0f);
    let x_828 : vec3<f32> = vec3<f32>(x_827.x, x_827.y, x_827.z);
    let x_829 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
    let x_832 : f32 = u_xlat1.z;
    let x_834 : f32 = x_25.x_UserLut_Params.z;
    let x_836 : f32 = u_xlat21;
    u_xlat21 = ((x_832 * x_834) + -(x_836));
    let x_839 : vec4<f32> = u_xlat3;
    let x_842 : vec4<f32> = u_xlat2;
    let x_844 : vec3<f32> = (-(vec3<f32>(x_839.x, x_839.y, x_839.z)) + vec3<f32>(x_842.x, x_842.y, x_842.z));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_847 : f32 = u_xlat21;
    let x_849 : vec4<f32> = u_xlat2;
    let x_852 : vec4<f32> = u_xlat3;
    let x_854 : vec3<f32> = ((vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z)) + vec3<f32>(x_852.x, x_852.y, x_852.z));
    let x_855 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
    let x_857 : vec4<f32> = u_xlat1;
    let x_860 : vec4<f32> = u_xlat2;
    let x_862 : vec3<f32> = (-(vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(x_860.x, x_860.y, x_860.z));
    let x_863 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_866 : vec4<f32> = x_25.x_UserLut_Params;
    let x_868 : vec4<f32> = u_xlat2;
    let x_871 : vec4<f32> = u_xlat1;
    let x_873 : vec3<f32> = ((vec3<f32>(x_866.w, x_866.w, x_866.w) * vec3<f32>(x_868.x, x_868.y, x_868.z)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
    let x_874 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
    let x_876 : vec4<f32> = u_xlat1;
    let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_881 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_883 : vec4<f32> = u_xlat1;
    let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_888 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    let x_890 : vec4<f32> = u_xlat3;
    let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_895 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
    let x_897 : vec4<f32> = u_xlat3;
    let x_900 : vec3<f32> = log2(abs(vec3<f32>(x_897.x, x_897.y, x_897.z)));
    let x_901 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
    let x_903 : vec4<f32> = u_xlat3;
    let x_907 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_908 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_910 : vec4<f32> = u_xlat3;
    let x_912 : vec3<f32> = exp2(vec3<f32>(x_910.x, x_910.y, x_910.z));
    let x_913 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
    let x_917 : vec4<f32> = u_xlat1;
    let x_919 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.x));
    u_xlatb1 = vec3<bool>(x_919.x, x_919.y, x_919.z);
    let x_922 : bool = u_xlatb1.x;
    if (x_922) {
      let x_927 : f32 = u_xlat2.x;
      x_923 = x_927;
    } else {
      let x_930 : f32 = u_xlat3.x;
      x_923 = x_930;
    }
    let x_931 : f32 = x_923;
    u_xlat0.x = x_931;
    let x_934 : bool = u_xlatb1.y;
    if (x_934) {
      let x_939 : f32 = u_xlat2.y;
      x_935 = x_939;
    } else {
      let x_942 : f32 = u_xlat3.y;
      x_935 = x_942;
    }
    let x_943 : f32 = x_935;
    u_xlat0.y = x_943;
    let x_946 : bool = u_xlatb1.z;
    if (x_946) {
      let x_951 : f32 = u_xlat2.z;
      x_947 = x_951;
    } else {
      let x_954 : f32 = u_xlat3.z;
      x_947 = x_954;
    }
    let x_955 : f32 = x_947;
    u_xlat0.z = x_955;
  }
  let x_957 : vec4<f32> = u_xlat0;
  let x_960 : vec4<f32> = x_25.x_Lut_Params;
  let x_962 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(x_960.z, x_960.z, x_960.z));
  let x_963 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_962.z);
  let x_966 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_966);
  let x_969 : vec4<f32> = x_25.x_Lut_Params;
  let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.5f, 0.5f));
  let x_972 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat0;
  let x_977 : vec4<f32> = x_25.x_Lut_Params;
  let x_980 : vec4<f32> = u_xlat1;
  let x_982 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_977.x, x_977.y)) + vec2<f32>(x_980.x, x_980.y));
  let x_983 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_983.x, x_982.x, x_982.y, x_983.w);
  let x_985 : f32 = u_xlat21;
  let x_987 : f32 = x_25.x_Lut_Params.y;
  let x_990 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_985 * x_987) + x_990);
  let x_997 : vec4<f32> = u_xlat1;
  let x_999 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_997.x, x_997.z), 0.0f);
  let x_1000 : vec3<f32> = vec3<f32>(x_999.x, x_999.y, x_999.z);
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1004 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1004;
  u_xlat0.y = 0.0f;
  let x_1007 : vec4<f32> = u_xlat0;
  let x_1009 : vec4<f32> = u_xlat1;
  let x_1011 : vec2<f32> = (vec2<f32>(x_1007.x, x_1007.y) + vec2<f32>(x_1009.x, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
  let x_1017 : vec4<f32> = u_xlat0;
  let x_1019 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1017.x, x_1017.y), 0.0f);
  let x_1020 : vec3<f32> = vec3<f32>(x_1019.x, x_1019.y, x_1019.z);
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1024 : f32 = u_xlat0.z;
  let x_1026 : f32 = x_25.x_Lut_Params.z;
  let x_1028 : f32 = u_xlat21;
  u_xlat0.x = ((x_1024 * x_1026) + -(x_1028));
  let x_1033 : vec4<f32> = u_xlat2;
  let x_1036 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat0;
  let x_1041 : vec3<f32> = u_xlat7;
  let x_1043 : vec4<f32> = u_xlat2;
  let x_1045 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.x, x_1039.x) * x_1041) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec2<f32> = vs_TEXCOORD0;
  let x_1051 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1055 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1057 : vec2<f32> = ((x_1048 * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1055.z, x_1055.w));
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
  let x_1065 : vec4<f32> = u_xlat1;
  let x_1068 : f32 = x_25.x_GlobalMipBias.x;
  let x_1069 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1065.x, x_1065.y), x_1068);
  u_xlat21 = x_1069.w;
  let x_1071 : f32 = u_xlat21;
  u_xlat21 = (x_1071 + -0.5f);
  let x_1073 : f32 = u_xlat21;
  let x_1074 : f32 = u_xlat21;
  u_xlat21 = (x_1073 + x_1074);
  let x_1076 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1085 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1085);
  let x_1090 : f32 = x_25.x_Grain_Params.y;
  let x_1092 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1090 * -(x_1092)) + 1.0f);
  let x_1097 : f32 = u_xlat21;
  let x_1099 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1097, x_1097, x_1097) * vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : vec3<f32> = u_xlat8;
  let x_1105 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1102 * vec3<f32>(x_1105.x, x_1105.x, x_1105.x));
  let x_1108 : vec3<f32> = u_xlat8;
  let x_1109 : vec4<f32> = u_xlat1;
  let x_1112 : vec4<f32> = u_xlat0;
  let x_1114 : vec3<f32> = ((x_1108 * vec3<f32>(x_1109.x, x_1109.x, x_1109.x)) + vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat0;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat0;
  let x_1125 : vec3<f32> = log2(abs(vec3<f32>(x_1122.x, x_1122.y, x_1122.z)));
  let x_1126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec4<f32> = u_xlat2;
  let x_1130 : vec3<f32> = (vec3<f32>(x_1128.x, x_1128.y, x_1128.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec4<f32> = u_xlat2;
  let x_1135 : vec3<f32> = exp2(vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat2;
  let x_1141 : vec3<f32> = ((vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
  let x_1145 : vec4<f32> = u_xlat0;
  let x_1147 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1145.x));
  u_xlatb0 = vec3<bool>(x_1147.x, x_1147.y, x_1147.z);
  let x_1150 : bool = u_xlatb0.x;
  if (x_1150) {
    let x_1155 : f32 = u_xlat1.x;
    x_1151 = x_1155;
  } else {
    let x_1158 : f32 = u_xlat2.x;
    x_1151 = x_1158;
  }
  let x_1159 : f32 = x_1151;
  u_xlat0.x = x_1159;
  let x_1162 : bool = u_xlatb0.y;
  if (x_1162) {
    let x_1167 : f32 = u_xlat1.y;
    x_1163 = x_1167;
  } else {
    let x_1170 : f32 = u_xlat2.y;
    x_1163 = x_1170;
  }
  let x_1171 : f32 = x_1163;
  u_xlat0.y = x_1171;
  let x_1174 : bool = u_xlatb0.z;
  if (x_1174) {
    let x_1179 : f32 = u_xlat1.z;
    x_1175 = x_1179;
  } else {
    let x_1182 : f32 = u_xlat2.z;
    x_1175 = x_1182;
  }
  let x_1183 : f32 = x_1175;
  u_xlat0.z = x_1183;
  let x_1185 : vec2<f32> = vs_TEXCOORD0;
  let x_1188 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1192 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1194 : vec2<f32> = ((x_1185 * vec2<f32>(x_1188.x, x_1188.y)) + vec2<f32>(x_1192.z, x_1192.w));
  let x_1195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1205 : f32 = x_25.x_GlobalMipBias.x;
  let x_1206 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1202.x, x_1202.y), x_1205);
  u_xlat21 = x_1206.w;
  let x_1208 : f32 = u_xlat21;
  u_xlat21 = ((x_1208 * 2.0f) + -1.0f);
  let x_1212 : f32 = u_xlat21;
  u_xlatb1.x = (x_1212 >= 0.0f);
  let x_1216 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1216);
  let x_1219 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1219)) + 1.0f);
  let x_1223 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1223);
  let x_1225 : f32 = u_xlat21;
  u_xlat21 = (-(x_1225) + 1.0f);
  let x_1228 : f32 = u_xlat21;
  let x_1230 : f32 = u_xlat1.x;
  u_xlat21 = (x_1228 * x_1230);
  let x_1232 : vec4<f32> = u_xlat0;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1232.x, x_1232.y, x_1232.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1235 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat0;
  let x_1240 : vec3<f32> = log2(abs(vec3<f32>(x_1237.x, x_1237.y, x_1237.z)));
  let x_1241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec4<f32> = u_xlat2;
  let x_1245 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat2;
  let x_1250 : vec3<f32> = exp2(vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec4<f32> = u_xlat2;
  let x_1256 : vec3<f32> = ((vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat0;
  let x_1261 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1259.x));
  u_xlatb0 = vec3<bool>(x_1261.x, x_1261.y, x_1261.z);
  let x_1264 : bool = u_xlatb0.x;
  if (x_1264) {
    let x_1269 : f32 = u_xlat1.x;
    x_1265 = x_1269;
  } else {
    let x_1272 : f32 = u_xlat2.x;
    x_1265 = x_1272;
  }
  let x_1273 : f32 = x_1265;
  u_xlat0.x = x_1273;
  let x_1276 : bool = u_xlatb0.y;
  if (x_1276) {
    let x_1281 : f32 = u_xlat1.y;
    x_1277 = x_1281;
  } else {
    let x_1284 : f32 = u_xlat2.y;
    x_1277 = x_1284;
  }
  let x_1285 : f32 = x_1277;
  u_xlat0.y = x_1285;
  let x_1288 : bool = u_xlatb0.z;
  if (x_1288) {
    let x_1293 : f32 = u_xlat1.z;
    x_1289 = x_1293;
  } else {
    let x_1296 : f32 = u_xlat2.z;
    x_1289 = x_1296;
  }
  let x_1297 : f32 = x_1289;
  u_xlat0.z = x_1297;
  let x_1299 : f32 = u_xlat21;
  let x_1304 : vec4<f32> = u_xlat0;
  let x_1306 : vec3<f32> = ((vec3<f32>(x_1299, x_1299, x_1299) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat0;
  let x_1311 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : vec4<f32> = u_xlat0;
  let x_1316 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1319 : vec4<f32> = u_xlat2;
  let x_1321 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1324 : vec4<f32> = u_xlat2;
  let x_1327 : vec3<f32> = log2(abs(vec3<f32>(x_1324.x, x_1324.y, x_1324.z)));
  let x_1328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat2;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec4<f32> = u_xlat2;
  let x_1337 : vec3<f32> = exp2(vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec4<f32> = u_xlat0;
  let x_1342 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.x));
  u_xlatb0 = vec3<bool>(x_1342.x, x_1342.y, x_1342.z);
  let x_1345 : bool = u_xlatb0.x;
  if (x_1345) {
    let x_1350 : f32 = u_xlat1.x;
    x_1346 = x_1350;
  } else {
    let x_1353 : f32 = u_xlat2.x;
    x_1346 = x_1353;
  }
  let x_1354 : f32 = x_1346;
  u_xlat0.x = x_1354;
  let x_1357 : bool = u_xlatb0.y;
  if (x_1357) {
    let x_1362 : f32 = u_xlat1.y;
    x_1358 = x_1362;
  } else {
    let x_1365 : f32 = u_xlat2.y;
    x_1358 = x_1365;
  }
  let x_1366 : f32 = x_1358;
  u_xlat0.y = x_1366;
  let x_1369 : bool = u_xlatb0.z;
  if (x_1369) {
    let x_1374 : f32 = u_xlat1.z;
    x_1370 = x_1374;
  } else {
    let x_1377 : f32 = u_xlat2.z;
    x_1370 = x_1377;
  }
  let x_1378 : f32 = x_1370;
  u_xlat0.z = x_1378;
  let x_1382 : vec4<f32> = u_xlat0;
  let x_1385 : vec3<f32> = max(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1386 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
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


