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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_512 : f32;
  var x_524 : f32;
  var x_536 : f32;
  var x_687 : f32;
  var x_699 : f32;
  var x_711 : f32;
  var x_917 : f32;
  var x_930 : f32;
  var x_942 : f32;
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
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb6 = (0.0f < x_79);
  let x_81 : bool = u_xlatb6;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.18014100193977355957f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.33029949665069580078f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.99986600875854492188f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.57079637050628662109f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_236 : f32 = u_xlat2.x;
      x_232 = -(x_236);
    } else {
      let x_240 : f32 = u_xlat2.x;
      x_232 = x_240;
    }
    let x_241 : f32 = x_232;
    u_xlat1.x = x_241;
    let x_243 : f32 = u_xlat16;
    let x_245 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_243 * x_245) + -1.0f);
    let x_249 : vec4<f32> = u_xlat0;
    let x_251 : vec4<f32> = u_xlat1;
    let x_254 : vec2<f32> = u_xlat10;
    let x_255 : vec2<f32> = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.x)) + x_254);
    let x_256 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_255.x, x_255.y, x_256.z);
  }
  let x_260 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_266 : vec4<f32> = x_25.x_RTHandleScale;
  let x_268 : vec2<f32> = ((-(vec2<f32>(x_260.x, x_260.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_266.x, x_266.y));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = u_xlat6;
  let x_275 : vec2<f32> = min(vec2<f32>(x_271.x, x_271.y), vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_292 : f32 = x_25.x_GlobalMipBias.x;
  let x_293 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_288.x, x_288.y), x_292);
  let x_294 : vec3<f32> = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_299 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_304 : vec4<f32> = x_25.x_RTHandleScale;
  let x_306 : vec2<f32> = ((-(vec2<f32>(x_299.x, x_299.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_304.x, x_304.y));
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_307.y, x_307.z, x_306.y);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = u_xlat6;
  let x_313 : vec2<f32> = min(vec2<f32>(x_309.x, x_309.w), vec2<f32>(x_311.x, x_311.y));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_314.y, x_314.z, x_313.y);
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : f32 = x_25.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_320.x, x_320.w), x_323);
  u_xlat2 = x_324;
  let x_328 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_328);
  let x_330 : bool = u_xlatb15;
  if (x_330) {
    let x_333 : vec4<f32> = u_xlat2;
    let x_335 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_333.w, x_333.w, x_333.w) * vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec3<f32> = u_xlat3;
    let x_341 : vec3<f32> = (x_338 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  }
  let x_344 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = x_25.x_Bloom_Params;
  let x_350 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_348.x, x_348.x, x_348.x));
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat2;
  let x_356 : vec4<f32> = x_25.x_Bloom_Params;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_356.y, x_356.z, x_356.w)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_367 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_367);
  let x_369 : bool = u_xlatb15;
  if (x_369) {
    let x_372 : vec3<f32> = u_xlat6;
    let x_375 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_378 : vec2<f32> = (vec2<f32>(x_372.x, x_372.y) + -(vec2<f32>(x_375.x, x_375.y)));
    let x_379 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    let x_381 : vec4<f32> = u_xlat1;
    let x_385 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_387 : vec2<f32> = (abs(vec2<f32>(x_381.x, x_381.y)) * vec2<f32>(x_385.z, x_385.z));
    let x_388 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_388.x, x_387.x, x_387.y, x_388.w);
    let x_391 : f32 = u_xlat1.y;
    let x_394 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_391 * x_394);
    let x_398 : vec4<f32> = u_xlat1;
    let x_400 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_398.x, x_398.z), vec2<f32>(x_400.x, x_400.z));
    let x_403 : f32 = u_xlat15;
    u_xlat15 = (-(x_403) + 1.0f);
    let x_406 : f32 = u_xlat15;
    u_xlat15 = max(x_406, 0.0f);
    let x_408 : f32 = u_xlat15;
    u_xlat15 = log2(x_408);
    let x_410 : f32 = u_xlat15;
    let x_412 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_410 * x_412);
    let x_414 : f32 = u_xlat15;
    u_xlat15 = exp2(x_414);
    let x_417 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_421 : vec3<f32> = (-(vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_422 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : f32 = u_xlat15;
    let x_426 : vec4<f32> = u_xlat1;
    let x_430 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_432 : vec3<f32> = ((vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat0;
    let x_437 : vec4<f32> = u_xlat1;
    let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  }
  let x_442 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = x_25.x_Lut_Params;
  let x_448 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_446.w, x_446.w, x_446.w));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat0;
  let x_455 : vec3<f32> = clamp(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_460 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_460);
  let x_462 : bool = u_xlatb15;
  if (x_462) {
    let x_465 : vec4<f32> = u_xlat0;
    let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_470 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_472 : vec4<f32> = u_xlat0;
    let x_474 : vec3<f32> = log2(vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_475 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_477 : vec4<f32> = u_xlat2;
    let x_481 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_482 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
    let x_484 : vec4<f32> = u_xlat2;
    let x_486 : vec3<f32> = exp2(vec3<f32>(x_484.x, x_484.y, x_484.z));
    let x_487 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat2;
    let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_497 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_502 : vec4<f32> = u_xlat0;
    let x_505 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_502.x, x_502.y, x_502.z, x_502.x));
    u_xlatb3 = vec3<bool>(x_505.x, x_505.y, x_505.z);
    let x_509 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_509;
    let x_511 : bool = u_xlatb3.x;
    if (x_511) {
      let x_516 : f32 = u_xlat1.x;
      x_512 = x_516;
    } else {
      let x_519 : f32 = u_xlat2.x;
      x_512 = x_519;
    }
    let x_520 : f32 = x_512;
    hlslcc_movcTemp.x = x_520;
    let x_523 : bool = u_xlatb3.y;
    if (x_523) {
      let x_528 : f32 = u_xlat1.y;
      x_524 = x_528;
    } else {
      let x_531 : f32 = u_xlat2.y;
      x_524 = x_531;
    }
    let x_532 : f32 = x_524;
    hlslcc_movcTemp.y = x_532;
    let x_535 : bool = u_xlatb3.z;
    if (x_535) {
      let x_540 : f32 = u_xlat1.z;
      x_536 = x_540;
    } else {
      let x_543 : f32 = u_xlat2.z;
      x_536 = x_543;
    }
    let x_544 : f32 = x_536;
    hlslcc_movcTemp.z = x_544;
    let x_546 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_546;
    let x_547 : vec4<f32> = u_xlat1;
    let x_550 : vec4<f32> = x_25.x_UserLut_Params;
    let x_552 : vec3<f32> = (vec3<f32>(x_547.z, x_547.x, x_547.y) * vec3<f32>(x_550.z, x_550.z, x_550.z));
    let x_553 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_556 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_556);
    let x_559 : vec4<f32> = x_25.x_UserLut_Params;
    let x_561 : vec2<f32> = (vec2<f32>(x_559.x, x_559.y) * vec2<f32>(0.5f, 0.5f));
    let x_562 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_561.x, x_562.y, x_562.z, x_561.y);
    let x_564 : vec4<f32> = u_xlat2;
    let x_567 : vec4<f32> = x_25.x_UserLut_Params;
    let x_570 : vec4<f32> = u_xlat2;
    let x_572 : vec2<f32> = ((vec2<f32>(x_564.y, x_564.z) * vec2<f32>(x_567.x, x_567.y)) + vec2<f32>(x_570.x, x_570.w));
    let x_573 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_573.x, x_572.x, x_572.y, x_573.w);
    let x_575 : f32 = u_xlat15;
    let x_577 : f32 = x_25.x_UserLut_Params.y;
    let x_580 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_575 * x_577) + x_580);
    let x_587 : vec4<f32> = u_xlat2;
    let x_589 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_587.x, x_587.z), 0.0f);
    u_xlat3 = vec3<f32>(x_589.x, x_589.y, x_589.z);
    let x_593 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_593;
    u_xlat4.y = 0.0f;
    let x_596 : vec4<f32> = u_xlat2;
    let x_598 : vec2<f32> = u_xlat4;
    let x_599 : vec2<f32> = (vec2<f32>(x_596.x, x_596.z) + x_598);
    let x_600 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
    let x_605 : vec4<f32> = u_xlat2;
    let x_607 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_605.x, x_605.y), 0.0f);
    let x_608 : vec3<f32> = vec3<f32>(x_607.x, x_607.y, x_607.z);
    let x_609 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    let x_612 : f32 = u_xlat1.z;
    let x_614 : f32 = x_25.x_UserLut_Params.z;
    let x_616 : f32 = u_xlat15;
    u_xlat15 = ((x_612 * x_614) + -(x_616));
    let x_619 : vec3<f32> = u_xlat3;
    let x_621 : vec4<f32> = u_xlat2;
    let x_623 : vec3<f32> = (-(x_619) + vec3<f32>(x_621.x, x_621.y, x_621.z));
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
    let x_626 : f32 = u_xlat15;
    let x_628 : vec4<f32> = u_xlat2;
    let x_631 : vec3<f32> = u_xlat3;
    let x_632 : vec3<f32> = ((vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + x_631);
    let x_633 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
    let x_635 : vec4<f32> = u_xlat1;
    let x_638 : vec4<f32> = u_xlat2;
    let x_640 : vec3<f32> = (-(vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
    let x_641 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
    let x_644 : vec4<f32> = x_25.x_UserLut_Params;
    let x_646 : vec4<f32> = u_xlat2;
    let x_649 : vec4<f32> = u_xlat1;
    let x_651 : vec3<f32> = ((vec3<f32>(x_644.w, x_644.w, x_644.w) * vec3<f32>(x_646.x, x_646.y, x_646.z)) + vec3<f32>(x_649.x, x_649.y, x_649.z));
    let x_652 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
    let x_654 : vec4<f32> = u_xlat1;
    let x_658 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_659 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
    let x_661 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_666 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_666 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_670 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_670));
    let x_673 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_673 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_677 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_677);
    let x_681 : vec4<f32> = u_xlat1;
    let x_683 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_681.x, x_681.y, x_681.z, x_681.x));
    u_xlatb1 = vec3<bool>(x_683.x, x_683.y, x_683.z);
    let x_686 : bool = u_xlatb1.x;
    if (x_686) {
      let x_691 : f32 = u_xlat2.x;
      x_687 = x_691;
    } else {
      let x_694 : f32 = u_xlat3.x;
      x_687 = x_694;
    }
    let x_695 : f32 = x_687;
    u_xlat0.x = x_695;
    let x_698 : bool = u_xlatb1.y;
    if (x_698) {
      let x_703 : f32 = u_xlat2.y;
      x_699 = x_703;
    } else {
      let x_706 : f32 = u_xlat3.y;
      x_699 = x_706;
    }
    let x_707 : f32 = x_699;
    u_xlat0.y = x_707;
    let x_710 : bool = u_xlatb1.z;
    if (x_710) {
      let x_715 : f32 = u_xlat2.z;
      x_711 = x_715;
    } else {
      let x_718 : f32 = u_xlat3.z;
      x_711 = x_718;
    }
    let x_719 : f32 = x_711;
    u_xlat0.z = x_719;
  }
  let x_721 : vec4<f32> = u_xlat0;
  let x_724 : vec4<f32> = x_25.x_Lut_Params;
  let x_726 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_724.z, x_724.z, x_724.z));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_726.z);
  let x_730 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_730);
  let x_733 : vec4<f32> = x_25.x_Lut_Params;
  let x_735 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) * vec2<f32>(0.5f, 0.5f));
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat0;
  let x_741 : vec4<f32> = x_25.x_Lut_Params;
  let x_744 : vec4<f32> = u_xlat1;
  let x_746 : vec2<f32> = ((vec2<f32>(x_738.x, x_738.y) * vec2<f32>(x_741.x, x_741.y)) + vec2<f32>(x_744.x, x_744.y));
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_746.x, x_746.y, x_747.w);
  let x_749 : f32 = u_xlat15;
  let x_751 : f32 = x_25.x_Lut_Params.y;
  let x_754 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_749 * x_751) + x_754);
  let x_761 : vec4<f32> = u_xlat1;
  let x_763 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_761.x, x_761.z), 0.0f);
  let x_764 : vec3<f32> = vec3<f32>(x_763.x, x_763.y, x_763.z);
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_768 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_768;
  u_xlat0.y = 0.0f;
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec4<f32> = u_xlat1;
  let x_775 : vec2<f32> = (vec2<f32>(x_771.x, x_771.y) + vec2<f32>(x_773.x, x_773.z));
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_781.x, x_781.y), 0.0f);
  let x_784 : vec3<f32> = vec3<f32>(x_783.x, x_783.y, x_783.z);
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_788 : f32 = u_xlat0.z;
  let x_790 : f32 = x_25.x_Lut_Params.z;
  let x_792 : f32 = u_xlat15;
  u_xlat0.x = ((x_788 * x_790) + -(x_792));
  let x_797 : vec4<f32> = u_xlat2;
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_797.x, x_797.y, x_797.z)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = u_xlat5;
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * x_805) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec2<f32> = vs_TEXCOORD0;
  let x_815 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_819 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_821 : vec2<f32> = ((x_812 * vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(x_819.z, x_819.w));
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
  let x_829 : vec4<f32> = u_xlat1;
  let x_832 : f32 = x_25.x_GlobalMipBias.x;
  let x_833 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_829.x, x_829.y), x_832);
  u_xlat15 = x_833.w;
  let x_835 : f32 = u_xlat15;
  u_xlat15 = (x_835 + -0.5f);
  let x_837 : f32 = u_xlat15;
  let x_838 : f32 = u_xlat15;
  u_xlat15 = (x_837 + x_838);
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_849 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_849);
  let x_854 : f32 = x_25.x_Grain_Params.y;
  let x_856 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_854 * -(x_856)) + 1.0f);
  let x_861 : f32 = u_xlat15;
  let x_863 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_861, x_861, x_861) * vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec3<f32> = u_xlat6;
  let x_869 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_866 * vec3<f32>(x_869.x, x_869.x, x_869.x));
  let x_872 : vec3<f32> = u_xlat6;
  let x_873 : vec4<f32> = u_xlat1;
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec3<f32> = ((x_872 * vec3<f32>(x_873.x, x_873.x, x_873.x)) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat0;
  let x_889 : vec3<f32> = log2(abs(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat2;
  let x_894 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_895 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat2;
  let x_899 : vec3<f32> = exp2(vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat2;
  let x_905 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_906 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_909 : vec4<f32> = u_xlat0;
  let x_911 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_909.x, x_909.y, x_909.z, x_909.x));
  u_xlatb0 = vec3<bool>(x_911.x, x_911.y, x_911.z);
  let x_916 : bool = u_xlatb0.x;
  if (x_916) {
    let x_921 : f32 = u_xlat1.x;
    x_917 = x_921;
  } else {
    let x_924 : f32 = u_xlat2.x;
    x_917 = x_924;
  }
  let x_925 : f32 = x_917;
  SV_Target0.x = x_925;
  let x_929 : bool = u_xlatb0.y;
  if (x_929) {
    let x_934 : f32 = u_xlat1.y;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat2.y;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  SV_Target0.y = x_938;
  let x_941 : bool = u_xlatb0.z;
  if (x_941) {
    let x_946 : f32 = u_xlat1.z;
    x_942 = x_946;
  } else {
    let x_949 : f32 = u_xlat2.z;
    x_942 = x_949;
  }
  let x_950 : f32 = x_942;
  SV_Target0.z = x_950;
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


