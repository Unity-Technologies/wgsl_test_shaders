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
  x_Bloom_Texture_TexelSize : vec4<f32>,
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

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_491 : f32;
  var x_676 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1191 : f32;
  var x_1203 : f32;
  var x_1215 : f32;
  var x_1360 : f32;
  var x_1372 : f32;
  var x_1384 : f32;
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
    u_xlat5.x = sin(x_372);
    let x_377 : f32 = u_xlat16.x;
    u_xlat6.x = cos(x_377);
    let x_381 : f32 = u_xlat5.x;
    let x_383 : f32 = u_xlat6.x;
    u_xlat16.x = (x_381 / x_383);
    let x_387 : f32 = u_xlat16.y;
    u_xlat23 = (1.0f / x_387);
    let x_390 : f32 = u_xlat16.x;
    let x_391 : f32 = u_xlat23;
    u_xlat16.x = ((x_390 * x_391) + -1.0f);
    let x_395 : vec4<f32> = u_xlat0;
    let x_397 : vec2<f32> = u_xlat16;
    let x_400 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_397.x, x_397.x)) + vec2<f32>(x_400.x, x_400.y));
  } else {
    let x_406 : f32 = u_xlat1.x;
    u_xlat24 = (1.0f / x_406);
    let x_408 : f32 = u_xlat24;
    let x_410 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat24 = (x_408 * x_410);
    let x_413 : f32 = u_xlat1.x;
    let x_415 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_413 * x_415);
    let x_419 : f32 = u_xlat1.x;
    u_xlat5.x = min(abs(x_419), 1.0f);
    let x_425 : f32 = u_xlat1.x;
    u_xlat12 = max(abs(x_425), 1.0f);
    let x_428 : f32 = u_xlat12;
    u_xlat12 = (1.0f / x_428);
    let x_430 : f32 = u_xlat12;
    let x_432 : f32 = u_xlat5.x;
    u_xlat5.x = (x_430 * x_432);
    let x_436 : f32 = u_xlat5.x;
    let x_438 : f32 = u_xlat5.x;
    u_xlat12 = (x_436 * x_438);
    let x_441 : f32 = u_xlat12;
    u_xlat19 = ((x_441 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_444 : f32 = u_xlat12;
    let x_445 : f32 = u_xlat19;
    u_xlat19 = ((x_444 * x_445) + 0.18014100193977355957f);
    let x_448 : f32 = u_xlat12;
    let x_449 : f32 = u_xlat19;
    u_xlat19 = ((x_448 * x_449) + -0.33029949665069580078f);
    let x_452 : f32 = u_xlat12;
    let x_453 : f32 = u_xlat19;
    u_xlat12 = ((x_452 * x_453) + 0.99986600875854492188f);
    let x_456 : f32 = u_xlat12;
    let x_458 : f32 = u_xlat5.x;
    u_xlat19 = (x_456 * x_458);
    let x_462 : f32 = u_xlat1.x;
    u_xlatb26 = (1.0f < abs(x_462));
    let x_465 : f32 = u_xlat19;
    u_xlat19 = ((x_465 * -2.0f) + 1.57079637050628662109f);
    let x_468 : bool = u_xlatb26;
    let x_469 : f32 = u_xlat19;
    u_xlat19 = select(0.0f, x_469, x_468);
    let x_472 : f32 = u_xlat5.x;
    let x_473 : f32 = u_xlat12;
    let x_475 : f32 = u_xlat19;
    u_xlat5.x = ((x_472 * x_473) + x_475);
    let x_479 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_479, 1.0f);
    let x_483 : f32 = u_xlat1.x;
    let x_485 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_483 < -(x_485));
    let x_490 : bool = u_xlatb1.x;
    if (x_490) {
      let x_495 : f32 = u_xlat5.x;
      x_491 = -(x_495);
    } else {
      let x_499 : f32 = u_xlat5.x;
      x_491 = x_499;
    }
    let x_500 : f32 = x_491;
    u_xlat1.x = x_500;
    let x_502 : f32 = u_xlat24;
    let x_504 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_502 * x_504) + -1.0f);
    let x_508 : vec4<f32> = u_xlat0;
    let x_510 : vec3<f32> = u_xlat1;
    let x_513 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_508.x, x_508.y) * vec2<f32>(x_510.x, x_510.x)) + vec2<f32>(x_513.x, x_513.y));
  }
  let x_516 : vec4<f32> = u_xlat2;
  let x_518 : vec2<f32> = u_xlat16;
  let x_519 : vec2<f32> = min(vec2<f32>(x_516.x, x_516.y), x_518);
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_528 : f32 = x_25.x_GlobalMipBias.x;
  let x_529 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_525.x, x_525.y), x_528);
  u_xlat3.y = x_529.y;
  let x_532 : vec4<f32> = u_xlat0;
  let x_534 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_532.z, x_532.w), vec2<f32>(x_534.z, x_534.w));
  let x_539 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_539);
  let x_542 : bool = u_xlatb8;
  if (x_542) {
    let x_545 : vec4<f32> = u_xlat0;
    let x_548 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_550 : vec2<f32> = (vec2<f32>(x_545.x, x_545.x) * vec2<f32>(x_548.x, x_548.y));
    let x_551 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_550.x, x_550.y, x_551.z);
    let x_554 : f32 = u_xlat1.x;
    u_xlat4.x = cos(x_554);
    let x_558 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_558);
    let x_563 : f32 = u_xlat1.x;
    let x_565 : f32 = u_xlat4.x;
    u_xlat7.x = (x_563 / x_565);
    let x_569 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_569);
    let x_573 : f32 = u_xlat7.x;
    let x_575 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_573 * x_575) + -1.0f);
    let x_579 : vec4<f32> = u_xlat0;
    let x_581 : vec3<f32> = u_xlat7;
    let x_584 : vec4<f32> = u_xlat4;
    let x_586 : vec2<f32> = ((vec2<f32>(x_579.z, x_579.w) * vec2<f32>(x_581.x, x_581.x)) + vec2<f32>(x_584.z, x_584.w));
    let x_587 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_586.x, x_586.y, x_587.z);
  } else {
    let x_591 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_591);
    let x_595 : f32 = u_xlat7.x;
    let x_597 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_595 * x_597);
    let x_601 : f32 = u_xlat0.x;
    let x_603 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_601 * x_603);
    let x_607 : f32 = u_xlat0.x;
    u_xlat16.x = min(abs(x_607), 1.0f);
    let x_612 : f32 = u_xlat0.x;
    u_xlat23 = max(abs(x_612), 1.0f);
    let x_615 : f32 = u_xlat23;
    u_xlat23 = (1.0f / x_615);
    let x_617 : f32 = u_xlat23;
    let x_619 : f32 = u_xlat16.x;
    u_xlat16.x = (x_617 * x_619);
    let x_623 : f32 = u_xlat16.x;
    let x_625 : f32 = u_xlat16.x;
    u_xlat23 = (x_623 * x_625);
    let x_627 : f32 = u_xlat23;
    u_xlat24 = ((x_627 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_630 : f32 = u_xlat23;
    let x_631 : f32 = u_xlat24;
    u_xlat24 = ((x_630 * x_631) + 0.18014100193977355957f);
    let x_634 : f32 = u_xlat23;
    let x_635 : f32 = u_xlat24;
    u_xlat24 = ((x_634 * x_635) + -0.33029949665069580078f);
    let x_638 : f32 = u_xlat23;
    let x_639 : f32 = u_xlat24;
    u_xlat23 = ((x_638 * x_639) + 0.99986600875854492188f);
    let x_642 : f32 = u_xlat23;
    let x_644 : f32 = u_xlat16.x;
    u_xlat24 = (x_642 * x_644);
    let x_648 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_648));
    let x_651 : f32 = u_xlat24;
    u_xlat24 = ((x_651 * -2.0f) + 1.57079637050628662109f);
    let x_654 : bool = u_xlatb4;
    let x_655 : f32 = u_xlat24;
    u_xlat24 = select(0.0f, x_655, x_654);
    let x_658 : f32 = u_xlat16.x;
    let x_659 : f32 = u_xlat23;
    let x_661 : f32 = u_xlat24;
    u_xlat16.x = ((x_658 * x_659) + x_661);
    let x_665 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_665, 1.0f);
    let x_670 : f32 = u_xlat0.x;
    let x_672 : f32 = u_xlat0.x;
    u_xlatb0 = (x_670 < -(x_672));
    let x_675 : bool = u_xlatb0;
    if (x_675) {
      let x_680 : f32 = u_xlat16.x;
      x_676 = -(x_680);
    } else {
      let x_684 : f32 = u_xlat16.x;
      x_676 = x_684;
    }
    let x_685 : f32 = x_676;
    u_xlat0.x = x_685;
    let x_688 : f32 = u_xlat7.x;
    let x_690 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_688 * x_690) + -1.0f);
    let x_694 : vec4<f32> = u_xlat0;
    let x_696 : vec4<f32> = u_xlat0;
    let x_699 : vec4<f32> = u_xlat4;
    let x_701 : vec2<f32> = ((vec2<f32>(x_694.z, x_694.w) * vec2<f32>(x_696.x, x_696.x)) + vec2<f32>(x_699.z, x_699.w));
    let x_702 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_701.x, x_701.y, x_702.z);
  }
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec3<f32> = u_xlat1;
  let x_708 : vec2<f32> = min(vec2<f32>(x_704.x, x_704.y), vec2<f32>(x_706.x, x_706.y));
  let x_709 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
  let x_714 : vec4<f32> = u_xlat0;
  let x_717 : f32 = x_25.x_GlobalMipBias.x;
  let x_718 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_714.x, x_714.y), x_717);
  u_xlat3.z = x_718.z;
  let x_724 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_729 : vec4<f32> = x_25.x_RTHandleScale;
  let x_731 : vec2<f32> = ((-(vec2<f32>(x_724.x, x_724.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_729.x, x_729.y));
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec2<f32> = u_xlat15;
  let x_737 : vec2<f32> = min(vec2<f32>(x_734.x, x_734.y), x_736);
  let x_738 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_737.x, x_737.y, x_738.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat0;
  let x_744 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_747 : vec2<f32> = ((vec2<f32>(x_740.x, x_740.y) * vec2<f32>(x_744.z, x_744.w)) + vec2<f32>(0.5f, 0.5f));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat0;
  u_xlat14 = floor(vec2<f32>(x_750.x, x_750.y));
  let x_753 : vec4<f32> = u_xlat0;
  let x_755 : vec2<f32> = fract(vec2<f32>(x_753.x, x_753.y));
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat2 = ((-(vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_765 : vec4<f32> = u_xlat0;
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * x_767) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_771 : vec4<f32> = u_xlat0;
  let x_775 : vec2<f32> = ((vec2<f32>(x_771.x, x_771.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_776 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_775.x, x_775.y, x_776.z);
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec2<f32> = (vec2<f32>(x_778.x, x_778.y) * vec2<f32>(x_780.x, x_780.y));
  let x_783 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat4;
  let x_787 : vec3<f32> = u_xlat1;
  let x_792 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_787.x, x_787.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_793 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_792.x, x_792.y, x_793.z);
  let x_795 : vec4<f32> = u_xlat0;
  let x_797 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * x_797) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_801 : vec3<f32> = u_xlat1;
  let x_805 : vec2<f32> = (-(vec2<f32>(x_801.x, x_801.y)) + vec2<f32>(1.0f, 1.0f));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat2;
  let x_811 : vec4<f32> = u_xlat0;
  let x_813 : vec2<f32> = (-(vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_811.x, x_811.y));
  let x_814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat2;
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec2<f32> = (-(vec2<f32>(x_816.z, x_816.w)) + vec2<f32>(x_819.x, x_819.y));
  let x_822 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
  let x_824 : vec3<f32> = u_xlat1;
  let x_826 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec2<f32>(x_824.x, x_824.y) + vec2<f32>(x_826.z, x_826.w));
  let x_829 : vec4<f32> = u_xlat0;
  let x_831 : vec4<f32> = u_xlat2;
  let x_833 : vec2<f32> = (vec2<f32>(x_829.x, x_829.y) + vec2<f32>(x_831.x, x_831.y));
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_833.x, x_833.y, x_834.z, x_834.w);
  let x_836 : vec2<f32> = u_xlat16;
  let x_840 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_836.x, x_836.y));
  let x_841 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
  let x_843 : vec3<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat4;
  let x_848 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_845.x, x_845.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_849 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_849.x, x_849.y, x_848.x, x_848.y);
  let x_851 : vec4<f32> = u_xlat2;
  let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
  let x_856 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_852.x, x_852.y));
  let x_857 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_856.x, x_856.y, x_857.z);
  let x_859 : vec4<f32> = u_xlat0;
  let x_861 : vec3<f32> = u_xlat1;
  let x_864 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_861.x, x_861.y)) + vec2<f32>(1.0f, 1.0f));
  let x_865 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
  let x_867 : vec2<f32> = u_xlat14;
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_867.x, x_867.y, x_867.x, x_867.y) + vec4<f32>(x_869.z, x_869.w, x_869.x, x_869.w));
  let x_872 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_872 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_874 : vec4<f32> = u_xlat5;
  let x_876 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_874 * vec4<f32>(x_876.x, x_876.y, x_876.x, x_876.y));
  let x_879 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_879, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_886 : vec4<f32> = u_xlat5;
  let x_888 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_886.x, x_886.y), 0.0f);
  u_xlat6 = x_888;
  let x_892 : vec4<f32> = u_xlat5;
  let x_894 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_892.z, x_892.w), 0.0f);
  u_xlat5 = x_894;
  let x_895 : vec4<f32> = u_xlat2;
  let x_897 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_895.x, x_895.x, x_895.x, x_895.x) * x_897);
  let x_899 : vec2<f32> = u_xlat16;
  let x_901 : vec4<f32> = u_xlat6;
  let x_903 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_899.x, x_899.x, x_899.x, x_899.x) * x_901) + x_903);
  let x_905 : vec2<f32> = u_xlat14;
  let x_907 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_905.x, x_905.y, x_905.x, x_905.y) + vec4<f32>(x_907.z, x_907.y, x_907.x, x_907.y));
  let x_910 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_910 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_912 : vec4<f32> = u_xlat0;
  let x_914 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_912 * vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.y));
  let x_917 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_917, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_922 : vec4<f32> = u_xlat0;
  let x_924 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_922.x, x_922.y), 0.0f);
  u_xlat4 = x_924;
  let x_928 : vec4<f32> = u_xlat0;
  let x_930 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_928.z, x_928.w), 0.0f);
  u_xlat0 = x_930;
  let x_931 : vec4<f32> = u_xlat0;
  let x_932 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_931 * vec4<f32>(x_932.x, x_932.x, x_932.x, x_932.x));
  let x_935 : vec2<f32> = u_xlat16;
  let x_937 : vec4<f32> = u_xlat4;
  let x_939 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_935.x, x_935.x, x_935.x, x_935.x) * x_937) + x_939);
  let x_941 : vec4<f32> = u_xlat0;
  let x_942 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_941 * vec4<f32>(x_942.y, x_942.y, x_942.y, x_942.y));
  let x_945 : vec2<f32> = u_xlat16;
  let x_947 : vec4<f32> = u_xlat5;
  let x_949 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_945.y, x_945.y, x_945.y, x_945.y) * x_947) + x_949);
  let x_953 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_953);
  let x_957 : bool = u_xlatb1.x;
  if (x_957) {
    let x_960 : vec4<f32> = u_xlat0;
    let x_962 : vec4<f32> = u_xlat0;
    let x_964 : vec3<f32> = (vec3<f32>(x_960.w, x_960.w, x_960.w) * vec3<f32>(x_962.x, x_962.y, x_962.z));
    let x_965 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
    let x_967 : vec4<f32> = u_xlat2;
    let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_972 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  }
  let x_974 : vec4<f32> = u_xlat0;
  let x_978 : vec4<f32> = x_25.x_Bloom_Params;
  let x_980 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(x_978.x, x_978.x, x_978.x));
  let x_981 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_983 : vec4<f32> = u_xlat0;
  let x_986 : vec4<f32> = x_25.x_Bloom_Params;
  let x_989 : vec3<f32> = u_xlat3;
  let x_990 : vec3<f32> = ((vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(x_986.y, x_986.z, x_986.w)) + x_989);
  let x_991 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_996 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_996);
  let x_998 : bool = u_xlatb21;
  if (x_998) {
    let x_1001 : vec2<f32> = u_xlat15;
    let x_1003 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_1006 : vec2<f32> = (x_1001 + -(vec2<f32>(x_1003.x, x_1003.y)));
    let x_1007 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1006.x, x_1006.y, x_1007.z);
    let x_1009 : vec3<f32> = u_xlat1;
    let x_1013 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_1015 : vec2<f32> = (abs(vec2<f32>(x_1009.x, x_1009.y)) * vec2<f32>(x_1013.z, x_1013.z));
    let x_1016 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1016.x, x_1015.x, x_1015.y);
    let x_1019 : f32 = u_xlat1.y;
    let x_1022 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_1019 * x_1022);
    let x_1026 : vec3<f32> = u_xlat1;
    let x_1028 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_1026.x, x_1026.z), vec2<f32>(x_1028.x, x_1028.z));
    let x_1031 : f32 = u_xlat21;
    u_xlat21 = (-(x_1031) + 1.0f);
    let x_1034 : f32 = u_xlat21;
    u_xlat21 = max(x_1034, 0.0f);
    let x_1036 : f32 = u_xlat21;
    u_xlat21 = log2(x_1036);
    let x_1038 : f32 = u_xlat21;
    let x_1040 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_1038 * x_1040);
    let x_1042 : f32 = u_xlat21;
    u_xlat21 = exp2(x_1042);
    let x_1045 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_1045.x, x_1045.y, x_1045.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1050 : f32 = u_xlat21;
    let x_1052 : vec3<f32> = u_xlat1;
    let x_1055 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_1050, x_1050, x_1050) * x_1052) + vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
    let x_1058 : vec4<f32> = u_xlat0;
    let x_1060 : vec3<f32> = u_xlat1;
    let x_1061 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * x_1060);
    let x_1062 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  }
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1068 : vec4<f32> = x_25.x_Lut_Params;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1068.w, x_1068.w, x_1068.w));
  let x_1071 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_1078 : vec4<f32> = u_xlat0;
  let x_1085 : vec3<f32> = ((vec3<f32>(x_1078.x, x_1078.y, x_1078.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_1086 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1088 : vec3<f32> = u_xlat1;
  let x_1089 : vec4<f32> = u_xlat2;
  let x_1094 : vec3<f32> = ((x_1088 * vec3<f32>(x_1089.x, x_1089.y, x_1089.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_1095 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1102 : vec3<f32> = ((vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_1103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec3<f32> = u_xlat1;
  let x_1106 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = ((x_1105 * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_1112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : vec4<f32> = u_xlat2;
  let x_1116 : vec4<f32> = u_xlat0;
  let x_1118 : vec3<f32> = (vec3<f32>(x_1114.x, x_1114.y, x_1114.z) / vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat0;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_1126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec4<f32> = u_xlat0;
  let x_1130 : vec3<f32> = (vec3<f32>(x_1128.x, x_1128.y, x_1128.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_1131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec4<f32> = u_xlat0;
  let x_1137 : vec3<f32> = clamp(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1142 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_1142);
  let x_1144 : bool = u_xlatb21;
  if (x_1144) {
    let x_1147 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1147.x, x_1147.y, x_1147.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1152 : vec4<f32> = u_xlat0;
    let x_1154 : vec3<f32> = log2(vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
    let x_1155 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
    let x_1157 : vec4<f32> = u_xlat2;
    let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1162 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
    let x_1164 : vec4<f32> = u_xlat2;
    let x_1166 : vec3<f32> = exp2(vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
    let x_1167 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
    let x_1169 : vec4<f32> = u_xlat2;
    let x_1176 : vec3<f32> = ((vec3<f32>(x_1169.x, x_1169.y, x_1169.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1177 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
    let x_1181 : vec4<f32> = u_xlat0;
    let x_1184 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1181.x));
    u_xlatb3 = vec3<bool>(x_1184.x, x_1184.y, x_1184.z);
    let x_1188 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1188;
    let x_1190 : bool = u_xlatb3.x;
    if (x_1190) {
      let x_1195 : f32 = u_xlat1.x;
      x_1191 = x_1195;
    } else {
      let x_1198 : f32 = u_xlat2.x;
      x_1191 = x_1198;
    }
    let x_1199 : f32 = x_1191;
    hlslcc_movcTemp.x = x_1199;
    let x_1202 : bool = u_xlatb3.y;
    if (x_1202) {
      let x_1207 : f32 = u_xlat1.y;
      x_1203 = x_1207;
    } else {
      let x_1210 : f32 = u_xlat2.y;
      x_1203 = x_1210;
    }
    let x_1211 : f32 = x_1203;
    hlslcc_movcTemp.y = x_1211;
    let x_1214 : bool = u_xlatb3.z;
    if (x_1214) {
      let x_1219 : f32 = u_xlat1.z;
      x_1215 = x_1219;
    } else {
      let x_1222 : f32 = u_xlat2.z;
      x_1215 = x_1222;
    }
    let x_1223 : f32 = x_1215;
    hlslcc_movcTemp.z = x_1223;
    let x_1225 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1225;
    let x_1226 : vec3<f32> = u_xlat1;
    let x_1229 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1231 : vec3<f32> = (vec3<f32>(x_1226.z, x_1226.x, x_1226.y) * vec3<f32>(x_1229.z, x_1229.z, x_1229.z));
    let x_1232 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
    let x_1235 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1235);
    let x_1238 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1240 : vec2<f32> = (vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(0.5f, 0.5f));
    let x_1241 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1240.x, x_1241.y, x_1241.z, x_1240.y);
    let x_1243 : vec4<f32> = u_xlat2;
    let x_1246 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1249 : vec4<f32> = u_xlat2;
    let x_1251 : vec2<f32> = ((vec2<f32>(x_1243.y, x_1243.z) * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.x, x_1249.w));
    let x_1252 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1252.x, x_1251.x, x_1251.y, x_1252.w);
    let x_1254 : f32 = u_xlat21;
    let x_1256 : f32 = x_25.x_UserLut_Params.y;
    let x_1259 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1254 * x_1256) + x_1259);
    let x_1266 : vec4<f32> = u_xlat2;
    let x_1268 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1266.x, x_1266.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1268.x, x_1268.y, x_1268.z);
    let x_1271 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1271;
    u_xlat4.y = 0.0f;
    let x_1274 : vec4<f32> = u_xlat2;
    let x_1276 : vec4<f32> = u_xlat4;
    let x_1278 : vec2<f32> = (vec2<f32>(x_1274.x, x_1274.z) + vec2<f32>(x_1276.x, x_1276.y));
    let x_1279 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
    let x_1284 : vec4<f32> = u_xlat2;
    let x_1286 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1284.x, x_1284.y), 0.0f);
    let x_1287 : vec3<f32> = vec3<f32>(x_1286.x, x_1286.y, x_1286.z);
    let x_1288 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
    let x_1291 : f32 = u_xlat1.z;
    let x_1293 : f32 = x_25.x_UserLut_Params.z;
    let x_1295 : f32 = u_xlat21;
    u_xlat21 = ((x_1291 * x_1293) + -(x_1295));
    let x_1298 : vec3<f32> = u_xlat3;
    let x_1300 : vec4<f32> = u_xlat2;
    let x_1302 : vec3<f32> = (-(x_1298) + vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
    let x_1305 : f32 = u_xlat21;
    let x_1307 : vec4<f32> = u_xlat2;
    let x_1310 : vec3<f32> = u_xlat3;
    let x_1311 : vec3<f32> = ((vec3<f32>(x_1305, x_1305, x_1305) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z)) + x_1310);
    let x_1312 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
    let x_1314 : vec3<f32> = u_xlat1;
    let x_1316 : vec4<f32> = u_xlat2;
    let x_1318 : vec3<f32> = (-(x_1314) + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
    let x_1319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
    let x_1322 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1324 : vec4<f32> = u_xlat2;
    let x_1327 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1322.w, x_1322.w, x_1322.w) * vec3<f32>(x_1324.x, x_1324.y, x_1324.z)) + x_1327);
    let x_1329 : vec3<f32> = u_xlat1;
    let x_1332 : vec3<f32> = (x_1329 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1333 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
    let x_1335 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1335 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1339 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1339 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1343 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1343));
    let x_1346 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1346 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1350 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1350);
    let x_1354 : vec3<f32> = u_xlat1;
    let x_1356 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1354.x));
    u_xlatb1 = vec3<bool>(x_1356.x, x_1356.y, x_1356.z);
    let x_1359 : bool = u_xlatb1.x;
    if (x_1359) {
      let x_1364 : f32 = u_xlat2.x;
      x_1360 = x_1364;
    } else {
      let x_1367 : f32 = u_xlat3.x;
      x_1360 = x_1367;
    }
    let x_1368 : f32 = x_1360;
    u_xlat0.x = x_1368;
    let x_1371 : bool = u_xlatb1.y;
    if (x_1371) {
      let x_1376 : f32 = u_xlat2.y;
      x_1372 = x_1376;
    } else {
      let x_1379 : f32 = u_xlat3.y;
      x_1372 = x_1379;
    }
    let x_1380 : f32 = x_1372;
    u_xlat0.y = x_1380;
    let x_1383 : bool = u_xlatb1.z;
    if (x_1383) {
      let x_1388 : f32 = u_xlat2.z;
      x_1384 = x_1388;
    } else {
      let x_1391 : f32 = u_xlat3.z;
      x_1384 = x_1391;
    }
    let x_1392 : f32 = x_1384;
    u_xlat0.z = x_1392;
  }
  let x_1394 : vec4<f32> = u_xlat0;
  let x_1397 : vec4<f32> = x_25.x_Lut_Params;
  let x_1399 : vec3<f32> = (vec3<f32>(x_1394.x, x_1394.y, x_1394.z) * vec3<f32>(x_1397.z, x_1397.z, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1399.z);
  let x_1403 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1403);
  let x_1406 : vec4<f32> = x_25.x_Lut_Params;
  let x_1408 : vec2<f32> = (vec2<f32>(x_1406.x, x_1406.y) * vec2<f32>(0.5f, 0.5f));
  let x_1409 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1408.x, x_1408.y, x_1409.z);
  let x_1411 : vec4<f32> = u_xlat0;
  let x_1414 : vec4<f32> = x_25.x_Lut_Params;
  let x_1417 : vec3<f32> = u_xlat1;
  let x_1419 : vec2<f32> = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.x, x_1417.y));
  let x_1420 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1420.x, x_1419.x, x_1419.y);
  let x_1422 : f32 = u_xlat21;
  let x_1424 : f32 = x_25.x_Lut_Params.y;
  let x_1427 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1422 * x_1424) + x_1427);
  let x_1434 : vec3<f32> = u_xlat1;
  let x_1436 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1434.x, x_1434.z), 0.0f);
  let x_1437 : vec3<f32> = vec3<f32>(x_1436.x, x_1436.y, x_1436.z);
  let x_1438 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
  let x_1441 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1441;
  u_xlat0.y = 0.0f;
  let x_1444 : vec4<f32> = u_xlat0;
  let x_1446 : vec3<f32> = u_xlat1;
  let x_1448 : vec2<f32> = (vec2<f32>(x_1444.x, x_1444.y) + vec2<f32>(x_1446.x, x_1446.z));
  let x_1449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
  let x_1454 : vec4<f32> = u_xlat0;
  let x_1456 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1454.x, x_1454.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1456.x, x_1456.y, x_1456.z);
  let x_1459 : f32 = u_xlat0.z;
  let x_1461 : f32 = x_25.x_Lut_Params.z;
  let x_1463 : f32 = u_xlat21;
  u_xlat0.x = ((x_1459 * x_1461) + -(x_1463));
  let x_1467 : vec4<f32> = u_xlat2;
  let x_1470 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)) + x_1470);
  let x_1474 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = u_xlat7;
  let x_1478 : vec4<f32> = u_xlat2;
  let x_1480 : vec3<f32> = ((vec3<f32>(x_1474.x, x_1474.x, x_1474.x) * x_1476) + vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
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


