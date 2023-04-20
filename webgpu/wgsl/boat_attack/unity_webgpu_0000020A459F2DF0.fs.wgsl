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
  x_Chroma_Params : f32,
  /* @offset(176) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(192) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(208) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_917 : f32;
  var x_929 : f32;
  var x_941 : f32;
  var x_1086 : f32;
  var x_1098 : f32;
  var x_1110 : f32;
  var x_1288 : f32;
  var x_1300 : f32;
  var x_1312 : f32;
  var x_1367 : f32;
  var x_1379 : f32;
  var x_1391 : f32;
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
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat15 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat15.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat15.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat15.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat15.y;
    u_xlat22 = (1.0f / x_113);
    let x_116 : f32 = u_xlat15.x;
    let x_117 : f32 = u_xlat22;
    u_xlat15.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat15;
    let x_127 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat2.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat9 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat16.x = max(abs(x_153), 1.0f);
    let x_158 : f32 = u_xlat16.x;
    u_xlat16.x = (1.0f / x_158);
    let x_162 : f32 = u_xlat16.x;
    let x_163 : f32 = u_xlat9;
    u_xlat9 = (x_162 * x_163);
    let x_165 : f32 = u_xlat9;
    let x_166 : f32 = u_xlat9;
    u_xlat16.x = (x_165 * x_166);
    let x_171 : f32 = u_xlat16.x;
    u_xlat23 = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_177 : f32 = u_xlat16.x;
    let x_178 : f32 = u_xlat23;
    u_xlat23 = ((x_177 * x_178) + 0.18014100193977355957f);
    let x_183 : f32 = u_xlat16.x;
    let x_184 : f32 = u_xlat23;
    u_xlat23 = ((x_183 * x_184) + -0.33029949665069580078f);
    let x_189 : f32 = u_xlat16.x;
    let x_190 : f32 = u_xlat23;
    u_xlat16.x = ((x_189 * x_190) + 0.99986600875854492188f);
    let x_196 : f32 = u_xlat16.x;
    let x_197 : f32 = u_xlat9;
    u_xlat23 = (x_196 * x_197);
    let x_203 : f32 = u_xlat1.x;
    u_xlatb3.x = (1.0f < abs(x_203));
    let x_207 : f32 = u_xlat23;
    u_xlat23 = ((x_207 * -2.0f) + 1.57079637050628662109f);
    let x_213 : bool = u_xlatb3.x;
    let x_214 : f32 = u_xlat23;
    u_xlat23 = select(0.0f, x_214, x_213);
    let x_216 : f32 = u_xlat9;
    let x_218 : f32 = u_xlat16.x;
    let x_220 : f32 = u_xlat23;
    u_xlat9 = ((x_216 * x_218) + x_220);
    let x_223 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_223, 1.0f);
    let x_228 : f32 = u_xlat1.x;
    let x_230 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_228 < -(x_230));
    let x_235 : bool = u_xlatb1.x;
    if (x_235) {
      let x_240 : f32 = u_xlat9;
      x_237 = -(x_240);
    } else {
      let x_243 : f32 = u_xlat9;
      x_237 = x_243;
    }
    let x_244 : f32 = x_237;
    u_xlat1.x = x_244;
    let x_247 : f32 = u_xlat2.x;
    let x_249 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_247 * x_249) + -1.0f);
    let x_253 : vec4<f32> = u_xlat0;
    let x_255 : vec3<f32> = u_xlat1;
    let x_258 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_253.x, x_253.y) * vec2<f32>(x_255.x, x_255.x)) + x_258);
  }
  let x_260 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_260.x, x_260.y, x_260.x, x_260.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_267 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_267.z, x_267.w), vec2<f32>(x_269.z, x_269.w));
  let x_273 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_273 * vec4<f32>(x_274.x, x_274.x, x_274.x, x_274.x));
  let x_277 : vec4<f32> = u_xlat0;
  let x_280 : f32 = x_25.x_Chroma_Params;
  u_xlat0 = (x_277 * vec4<f32>(x_280, x_280, x_280, x_280));
  let x_285 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_291 : vec4<f32> = x_25.x_RTHandleScale;
  let x_293 : vec2<f32> = ((-(vec2<f32>(x_285.x, x_285.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_291.x, x_291.y));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_294.z, x_294.w);
  let x_296 : vec2<f32> = u_xlat15;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat16 = min(x_296, vec2<f32>(x_297.x, x_297.y));
  let x_310 : vec2<f32> = u_xlat16;
  let x_313 : f32 = x_25.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_310, x_313);
  u_xlat3.x = x_314.x;
  let x_317 : vec4<f32> = u_xlat0;
  let x_322 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_317 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_322.x, x_322.y, x_322.x, x_322.y));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_325 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat4 = ((x_329 * vec4<f32>(x_331.z, x_331.z, x_331.z, x_331.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_336 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_342 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = ((x_336 * vec4<f32>(x_338.z, x_338.z, x_338.z, x_338.z)) + -(vec4<f32>(x_342.x, x_342.y, x_342.x, x_342.y)));
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = (x_346 * vec4<f32>(x_348.z, x_348.w, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_351.x, x_351.y), vec2<f32>(x_353.x, x_353.y));
  let x_358 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_358);
  let x_361 : bool = u_xlatb8;
  if (x_361) {
    let x_364 : vec3<f32> = u_xlat1;
    let x_367 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat16 = (vec2<f32>(x_364.x, x_364.x) * vec2<f32>(x_367.x, x_367.y));
    let x_372 : f32 = u_xlat16.x;
    u_xlat5 = sin(x_372);
    let x_376 : f32 = u_xlat16.x;
    u_xlat6 = cos(x_376);
    let x_378 : f32 = u_xlat5;
    let x_379 : f32 = u_xlat6;
    u_xlat16.x = (x_378 / x_379);
    let x_383 : f32 = u_xlat16.y;
    u_xlat23 = (1.0f / x_383);
    let x_386 : f32 = u_xlat16.x;
    let x_387 : f32 = u_xlat23;
    u_xlat16.x = ((x_386 * x_387) + -1.0f);
    let x_391 : vec4<f32> = u_xlat0;
    let x_393 : vec2<f32> = u_xlat16;
    let x_396 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_393.x, x_393.x)) + vec2<f32>(x_396.x, x_396.y));
  } else {
    let x_402 : f32 = u_xlat1.x;
    u_xlat24 = (1.0f / x_402);
    let x_404 : f32 = u_xlat24;
    let x_406 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat24 = (x_404 * x_406);
    let x_409 : f32 = u_xlat1.x;
    let x_411 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_409 * x_411);
    let x_415 : f32 = u_xlat1.x;
    u_xlat5 = min(abs(x_415), 1.0f);
    let x_420 : f32 = u_xlat1.x;
    u_xlat12 = max(abs(x_420), 1.0f);
    let x_423 : f32 = u_xlat12;
    u_xlat12 = (1.0f / x_423);
    let x_425 : f32 = u_xlat12;
    let x_426 : f32 = u_xlat5;
    u_xlat5 = (x_425 * x_426);
    let x_428 : f32 = u_xlat5;
    let x_429 : f32 = u_xlat5;
    u_xlat12 = (x_428 * x_429);
    let x_432 : f32 = u_xlat12;
    u_xlat19 = ((x_432 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_435 : f32 = u_xlat12;
    let x_436 : f32 = u_xlat19;
    u_xlat19 = ((x_435 * x_436) + 0.18014100193977355957f);
    let x_439 : f32 = u_xlat12;
    let x_440 : f32 = u_xlat19;
    u_xlat19 = ((x_439 * x_440) + -0.33029949665069580078f);
    let x_443 : f32 = u_xlat12;
    let x_444 : f32 = u_xlat19;
    u_xlat12 = ((x_443 * x_444) + 0.99986600875854492188f);
    let x_447 : f32 = u_xlat12;
    let x_448 : f32 = u_xlat5;
    u_xlat19 = (x_447 * x_448);
    let x_452 : f32 = u_xlat1.x;
    u_xlatb26 = (1.0f < abs(x_452));
    let x_455 : f32 = u_xlat19;
    u_xlat19 = ((x_455 * -2.0f) + 1.57079637050628662109f);
    let x_458 : bool = u_xlatb26;
    let x_459 : f32 = u_xlat19;
    u_xlat19 = select(0.0f, x_459, x_458);
    let x_461 : f32 = u_xlat5;
    let x_462 : f32 = u_xlat12;
    let x_464 : f32 = u_xlat19;
    u_xlat5 = ((x_461 * x_462) + x_464);
    let x_467 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_467, 1.0f);
    let x_471 : f32 = u_xlat1.x;
    let x_473 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_471 < -(x_473));
    let x_478 : bool = u_xlatb1.x;
    if (x_478) {
      let x_482 : f32 = u_xlat5;
      x_479 = -(x_482);
    } else {
      let x_485 : f32 = u_xlat5;
      x_479 = x_485;
    }
    let x_486 : f32 = x_479;
    u_xlat1.x = x_486;
    let x_488 : f32 = u_xlat24;
    let x_490 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_488 * x_490) + -1.0f);
    let x_494 : vec4<f32> = u_xlat0;
    let x_496 : vec3<f32> = u_xlat1;
    let x_499 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_494.x, x_494.y) * vec2<f32>(x_496.x, x_496.x)) + vec2<f32>(x_499.x, x_499.y));
  }
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec2<f32> = u_xlat16;
  let x_505 : vec2<f32> = min(vec2<f32>(x_502.x, x_502.y), x_504);
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
  let x_511 : vec4<f32> = u_xlat0;
  let x_514 : f32 = x_25.x_GlobalMipBias.x;
  let x_515 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_511.x, x_511.y), x_514);
  u_xlat3.y = x_515.y;
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_518.z, x_518.w), vec2<f32>(x_520.z, x_520.w));
  let x_525 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_525);
  let x_528 : bool = u_xlatb8;
  if (x_528) {
    let x_531 : vec4<f32> = u_xlat0;
    let x_534 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_536 : vec2<f32> = (vec2<f32>(x_531.x, x_531.x) * vec2<f32>(x_534.x, x_534.y));
    let x_537 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_536.x, x_536.y, x_537.z);
    let x_540 : f32 = u_xlat1.x;
    u_xlat4.x = cos(x_540);
    let x_544 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_544);
    let x_549 : f32 = u_xlat1.x;
    let x_551 : f32 = u_xlat4.x;
    u_xlat7.x = (x_549 / x_551);
    let x_555 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_555);
    let x_559 : f32 = u_xlat7.x;
    let x_561 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_559 * x_561) + -1.0f);
    let x_565 : vec4<f32> = u_xlat0;
    let x_567 : vec3<f32> = u_xlat7;
    let x_570 : vec4<f32> = u_xlat4;
    let x_572 : vec2<f32> = ((vec2<f32>(x_565.z, x_565.w) * vec2<f32>(x_567.x, x_567.x)) + vec2<f32>(x_570.z, x_570.w));
    let x_573 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_572.x, x_572.y, x_573.z);
  } else {
    let x_577 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_577);
    let x_581 : f32 = u_xlat7.x;
    let x_583 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_581 * x_583);
    let x_587 : f32 = u_xlat0.x;
    let x_589 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_587 * x_589);
    let x_593 : f32 = u_xlat0.x;
    u_xlat16.x = min(abs(x_593), 1.0f);
    let x_598 : f32 = u_xlat0.x;
    u_xlat23 = max(abs(x_598), 1.0f);
    let x_601 : f32 = u_xlat23;
    u_xlat23 = (1.0f / x_601);
    let x_603 : f32 = u_xlat23;
    let x_605 : f32 = u_xlat16.x;
    u_xlat16.x = (x_603 * x_605);
    let x_609 : f32 = u_xlat16.x;
    let x_611 : f32 = u_xlat16.x;
    u_xlat23 = (x_609 * x_611);
    let x_613 : f32 = u_xlat23;
    u_xlat24 = ((x_613 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_616 : f32 = u_xlat23;
    let x_617 : f32 = u_xlat24;
    u_xlat24 = ((x_616 * x_617) + 0.18014100193977355957f);
    let x_620 : f32 = u_xlat23;
    let x_621 : f32 = u_xlat24;
    u_xlat24 = ((x_620 * x_621) + -0.33029949665069580078f);
    let x_624 : f32 = u_xlat23;
    let x_625 : f32 = u_xlat24;
    u_xlat23 = ((x_624 * x_625) + 0.99986600875854492188f);
    let x_628 : f32 = u_xlat23;
    let x_630 : f32 = u_xlat16.x;
    u_xlat24 = (x_628 * x_630);
    let x_634 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_634));
    let x_637 : f32 = u_xlat24;
    u_xlat24 = ((x_637 * -2.0f) + 1.57079637050628662109f);
    let x_640 : bool = u_xlatb4;
    let x_641 : f32 = u_xlat24;
    u_xlat24 = select(0.0f, x_641, x_640);
    let x_644 : f32 = u_xlat16.x;
    let x_645 : f32 = u_xlat23;
    let x_647 : f32 = u_xlat24;
    u_xlat16.x = ((x_644 * x_645) + x_647);
    let x_651 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_651, 1.0f);
    let x_656 : f32 = u_xlat0.x;
    let x_658 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_656 < -(x_658));
    let x_663 : bool = u_xlatb0.x;
    if (x_663) {
      let x_668 : f32 = u_xlat16.x;
      x_664 = -(x_668);
    } else {
      let x_672 : f32 = u_xlat16.x;
      x_664 = x_672;
    }
    let x_673 : f32 = x_664;
    u_xlat0.x = x_673;
    let x_676 : f32 = u_xlat7.x;
    let x_678 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_676 * x_678) + -1.0f);
    let x_682 : vec4<f32> = u_xlat0;
    let x_684 : vec4<f32> = u_xlat0;
    let x_687 : vec4<f32> = u_xlat4;
    let x_689 : vec2<f32> = ((vec2<f32>(x_682.z, x_682.w) * vec2<f32>(x_684.x, x_684.x)) + vec2<f32>(x_687.z, x_687.w));
    let x_690 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_689.x, x_689.y, x_690.z);
  }
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = u_xlat1;
  let x_696 : vec2<f32> = min(vec2<f32>(x_692.x, x_692.y), vec2<f32>(x_694.x, x_694.y));
  let x_697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : f32 = x_25.x_GlobalMipBias.x;
  let x_706 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_702.x, x_702.y), x_705);
  u_xlat3.z = x_706.z;
  let x_712 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_717 : vec4<f32> = x_25.x_RTHandleScale;
  let x_719 : vec2<f32> = ((-(vec2<f32>(x_712.x, x_712.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_717.x, x_717.y));
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat0;
  let x_724 : vec2<f32> = u_xlat15;
  let x_725 : vec2<f32> = min(vec2<f32>(x_722.x, x_722.y), x_724);
  let x_726 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
  let x_732 : vec4<f32> = u_xlat0;
  let x_735 : f32 = x_25.x_GlobalMipBias.x;
  let x_736 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_732.x, x_732.y), x_735);
  u_xlat0 = x_736;
  let x_739 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_739);
  let x_743 : bool = u_xlatb1.x;
  if (x_743) {
    let x_746 : vec4<f32> = u_xlat0;
    let x_748 : vec4<f32> = u_xlat0;
    let x_750 : vec3<f32> = (vec3<f32>(x_746.w, x_746.w, x_746.w) * vec3<f32>(x_748.x, x_748.y, x_748.z));
    let x_751 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
    let x_753 : vec4<f32> = u_xlat2;
    let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_758 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  }
  let x_760 : vec4<f32> = u_xlat0;
  let x_764 : vec4<f32> = x_25.x_Bloom_Params;
  let x_766 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_764.x, x_764.x, x_764.x));
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat0;
  let x_772 : vec4<f32> = x_25.x_Bloom_Params;
  let x_775 : vec3<f32> = u_xlat3;
  let x_776 : vec3<f32> = ((vec3<f32>(x_769.x, x_769.y, x_769.z) * vec3<f32>(x_772.y, x_772.z, x_772.w)) + x_775);
  let x_777 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_782 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_782);
  let x_784 : bool = u_xlatb21;
  if (x_784) {
    let x_787 : vec2<f32> = u_xlat15;
    let x_789 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_792 : vec2<f32> = (x_787 + -(vec2<f32>(x_789.x, x_789.y)));
    let x_793 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_792.x, x_792.y, x_793.z);
    let x_795 : vec3<f32> = u_xlat1;
    let x_799 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_801 : vec2<f32> = (abs(vec2<f32>(x_795.x, x_795.y)) * vec2<f32>(x_799.z, x_799.z));
    let x_802 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_802.x, x_801.x, x_801.y);
    let x_805 : f32 = u_xlat1.y;
    let x_808 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_805 * x_808);
    let x_812 : vec3<f32> = u_xlat1;
    let x_814 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_812.x, x_812.z), vec2<f32>(x_814.x, x_814.z));
    let x_817 : f32 = u_xlat21;
    u_xlat21 = (-(x_817) + 1.0f);
    let x_820 : f32 = u_xlat21;
    u_xlat21 = max(x_820, 0.0f);
    let x_822 : f32 = u_xlat21;
    u_xlat21 = log2(x_822);
    let x_824 : f32 = u_xlat21;
    let x_826 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_824 * x_826);
    let x_828 : f32 = u_xlat21;
    u_xlat21 = exp2(x_828);
    let x_831 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_831.x, x_831.y, x_831.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_836 : f32 = u_xlat21;
    let x_838 : vec3<f32> = u_xlat1;
    let x_841 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_836, x_836, x_836) * x_838) + vec3<f32>(x_841.x, x_841.y, x_841.z));
    let x_844 : vec4<f32> = u_xlat0;
    let x_846 : vec3<f32> = u_xlat1;
    let x_847 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * x_846);
    let x_848 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  }
  let x_850 : vec4<f32> = u_xlat0;
  let x_854 : vec4<f32> = x_25.x_Lut_Params;
  let x_856 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_854.w, x_854.w, x_854.w));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_863 : vec3<f32> = clamp(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_868 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_868);
  let x_870 : bool = u_xlatb21;
  if (x_870) {
    let x_873 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_878 : vec4<f32> = u_xlat0;
    let x_880 : vec3<f32> = log2(vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_883 : vec4<f32> = u_xlat2;
    let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_888 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    let x_890 : vec4<f32> = u_xlat2;
    let x_892 : vec3<f32> = exp2(vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_893 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
    let x_895 : vec4<f32> = u_xlat2;
    let x_902 : vec3<f32> = ((vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_903 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
    let x_907 : vec4<f32> = u_xlat0;
    let x_910 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_907.x, x_907.y, x_907.z, x_907.x));
    u_xlatb3 = vec3<bool>(x_910.x, x_910.y, x_910.z);
    let x_914 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_914;
    let x_916 : bool = u_xlatb3.x;
    if (x_916) {
      let x_921 : f32 = u_xlat1.x;
      x_917 = x_921;
    } else {
      let x_924 : f32 = u_xlat2.x;
      x_917 = x_924;
    }
    let x_925 : f32 = x_917;
    hlslcc_movcTemp.x = x_925;
    let x_928 : bool = u_xlatb3.y;
    if (x_928) {
      let x_933 : f32 = u_xlat1.y;
      x_929 = x_933;
    } else {
      let x_936 : f32 = u_xlat2.y;
      x_929 = x_936;
    }
    let x_937 : f32 = x_929;
    hlslcc_movcTemp.y = x_937;
    let x_940 : bool = u_xlatb3.z;
    if (x_940) {
      let x_945 : f32 = u_xlat1.z;
      x_941 = x_945;
    } else {
      let x_948 : f32 = u_xlat2.z;
      x_941 = x_948;
    }
    let x_949 : f32 = x_941;
    hlslcc_movcTemp.z = x_949;
    let x_951 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_951;
    let x_952 : vec3<f32> = u_xlat1;
    let x_955 : vec4<f32> = x_25.x_UserLut_Params;
    let x_957 : vec3<f32> = (vec3<f32>(x_952.z, x_952.x, x_952.y) * vec3<f32>(x_955.z, x_955.z, x_955.z));
    let x_958 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_961 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_961);
    let x_964 : vec4<f32> = x_25.x_UserLut_Params;
    let x_966 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.5f, 0.5f));
    let x_967 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_966.x, x_967.y, x_967.z, x_966.y);
    let x_969 : vec4<f32> = u_xlat2;
    let x_972 : vec4<f32> = x_25.x_UserLut_Params;
    let x_975 : vec4<f32> = u_xlat2;
    let x_977 : vec2<f32> = ((vec2<f32>(x_969.y, x_969.z) * vec2<f32>(x_972.x, x_972.y)) + vec2<f32>(x_975.x, x_975.w));
    let x_978 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_978.x, x_977.x, x_977.y, x_978.w);
    let x_980 : f32 = u_xlat21;
    let x_982 : f32 = x_25.x_UserLut_Params.y;
    let x_985 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_980 * x_982) + x_985);
    let x_992 : vec4<f32> = u_xlat2;
    let x_994 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_992.x, x_992.z), 0.0f);
    u_xlat3 = vec3<f32>(x_994.x, x_994.y, x_994.z);
    let x_997 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_997;
    u_xlat4.y = 0.0f;
    let x_1000 : vec4<f32> = u_xlat2;
    let x_1002 : vec4<f32> = u_xlat4;
    let x_1004 : vec2<f32> = (vec2<f32>(x_1000.x, x_1000.z) + vec2<f32>(x_1002.x, x_1002.y));
    let x_1005 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
    let x_1010 : vec4<f32> = u_xlat2;
    let x_1012 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1010.x, x_1010.y), 0.0f);
    let x_1013 : vec3<f32> = vec3<f32>(x_1012.x, x_1012.y, x_1012.z);
    let x_1014 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
    let x_1017 : f32 = u_xlat1.z;
    let x_1019 : f32 = x_25.x_UserLut_Params.z;
    let x_1021 : f32 = u_xlat21;
    u_xlat21 = ((x_1017 * x_1019) + -(x_1021));
    let x_1024 : vec3<f32> = u_xlat3;
    let x_1026 : vec4<f32> = u_xlat2;
    let x_1028 : vec3<f32> = (-(x_1024) + vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
    let x_1029 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
    let x_1031 : f32 = u_xlat21;
    let x_1033 : vec4<f32> = u_xlat2;
    let x_1036 : vec3<f32> = u_xlat3;
    let x_1037 : vec3<f32> = ((vec3<f32>(x_1031, x_1031, x_1031) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + x_1036);
    let x_1038 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1040 : vec3<f32> = u_xlat1;
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1044 : vec3<f32> = (-(x_1040) + vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1048 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1050 : vec4<f32> = u_xlat2;
    let x_1053 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1048.w, x_1048.w, x_1048.w) * vec3<f32>(x_1050.x, x_1050.y, x_1050.z)) + x_1053);
    let x_1055 : vec3<f32> = u_xlat1;
    let x_1058 : vec3<f32> = (x_1055 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1059 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
    let x_1061 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1061 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1065 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1065 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1069 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1069));
    let x_1072 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1072 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1076 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1076);
    let x_1080 : vec3<f32> = u_xlat1;
    let x_1082 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.x));
    u_xlatb1 = vec3<bool>(x_1082.x, x_1082.y, x_1082.z);
    let x_1085 : bool = u_xlatb1.x;
    if (x_1085) {
      let x_1090 : f32 = u_xlat2.x;
      x_1086 = x_1090;
    } else {
      let x_1093 : f32 = u_xlat3.x;
      x_1086 = x_1093;
    }
    let x_1094 : f32 = x_1086;
    u_xlat0.x = x_1094;
    let x_1097 : bool = u_xlatb1.y;
    if (x_1097) {
      let x_1102 : f32 = u_xlat2.y;
      x_1098 = x_1102;
    } else {
      let x_1105 : f32 = u_xlat3.y;
      x_1098 = x_1105;
    }
    let x_1106 : f32 = x_1098;
    u_xlat0.y = x_1106;
    let x_1109 : bool = u_xlatb1.z;
    if (x_1109) {
      let x_1114 : f32 = u_xlat2.z;
      x_1110 = x_1114;
    } else {
      let x_1117 : f32 = u_xlat3.z;
      x_1110 = x_1117;
    }
    let x_1118 : f32 = x_1110;
    u_xlat0.z = x_1118;
  }
  let x_1120 : vec4<f32> = u_xlat0;
  let x_1123 : vec4<f32> = x_25.x_Lut_Params;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1123.z, x_1123.z, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1125.z);
  let x_1129 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1129);
  let x_1132 : vec4<f32> = x_25.x_Lut_Params;
  let x_1134 : vec2<f32> = (vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(0.5f, 0.5f));
  let x_1135 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1134.x, x_1134.y, x_1135.z);
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1140 : vec4<f32> = x_25.x_Lut_Params;
  let x_1143 : vec3<f32> = u_xlat1;
  let x_1145 : vec2<f32> = ((vec2<f32>(x_1137.x, x_1137.y) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.x, x_1143.y));
  let x_1146 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1146.x, x_1145.x, x_1145.y);
  let x_1148 : f32 = u_xlat21;
  let x_1150 : f32 = x_25.x_Lut_Params.y;
  let x_1153 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1148 * x_1150) + x_1153);
  let x_1160 : vec3<f32> = u_xlat1;
  let x_1162 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1160.x, x_1160.z), 0.0f);
  let x_1163 : vec3<f32> = vec3<f32>(x_1162.x, x_1162.y, x_1162.z);
  let x_1164 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1167 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1167;
  u_xlat0.y = 0.0f;
  let x_1170 : vec4<f32> = u_xlat0;
  let x_1172 : vec3<f32> = u_xlat1;
  let x_1174 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) + vec2<f32>(x_1172.x, x_1172.z));
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
  let x_1180 : vec4<f32> = u_xlat0;
  let x_1182 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1180.x, x_1180.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1182.x, x_1182.y, x_1182.z);
  let x_1185 : f32 = u_xlat0.z;
  let x_1187 : f32 = x_25.x_Lut_Params.z;
  let x_1189 : f32 = u_xlat21;
  u_xlat0.x = ((x_1185 * x_1187) + -(x_1189));
  let x_1193 : vec4<f32> = u_xlat2;
  let x_1196 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + x_1196);
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1200 : vec3<f32> = u_xlat7;
  let x_1202 : vec4<f32> = u_xlat2;
  let x_1204 : vec3<f32> = ((vec3<f32>(x_1198.x, x_1198.x, x_1198.x) * x_1200) + vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec4<f32> = u_xlat0;
  let x_1209 : vec3<f32> = sqrt(vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec2<f32> = vs_TEXCOORD0;
  let x_1215 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1219 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1221 : vec2<f32> = ((x_1212 * vec2<f32>(x_1215.x, x_1215.y)) + vec2<f32>(x_1219.z, x_1219.w));
  let x_1222 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1221.x, x_1221.y, x_1222.z);
  let x_1229 : vec3<f32> = u_xlat1;
  let x_1232 : f32 = x_25.x_GlobalMipBias.x;
  let x_1233 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1229.x, x_1229.y), x_1232);
  u_xlat21 = x_1233.w;
  let x_1235 : f32 = u_xlat21;
  u_xlat21 = ((x_1235 * 2.0f) + -1.0f);
  let x_1238 : f32 = u_xlat21;
  u_xlatb1.x = (x_1238 >= 0.0f);
  let x_1242 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1242);
  let x_1245 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1245)) + 1.0f);
  let x_1249 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1249);
  let x_1251 : f32 = u_xlat21;
  u_xlat21 = (-(x_1251) + 1.0f);
  let x_1254 : f32 = u_xlat21;
  let x_1256 : f32 = u_xlat1.x;
  u_xlat21 = (x_1254 * x_1256);
  let x_1258 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1261 : vec4<f32> = u_xlat0;
  let x_1263 : vec3<f32> = log2(vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat2;
  let x_1268 : vec3<f32> = (vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1271 : vec4<f32> = u_xlat2;
  let x_1273 : vec3<f32> = exp2(vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : vec4<f32> = u_xlat2;
  let x_1279 : vec3<f32> = ((vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat0;
  let x_1284 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.x));
  u_xlatb0 = vec3<bool>(x_1284.x, x_1284.y, x_1284.z);
  let x_1287 : bool = u_xlatb0.x;
  if (x_1287) {
    let x_1292 : f32 = u_xlat1.x;
    x_1288 = x_1292;
  } else {
    let x_1295 : f32 = u_xlat2.x;
    x_1288 = x_1295;
  }
  let x_1296 : f32 = x_1288;
  u_xlat0.x = x_1296;
  let x_1299 : bool = u_xlatb0.y;
  if (x_1299) {
    let x_1304 : f32 = u_xlat1.y;
    x_1300 = x_1304;
  } else {
    let x_1307 : f32 = u_xlat2.y;
    x_1300 = x_1307;
  }
  let x_1308 : f32 = x_1300;
  u_xlat0.y = x_1308;
  let x_1311 : bool = u_xlatb0.z;
  if (x_1311) {
    let x_1316 : f32 = u_xlat1.z;
    x_1312 = x_1316;
  } else {
    let x_1319 : f32 = u_xlat2.z;
    x_1312 = x_1319;
  }
  let x_1320 : f32 = x_1312;
  u_xlat0.z = x_1320;
  let x_1322 : f32 = u_xlat21;
  let x_1327 : vec4<f32> = u_xlat0;
  let x_1329 : vec3<f32> = ((vec3<f32>(x_1322, x_1322, x_1322) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1332.x, x_1332.y, x_1332.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1335 : vec4<f32> = u_xlat0;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1338 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec4<f32> = u_xlat2;
  let x_1342 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.y, x_1340.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1345 : vec4<f32> = u_xlat2;
  let x_1348 : vec3<f32> = log2(abs(vec3<f32>(x_1345.x, x_1345.y, x_1345.z)));
  let x_1349 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1351 : vec4<f32> = u_xlat2;
  let x_1353 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.y, x_1351.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : vec4<f32> = u_xlat2;
  let x_1358 : vec3<f32> = exp2(vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
  let x_1361 : vec4<f32> = u_xlat0;
  let x_1363 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.x));
  u_xlatb0 = vec3<bool>(x_1363.x, x_1363.y, x_1363.z);
  let x_1366 : bool = u_xlatb0.x;
  if (x_1366) {
    let x_1371 : f32 = u_xlat1.x;
    x_1367 = x_1371;
  } else {
    let x_1374 : f32 = u_xlat2.x;
    x_1367 = x_1374;
  }
  let x_1375 : f32 = x_1367;
  u_xlat0.x = x_1375;
  let x_1378 : bool = u_xlatb0.y;
  if (x_1378) {
    let x_1383 : f32 = u_xlat1.y;
    x_1379 = x_1383;
  } else {
    let x_1386 : f32 = u_xlat2.y;
    x_1379 = x_1386;
  }
  let x_1387 : f32 = x_1379;
  u_xlat0.y = x_1387;
  let x_1390 : bool = u_xlatb0.z;
  if (x_1390) {
    let x_1395 : f32 = u_xlat1.z;
    x_1391 = x_1395;
  } else {
    let x_1398 : f32 = u_xlat2.z;
    x_1391 = x_1398;
  }
  let x_1399 : f32 = x_1391;
  u_xlat0.z = x_1399;
  let x_1403 : vec4<f32> = u_xlat0;
  let x_1406 : vec3<f32> = max(vec3<f32>(x_1403.x, x_1403.y, x_1403.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1407 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
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


