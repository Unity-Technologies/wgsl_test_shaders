diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(7) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb29 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat29 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(4) var<uniform> x_944 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu18 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati18 : i32;

@group(1) @binding(1) var<uniform> x_1411 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_895 : f32;
  var x_1012 : f32;
  var x_1023 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1543 : f32;
  var x_1553 : f32;
  var txVec1 : vec3<f32>;
  var x_1975 : f32;
  var x_1988 : f32;
  var x_2036 : f32;
  var x_2047 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb14 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat14;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb14 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat28 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat28;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat14 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat15.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat28;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat28 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat28;
  u_xlatb42 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat28;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat15.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat28;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat28 = x_207;
  let x_208 : bool = u_xlatb42;
  if (x_208) {
    let x_213 : f32 = u_xlat15.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat28;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat28 = x_216;
  let x_217 : f32 = u_xlat28;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat14;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat42;
  u_xlat42 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat42;
  u_xlat42 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_319);
  let x_321 : f32 = u_xlat42;
  u_xlat42 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat29.y;
  let x_367 : f32 = u_xlat29.x;
  u_xlat29.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat15;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat42;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat42;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb42 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat43;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb42;
  if (x_476) {
    let x_481 : vec4<f32> = u_xlat3;
    x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  } else {
    let x_484 : vec4<f32> = u_xlat4;
    x_478 = vec3<f32>(x_484.x, x_484.y, x_484.z);
  }
  let x_486 : vec3<f32> = x_478;
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = vs_INTERP7;
  let x_500 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres0;
  let x_503 : vec3<f32> = (x_489 + -(vec3<f32>(x_500.x, x_500.y, x_500.z)));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : vec3<f32> = vs_INTERP7;
  let x_509 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres1;
  let x_512 : vec3<f32> = (x_507 + -(vec3<f32>(x_509.x, x_509.y, x_509.z)));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec3<f32> = vs_INTERP7;
  let x_518 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_523 : vec3<f32> = vs_INTERP7;
  let x_525 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_528 : vec3<f32> = (x_523 + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_531.x, x_531.y, x_531.z), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_537 : vec4<f32> = u_xlat5;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_543, x_544);
  let x_547 : vec4<f32> = u_xlat7;
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_556 : vec4<f32> = u_xlat4;
  let x_559 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_556 < x_559);
  let x_562 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_562);
  let x_566 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_578);
  let x_583 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_583);
  let x_587 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_587);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat5;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(x_592.y, x_592.z, x_592.w));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat4;
  let x_600 : vec3<f32> = max(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_600.x, x_600.y, x_600.z);
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_603, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_608 : f32 = u_xlat42;
  u_xlat42 = (-(x_608) + 4.0f);
  let x_613 : f32 = u_xlat42;
  u_xlatu42 = u32(x_613);
  let x_617 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_617) << bitcast<u32>(2i));
  let x_620 : vec3<f32> = vs_INTERP7;
  let x_622 : i32 = u_xlati42;
  let x_625 : i32 = u_xlati42;
  let x_629 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_622 + 1i) / 4i)][((x_625 + 1i) % 4i)];
  let x_631 : vec3<f32> = (vec3<f32>(x_620.y, x_620.y, x_620.y) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : i32 = u_xlati42;
  let x_636 : i32 = u_xlati42;
  let x_639 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_634 / 4i)][(x_636 % 4i)];
  let x_641 : vec3<f32> = vs_INTERP7;
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : i32 = u_xlati42;
  let x_652 : i32 = u_xlati42;
  let x_656 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_649 + 2i) / 4i)][((x_652 + 2i) % 4i)];
  let x_658 : vec3<f32> = vs_INTERP7;
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658.z, x_658.z, x_658.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat4;
  let x_668 : i32 = u_xlati42;
  let x_671 : i32 = u_xlati42;
  let x_675 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_668 + 3i) / 4i)][((x_671 + 3i) % 4i)];
  let x_677 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_681 : f32 = vs_INTERP7.y;
  let x_683 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat42 = (x_681 * x_683);
  let x_686 : f32 = x_29.unity_MatrixV[0i].z;
  let x_688 : f32 = vs_INTERP7.x;
  let x_690 : f32 = u_xlat42;
  u_xlat42 = ((x_686 * x_688) + x_690);
  let x_693 : f32 = x_29.unity_MatrixV[2i].z;
  let x_695 : f32 = vs_INTERP7.z;
  let x_697 : f32 = u_xlat42;
  u_xlat42 = ((x_693 * x_695) + x_697);
  let x_699 : f32 = u_xlat42;
  let x_701 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat42 = (x_699 + x_701);
  let x_703 : f32 = u_xlat42;
  let x_706 : f32 = x_29.x_ProjectionParams.y;
  u_xlat42 = (-(x_703) + -(x_706));
  let x_709 : f32 = u_xlat42;
  u_xlat42 = max(x_709, 0.0f);
  let x_711 : f32 = u_xlat42;
  let x_714 : f32 = x_29.unity_FogParams.x;
  u_xlat42 = (x_711 * x_714);
  let x_723 : vec2<f32> = vs_INTERP0;
  let x_725 : f32 = x_29.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_723, x_725);
  u_xlat5 = x_726;
  let x_731 : vec2<f32> = vs_INTERP0;
  let x_733 : f32 = x_29.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  u_xlat6 = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat5;
  u_xlat43 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat43;
  u_xlat43 = (x_748 + 0.5f);
  let x_751 : f32 = u_xlat43;
  let x_753 : vec3<f32> = u_xlat6;
  let x_754 : vec3<f32> = (vec3<f32>(x_751, x_751, x_751) * x_753);
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_758 : f32 = u_xlat5.w;
  u_xlat43 = max(x_758, 0.00009999999747378752f);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : f32 = u_xlat43;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) / vec3<f32>(x_763, x_763, x_763));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat43 = ((-(x_780) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_786 : f32 = u_xlat43;
  let x_789 : f32 = u_xlat2.y;
  u_xlat44 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat43;
  u_xlat6 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat43;
  let x_818 : f32 = u_xlat43;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat16 = (x_828 * x_830);
  let x_832 : f32 = u_xlat44;
  u_xlat44 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat44;
  u_xlat44 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat45 = ((x_838 * 4.0f) + 2.0f);
  let x_843 : f32 = u_xlat2.z;
  u_xlat30 = min(x_843, 1.0f);
  let x_846 : vec4<f32> = u_xlat4;
  let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
  let x_849 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_847.x, x_847.y, x_849);
  let x_861 : vec3<f32> = txVec0;
  let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
  u_xlat4.x = x_863;
  let x_868 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_868) + 1.0f);
  let x_873 : f32 = u_xlat4.x;
  let x_875 : f32 = x_497.x_MainLightShadowParams.x;
  let x_878 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_873 * x_875) + x_878);
  let x_883 : f32 = u_xlat4.z;
  u_xlatb18 = (0.0f >= x_883);
  let x_887 : f32 = u_xlat4.z;
  u_xlatb32.x = (x_887 >= 1.0f);
  let x_891 : bool = u_xlatb32.x;
  let x_892 : bool = u_xlatb18;
  u_xlatb18 = (x_891 | x_892);
  let x_894 : bool = u_xlatb18;
  if (x_894) {
    x_895 = 1.0f;
  } else {
    let x_900 : f32 = u_xlat4.x;
    x_895 = x_900;
  }
  let x_901 : f32 = x_895;
  u_xlat4.x = x_901;
  let x_903 : vec3<f32> = vs_INTERP7;
  let x_905 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat18 = (x_903 + -(x_905));
  let x_908 : vec3<f32> = u_xlat18;
  let x_909 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_908, x_909);
  let x_914 : f32 = u_xlat18.x;
  let x_916 : f32 = x_497.x_MainLightShadowParams.z;
  let x_919 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_914 * x_916) + x_919);
  let x_923 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_923, 0.0f, 1.0f);
  let x_928 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_928) + 1.0f);
  let x_932 : f32 = u_xlat32.x;
  let x_933 : f32 = u_xlat46;
  let x_936 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_932 * x_933) + x_936);
  let x_946 : f32 = x_944.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_946 == -1.0f));
  let x_950 : bool = u_xlatb32.x;
  if (x_950) {
    let x_953 : vec3<f32> = vs_INTERP7;
    let x_956 : vec4<f32> = x_944.x_MainLightWorldToLight[1i];
    u_xlat32 = (vec2<f32>(x_953.y, x_953.y) * vec2<f32>(x_956.x, x_956.y));
    let x_960 : vec4<f32> = x_944.x_MainLightWorldToLight[0i];
    let x_962 : vec3<f32> = vs_INTERP7;
    let x_965 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_962.x, x_962.x)) + x_965);
    let x_968 : vec4<f32> = x_944.x_MainLightWorldToLight[2i];
    let x_970 : vec3<f32> = vs_INTERP7;
    let x_973 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_968.x, x_968.y) * vec2<f32>(x_970.z, x_970.z)) + x_973);
    let x_975 : vec2<f32> = u_xlat32;
    let x_977 : vec4<f32> = x_944.x_MainLightWorldToLight[3i];
    u_xlat32 = (x_975 + vec2<f32>(x_977.x, x_977.y));
    let x_980 : vec2<f32> = u_xlat32;
    u_xlat32 = ((x_980 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_989 : vec2<f32> = u_xlat32;
    let x_991 : f32 = x_29.x_GlobalMipBias.x;
    let x_992 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_989, x_991);
    u_xlat7 = x_992;
    let x_994 : f32 = x_944.x_MainLightCookieTextureFormat;
    let x_996 : f32 = x_944.x_MainLightCookieTextureFormat;
    let x_998 : f32 = x_944.x_MainLightCookieTextureFormat;
    let x_1000 : f32 = x_944.x_MainLightCookieTextureFormat;
    let x_1001 : vec4<f32> = vec4<f32>(x_994, x_996, x_998, x_1000);
    let x_1008 : vec4<bool> = (vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1001.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb32 = vec2<bool>(x_1008.x, x_1008.y);
    let x_1011 : bool = u_xlatb32.y;
    if (x_1011) {
      let x_1016 : f32 = u_xlat7.w;
      x_1012 = x_1016;
    } else {
      let x_1019 : f32 = u_xlat7.x;
      x_1012 = x_1019;
    }
    let x_1020 : f32 = x_1012;
    u_xlat46 = x_1020;
    let x_1022 : bool = u_xlatb32.x;
    if (x_1022) {
      let x_1026 : vec4<f32> = u_xlat7;
      x_1023 = vec3<f32>(x_1026.x, x_1026.y, x_1026.z);
    } else {
      let x_1029 : f32 = u_xlat46;
      x_1023 = vec3<f32>(x_1029, x_1029, x_1029);
    }
    let x_1031 : vec3<f32> = x_1023;
    let x_1032 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1038 : vec4<f32> = u_xlat7;
  let x_1041 : vec4<f32> = x_29.x_MainLightColor;
  let x_1043 : vec3<f32> = (vec3<f32>(x_1038.x, x_1038.y, x_1038.z) * vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1049 : vec4<f32> = u_xlat1;
  u_xlat32.x = dot(-(vec3<f32>(x_1046.x, x_1046.y, x_1046.z)), vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1054 : f32 = u_xlat32.x;
  let x_1056 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1054 + x_1056);
  let x_1060 : vec4<f32> = u_xlat1;
  let x_1062 : vec2<f32> = u_xlat32;
  let x_1066 : vec4<f32> = u_xlat3;
  let x_1069 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * -(vec3<f32>(x_1062.x, x_1062.x, x_1062.x))) + -(vec3<f32>(x_1066.x, x_1066.y, x_1066.z)));
  let x_1070 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1072 : vec4<f32> = u_xlat1;
  let x_1074 : vec4<f32> = u_xlat3;
  u_xlat32.x = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1079 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_1079, 0.0f, 1.0f);
  let x_1083 : f32 = u_xlat32.x;
  u_xlat32.x = (-(x_1083) + 1.0f);
  let x_1088 : f32 = u_xlat32.x;
  let x_1090 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1088 * x_1090);
  let x_1094 : f32 = u_xlat32.x;
  let x_1096 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1094 * x_1096);
  let x_1099 : f32 = u_xlat43;
  u_xlat46 = ((-(x_1099) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1105 : f32 = u_xlat43;
  let x_1106 : f32 = u_xlat46;
  u_xlat43 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat43;
  u_xlat43 = (x_1108 * 6.0f);
  let x_1118 : vec4<f32> = u_xlat8;
  let x_1120 : f32 = u_xlat43;
  let x_1121 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1118.x, x_1118.y, x_1118.z), x_1120);
  u_xlat8 = x_1121;
  let x_1123 : f32 = u_xlat8.w;
  u_xlat43 = (x_1123 + -1.0f);
  let x_1126 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1127 : f32 = u_xlat43;
  u_xlat43 = ((x_1126 * x_1127) + 1.0f);
  let x_1130 : f32 = u_xlat43;
  u_xlat43 = max(x_1130, 0.0f);
  let x_1132 : f32 = u_xlat43;
  u_xlat43 = log2(x_1132);
  let x_1134 : f32 = u_xlat43;
  let x_1136 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1134 * x_1136);
  let x_1138 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1138);
  let x_1140 : f32 = u_xlat43;
  let x_1142 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1140 * x_1142);
  let x_1144 : vec4<f32> = u_xlat8;
  let x_1146 : f32 = u_xlat43;
  let x_1148 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) * vec3<f32>(x_1146, x_1146, x_1146));
  let x_1149 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1152 : vec4<f32> = u_xlat2;
  let x_1154 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec2<f32>(x_1152.x, x_1152.x) * vec2<f32>(x_1154.x, x_1154.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1160 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1160);
  let x_1163 : vec4<f32> = u_xlat0;
  let x_1166 : f32 = u_xlat44;
  u_xlat23 = (-(vec3<f32>(x_1163.x, x_1163.y, x_1163.z)) + vec3<f32>(x_1166, x_1166, x_1166));
  let x_1169 : vec2<f32> = u_xlat32;
  let x_1171 : vec3<f32> = u_xlat23;
  let x_1173 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_1169.x, x_1169.x, x_1169.x) * x_1171) + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : f32 = u_xlat43;
  let x_1178 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1176, x_1176, x_1176) * x_1178);
  let x_1180 : vec4<f32> = u_xlat8;
  let x_1182 : vec3<f32> = u_xlat23;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * x_1182);
  let x_1184 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat5;
  let x_1188 : vec3<f32> = u_xlat6;
  let x_1190 : vec4<f32> = u_xlat8;
  let x_1192 : vec3<f32> = ((vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * x_1188) + vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1196 : f32 = u_xlat4.x;
  let x_1198 : f32 = x_349.unity_LightData.z;
  u_xlat43 = (x_1196 * x_1198);
  let x_1200 : vec4<f32> = u_xlat1;
  let x_1203 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1200.x, x_1200.y, x_1200.z), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1208 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1208, 0.0f, 1.0f);
  let x_1211 : f32 = u_xlat43;
  let x_1213 : f32 = u_xlat2.x;
  u_xlat43 = (x_1211 * x_1213);
  let x_1215 : f32 = u_xlat43;
  let x_1217 : vec4<f32> = u_xlat7;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1215, x_1215, x_1215) * vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1219.x, x_1220.y, x_1219.y, x_1219.z);
  let x_1222 : vec4<f32> = u_xlat3;
  let x_1225 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1227 : vec3<f32> = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) + vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : vec4<f32> = u_xlat7;
  let x_1232 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : f32 = u_xlat43;
  u_xlat43 = max(x_1235, 1.17549435e-38f);
  let x_1238 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1238);
  let x_1240 : f32 = u_xlat43;
  let x_1242 : vec4<f32> = u_xlat7;
  let x_1244 : vec3<f32> = (vec3<f32>(x_1240, x_1240, x_1240) * vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1245 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat1;
  let x_1249 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1252, 0.0f, 1.0f);
  let x_1255 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1257 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1255.x, x_1255.y, x_1255.z), vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1262 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1262, 0.0f, 1.0f);
  let x_1265 : f32 = u_xlat43;
  let x_1266 : f32 = u_xlat43;
  u_xlat43 = (x_1265 * x_1266);
  let x_1268 : f32 = u_xlat43;
  let x_1270 : f32 = u_xlat9.x;
  u_xlat43 = ((x_1268 * x_1270) + 1.00001001358032226562f);
  let x_1275 : f32 = u_xlat2.x;
  let x_1277 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1275 * x_1277);
  let x_1280 : f32 = u_xlat43;
  let x_1281 : f32 = u_xlat43;
  u_xlat43 = (x_1280 * x_1281);
  let x_1284 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1284, 0.10000000149011611938f);
  let x_1288 : f32 = u_xlat43;
  let x_1290 : f32 = u_xlat2.x;
  u_xlat43 = (x_1288 * x_1290);
  let x_1292 : f32 = u_xlat45;
  let x_1293 : f32 = u_xlat43;
  u_xlat43 = (x_1292 * x_1293);
  let x_1295 : f32 = u_xlat16;
  let x_1296 : f32 = u_xlat43;
  u_xlat43 = (x_1295 / x_1296);
  let x_1298 : vec4<f32> = u_xlat0;
  let x_1300 : f32 = u_xlat43;
  let x_1303 : vec3<f32> = u_xlat6;
  let x_1304 : vec3<f32> = ((vec3<f32>(x_1298.x, x_1298.y, x_1298.z) * vec3<f32>(x_1300, x_1300, x_1300)) + x_1303);
  let x_1305 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
  let x_1307 : vec4<f32> = u_xlat4;
  let x_1309 : vec4<f32> = u_xlat7;
  let x_1311 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.z, x_1307.w) * vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
  let x_1315 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1317 : f32 = x_349.unity_LightData.y;
  u_xlat43 = min(x_1315, x_1317);
  let x_1320 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1320));
  let x_1324 : f32 = u_xlat18.x;
  let x_1327 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_1330 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1324 * x_1327) + x_1330);
  let x_1334 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1334, 0.0f, 1.0f);
  let x_1339 : f32 = x_944.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1341 : f32 = x_944.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1343 : f32 = x_944.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1345 : f32 = x_944.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1346 : vec4<f32> = vec4<f32>(x_1339, x_1341, x_1343, x_1345);
  let x_1353 : vec4<bool> = (vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1353.x, x_1353.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1365 : u32 = u_xlatu_loop_1;
    let x_1366 : u32 = u_xlatu43;
    if ((x_1365 < x_1366)) {
    } else {
      break;
    }
    let x_1369 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1369 >> 2u);
    let x_1372 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1372 & 3u));
    let x_1375 : u32 = u_xlatu18;
    let x_1378 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1375)];
    let x_1388 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1393 : vec4<u32> = indexable[x_1388];
    u_xlat18.x = dot(x_1378, bitcast<vec4<f32>>(x_1393));
    let x_1399 : f32 = u_xlat18.x;
    u_xlati18 = i32(x_1399);
    let x_1401 : vec3<f32> = vs_INTERP7;
    let x_1412 : i32 = u_xlati18;
    let x_1414 : vec4<f32> = x_1411.x_AdditionalLightsPosition[x_1412];
    let x_1417 : i32 = u_xlati18;
    let x_1419 : vec4<f32> = x_1411.x_AdditionalLightsPosition[x_1417];
    u_xlat23 = ((-(x_1401) * vec3<f32>(x_1414.w, x_1414.w, x_1414.w)) + vec3<f32>(x_1419.x, x_1419.y, x_1419.z));
    let x_1423 : vec3<f32> = u_xlat23;
    let x_1424 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1423, x_1424);
    let x_1426 : f32 = u_xlat47;
    u_xlat47 = max(x_1426, 0.00006103515625f);
    let x_1430 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1430);
    let x_1433 : f32 = u_xlat48;
    let x_1435 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1433, x_1433, x_1433) * x_1435);
    let x_1438 : f32 = u_xlat47;
    u_xlat35 = (1.0f / x_1438);
    let x_1440 : f32 = u_xlat47;
    let x_1441 : i32 = u_xlati18;
    let x_1443 : f32 = x_1411.x_AdditionalLightsAttenuation[x_1441].x;
    u_xlat47 = (x_1440 * x_1443);
    let x_1445 : f32 = u_xlat47;
    let x_1447 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1445) * x_1447) + 1.0f);
    let x_1450 : f32 = u_xlat47;
    u_xlat47 = max(x_1450, 0.0f);
    let x_1452 : f32 = u_xlat47;
    let x_1453 : f32 = u_xlat47;
    u_xlat47 = (x_1452 * x_1453);
    let x_1455 : f32 = u_xlat47;
    let x_1456 : f32 = u_xlat35;
    u_xlat47 = (x_1455 * x_1456);
    let x_1458 : i32 = u_xlati18;
    let x_1460 : vec4<f32> = x_1411.x_AdditionalLightsSpotDir[x_1458];
    let x_1462 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1460.x, x_1460.y, x_1460.z), x_1462);
    let x_1464 : f32 = u_xlat35;
    let x_1465 : i32 = u_xlati18;
    let x_1467 : f32 = x_1411.x_AdditionalLightsAttenuation[x_1465].z;
    let x_1469 : i32 = u_xlati18;
    let x_1471 : f32 = x_1411.x_AdditionalLightsAttenuation[x_1469].w;
    u_xlat35 = ((x_1464 * x_1467) + x_1471);
    let x_1473 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1473, 0.0f, 1.0f);
    let x_1475 : f32 = u_xlat35;
    let x_1476 : f32 = u_xlat35;
    u_xlat35 = (x_1475 * x_1476);
    let x_1478 : f32 = u_xlat47;
    let x_1479 : f32 = u_xlat35;
    u_xlat47 = (x_1478 * x_1479);
    let x_1483 : i32 = u_xlati18;
    let x_1485 : f32 = x_497.x_AdditionalShadowParams[x_1483].w;
    u_xlati35 = i32(x_1485);
    let x_1488 : i32 = u_xlati35;
    u_xlatb49 = (x_1488 >= 0i);
    let x_1490 : bool = u_xlatb49;
    if (x_1490) {
      let x_1494 : i32 = u_xlati18;
      let x_1496 : f32 = x_497.x_AdditionalShadowParams[x_1494].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1496, x_1496, x_1496, x_1496))));
      let x_1500 : bool = u_xlatb49;
      if (x_1500) {
        let x_1504 : vec3<f32> = u_xlat10;
        let x_1507 : vec3<f32> = u_xlat10;
        let x_1510 : vec4<bool> = (abs(vec4<f32>(x_1504.z, x_1504.z, x_1504.y, x_1504.z)) >= abs(vec4<f32>(x_1507.x, x_1507.y, x_1507.x, x_1507.x)));
        let x_1512 : vec3<bool> = vec3<bool>(x_1510.x, x_1510.y, x_1510.z);
        let x_1513 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
        let x_1516 : bool = u_xlatb11.y;
        let x_1518 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1516 & x_1518);
        let x_1520 : vec3<f32> = u_xlat10;
        let x_1523 : vec4<bool> = (-(vec4<f32>(x_1520.z, x_1520.y, x_1520.z, x_1520.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1524 : vec3<bool> = vec3<bool>(x_1523.x, x_1523.y, x_1523.w);
        let x_1525 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1524.x, x_1524.y, x_1525.z, x_1524.z);
        let x_1529 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1529);
        let x_1534 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1534);
        let x_1539 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1539);
        let x_1542 : bool = u_xlatb11.z;
        if (x_1542) {
          let x_1547 : f32 = u_xlat11.y;
          x_1543 = x_1547;
        } else {
          let x_1549 : f32 = u_xlat50;
          x_1543 = x_1549;
        }
        let x_1550 : f32 = x_1543;
        u_xlat50 = x_1550;
        let x_1552 : bool = u_xlatb49;
        if (x_1552) {
          let x_1557 : f32 = u_xlat11.x;
          x_1553 = x_1557;
        } else {
          let x_1559 : f32 = u_xlat50;
          x_1553 = x_1559;
        }
        let x_1560 : f32 = x_1553;
        u_xlat49 = x_1560;
        let x_1561 : i32 = u_xlati18;
        let x_1563 : f32 = x_497.x_AdditionalShadowParams[x_1561].w;
        u_xlat50 = trunc(x_1563);
        let x_1565 : f32 = u_xlat49;
        let x_1566 : f32 = u_xlat50;
        u_xlat49 = (x_1565 + x_1566);
        let x_1568 : f32 = u_xlat49;
        u_xlati35 = i32(x_1568);
      }
      let x_1570 : i32 = u_xlati35;
      u_xlati35 = (x_1570 << bitcast<u32>(2i));
      let x_1572 : vec3<f32> = vs_INTERP7;
      let x_1575 : i32 = u_xlati35;
      let x_1578 : i32 = u_xlati35;
      let x_1582 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1575 + 1i) / 4i)][((x_1578 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1572.y, x_1572.y, x_1572.y, x_1572.y) * x_1582);
      let x_1584 : i32 = u_xlati35;
      let x_1586 : i32 = u_xlati35;
      let x_1589 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_1584 / 4i)][(x_1586 % 4i)];
      let x_1590 : vec3<f32> = vs_INTERP7;
      let x_1593 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1589 * vec4<f32>(x_1590.x, x_1590.x, x_1590.x, x_1590.x)) + x_1593);
      let x_1595 : i32 = u_xlati35;
      let x_1598 : i32 = u_xlati35;
      let x_1602 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1595 + 2i) / 4i)][((x_1598 + 2i) % 4i)];
      let x_1603 : vec3<f32> = vs_INTERP7;
      let x_1606 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1602 * vec4<f32>(x_1603.z, x_1603.z, x_1603.z, x_1603.z)) + x_1606);
      let x_1608 : vec4<f32> = u_xlat11;
      let x_1609 : i32 = u_xlati35;
      let x_1612 : i32 = u_xlati35;
      let x_1616 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1609 + 3i) / 4i)][((x_1612 + 3i) % 4i)];
      u_xlat11 = (x_1608 + x_1616);
      let x_1618 : vec4<f32> = u_xlat11;
      let x_1620 : vec4<f32> = u_xlat11;
      let x_1622 : vec3<f32> = (vec3<f32>(x_1618.x, x_1618.y, x_1618.z) / vec3<f32>(x_1620.w, x_1620.w, x_1620.w));
      let x_1623 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
      let x_1626 : vec4<f32> = u_xlat11;
      let x_1627 : vec2<f32> = vec2<f32>(x_1626.x, x_1626.y);
      let x_1629 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
      let x_1637 : vec3<f32> = txVec1;
      let x_1639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
      u_xlat35 = x_1639;
      let x_1640 : i32 = u_xlati18;
      let x_1642 : f32 = x_497.x_AdditionalShadowParams[x_1640].x;
      u_xlat49 = (1.0f + -(x_1642));
      let x_1645 : f32 = u_xlat35;
      let x_1646 : i32 = u_xlati18;
      let x_1648 : f32 = x_497.x_AdditionalShadowParams[x_1646].x;
      let x_1650 : f32 = u_xlat49;
      u_xlat35 = ((x_1645 * x_1648) + x_1650);
      let x_1653 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1653);
      let x_1657 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1657 >= 1.0f);
      let x_1659 : bool = u_xlatb49;
      let x_1660 : bool = u_xlatb50;
      u_xlatb49 = (x_1659 | x_1660);
      let x_1662 : bool = u_xlatb49;
      let x_1663 : f32 = u_xlat35;
      u_xlat35 = select(x_1663, 1.0f, x_1662);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1666 : f32 = u_xlat35;
    u_xlat49 = (-(x_1666) + 1.0f);
    let x_1670 : f32 = u_xlat2.x;
    let x_1671 : f32 = u_xlat49;
    let x_1673 : f32 = u_xlat35;
    u_xlat35 = ((x_1670 * x_1671) + x_1673);
    let x_1676 : i32 = u_xlati18;
    u_xlati49 = (1i << bitcast<u32>((x_1676 & 31i)));
    let x_1680 : i32 = u_xlati49;
    let x_1683 : f32 = x_944.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1680) & bitcast<u32>(x_1683)));
    let x_1687 : i32 = u_xlati49;
    if ((x_1687 != 0i)) {
      let x_1691 : i32 = u_xlati18;
      let x_1693 : f32 = x_944.x_AdditionalLightsLightTypes[x_1691].el;
      u_xlati49 = i32(x_1693);
      let x_1696 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1696 != 0i));
      let x_1700 : i32 = u_xlati18;
      u_xlati52 = (x_1700 << bitcast<u32>(2i));
      let x_1702 : i32 = u_xlati50;
      if ((x_1702 != 0i)) {
        let x_1706 : vec3<f32> = vs_INTERP7;
        let x_1708 : i32 = u_xlati52;
        let x_1711 : i32 = u_xlati52;
        let x_1715 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1708 + 1i) / 4i)][((x_1711 + 1i) % 4i)];
        let x_1717 : vec3<f32> = (vec3<f32>(x_1706.y, x_1706.y, x_1706.y) * vec3<f32>(x_1715.x, x_1715.y, x_1715.w));
        let x_1718 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
        let x_1720 : i32 = u_xlati52;
        let x_1722 : i32 = u_xlati52;
        let x_1725 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[(x_1720 / 4i)][(x_1722 % 4i)];
        let x_1727 : vec3<f32> = vs_INTERP7;
        let x_1730 : vec4<f32> = u_xlat11;
        let x_1732 : vec3<f32> = ((vec3<f32>(x_1725.x, x_1725.y, x_1725.w) * vec3<f32>(x_1727.x, x_1727.x, x_1727.x)) + vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
        let x_1733 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
        let x_1735 : i32 = u_xlati52;
        let x_1738 : i32 = u_xlati52;
        let x_1742 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1735 + 2i) / 4i)][((x_1738 + 2i) % 4i)];
        let x_1744 : vec3<f32> = vs_INTERP7;
        let x_1747 : vec4<f32> = u_xlat11;
        let x_1749 : vec3<f32> = ((vec3<f32>(x_1742.x, x_1742.y, x_1742.w) * vec3<f32>(x_1744.z, x_1744.z, x_1744.z)) + vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
        let x_1750 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
        let x_1752 : vec4<f32> = u_xlat11;
        let x_1754 : i32 = u_xlati52;
        let x_1757 : i32 = u_xlati52;
        let x_1761 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1754 + 3i) / 4i)][((x_1757 + 3i) % 4i)];
        let x_1763 : vec3<f32> = (vec3<f32>(x_1752.x, x_1752.y, x_1752.z) + vec3<f32>(x_1761.x, x_1761.y, x_1761.w));
        let x_1764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
        let x_1766 : vec4<f32> = u_xlat11;
        let x_1768 : vec4<f32> = u_xlat11;
        let x_1770 : vec2<f32> = (vec2<f32>(x_1766.x, x_1766.y) / vec2<f32>(x_1768.z, x_1768.z));
        let x_1771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1770.x, x_1770.y, x_1771.z, x_1771.w);
        let x_1773 : vec4<f32> = u_xlat11;
        let x_1776 : vec2<f32> = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1777 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1776.x, x_1776.y, x_1777.z, x_1777.w);
        let x_1779 : vec4<f32> = u_xlat11;
        let x_1783 : vec2<f32> = clamp(vec2<f32>(x_1779.x, x_1779.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1784 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1783.x, x_1783.y, x_1784.z, x_1784.w);
        let x_1786 : i32 = u_xlati18;
        let x_1788 : vec4<f32> = x_944.x_AdditionalLightsCookieAtlasUVRects[x_1786];
        let x_1790 : vec4<f32> = u_xlat11;
        let x_1793 : i32 = u_xlati18;
        let x_1795 : vec4<f32> = x_944.x_AdditionalLightsCookieAtlasUVRects[x_1793];
        let x_1797 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1795.z, x_1795.w));
        let x_1798 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
      } else {
        let x_1801 : i32 = u_xlati49;
        u_xlatb49 = (x_1801 == 1i);
        let x_1803 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1803);
        let x_1805 : i32 = u_xlati49;
        if ((x_1805 != 0i)) {
          let x_1810 : vec3<f32> = vs_INTERP7;
          let x_1812 : i32 = u_xlati52;
          let x_1815 : i32 = u_xlati52;
          let x_1819 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1812 + 1i) / 4i)][((x_1815 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1810.y, x_1810.y) * vec2<f32>(x_1819.x, x_1819.y));
          let x_1822 : i32 = u_xlati52;
          let x_1824 : i32 = u_xlati52;
          let x_1827 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[(x_1822 / 4i)][(x_1824 % 4i)];
          let x_1829 : vec3<f32> = vs_INTERP7;
          let x_1832 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1829.x, x_1829.x)) + x_1832);
          let x_1834 : i32 = u_xlati52;
          let x_1837 : i32 = u_xlati52;
          let x_1841 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1834 + 2i) / 4i)][((x_1837 + 2i) % 4i)];
          let x_1843 : vec3<f32> = vs_INTERP7;
          let x_1846 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1841.x, x_1841.y) * vec2<f32>(x_1843.z, x_1843.z)) + x_1846);
          let x_1848 : vec2<f32> = u_xlat39;
          let x_1849 : i32 = u_xlati52;
          let x_1852 : i32 = u_xlati52;
          let x_1856 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1849 + 3i) / 4i)][((x_1852 + 3i) % 4i)];
          u_xlat39 = (x_1848 + vec2<f32>(x_1856.x, x_1856.y));
          let x_1859 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1859 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1862 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1862);
          let x_1864 : i32 = u_xlati18;
          let x_1866 : vec4<f32> = x_944.x_AdditionalLightsCookieAtlasUVRects[x_1864];
          let x_1868 : vec2<f32> = u_xlat39;
          let x_1870 : i32 = u_xlati18;
          let x_1872 : vec4<f32> = x_944.x_AdditionalLightsCookieAtlasUVRects[x_1870];
          let x_1874 : vec2<f32> = ((vec2<f32>(x_1866.x, x_1866.y) * x_1868) + vec2<f32>(x_1872.z, x_1872.w));
          let x_1875 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1874.x, x_1874.y, x_1875.z, x_1875.w);
        } else {
          let x_1879 : vec3<f32> = vs_INTERP7;
          let x_1881 : i32 = u_xlati52;
          let x_1884 : i32 = u_xlati52;
          let x_1888 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1881 + 1i) / 4i)][((x_1884 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1879.y, x_1879.y, x_1879.y, x_1879.y) * x_1888);
          let x_1890 : i32 = u_xlati52;
          let x_1892 : i32 = u_xlati52;
          let x_1895 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[(x_1890 / 4i)][(x_1892 % 4i)];
          let x_1896 : vec3<f32> = vs_INTERP7;
          let x_1899 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1895 * vec4<f32>(x_1896.x, x_1896.x, x_1896.x, x_1896.x)) + x_1899);
          let x_1901 : i32 = u_xlati52;
          let x_1904 : i32 = u_xlati52;
          let x_1908 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1901 + 2i) / 4i)][((x_1904 + 2i) % 4i)];
          let x_1909 : vec3<f32> = vs_INTERP7;
          let x_1912 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1908 * vec4<f32>(x_1909.z, x_1909.z, x_1909.z, x_1909.z)) + x_1912);
          let x_1914 : vec4<f32> = u_xlat12;
          let x_1915 : i32 = u_xlati52;
          let x_1918 : i32 = u_xlati52;
          let x_1922 : vec4<f32> = x_944.x_AdditionalLightsWorldToLights[((x_1915 + 3i) / 4i)][((x_1918 + 3i) % 4i)];
          u_xlat12 = (x_1914 + x_1922);
          let x_1924 : vec4<f32> = u_xlat12;
          let x_1926 : vec4<f32> = u_xlat12;
          let x_1928 : vec3<f32> = (vec3<f32>(x_1924.x, x_1924.y, x_1924.z) / vec3<f32>(x_1926.w, x_1926.w, x_1926.w));
          let x_1929 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);
          let x_1931 : vec4<f32> = u_xlat12;
          let x_1933 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1931.x, x_1931.y, x_1931.z), vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
          let x_1936 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1936);
          let x_1938 : f32 = u_xlat49;
          let x_1940 : vec4<f32> = u_xlat12;
          let x_1942 : vec3<f32> = (vec3<f32>(x_1938, x_1938, x_1938) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
          let x_1943 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
          let x_1945 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1945.x, x_1945.y, x_1945.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1949 : f32 = u_xlat49;
          u_xlat49 = max(x_1949, 0.00000099999999747524f);
          let x_1952 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1952);
          let x_1955 : f32 = u_xlat49;
          let x_1957 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1955, x_1955, x_1955) * vec3<f32>(x_1957.z, x_1957.x, x_1957.y));
          let x_1961 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1961);
          let x_1965 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1965, 0.0f, 1.0f);
          let x_1969 : vec3<f32> = u_xlat13;
          let x_1971 : vec4<bool> = (vec4<f32>(x_1969.y, x_1969.z, x_1969.y, x_1969.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1971.x, x_1971.y);
          let x_1974 : bool = u_xlatb39.x;
          if (x_1974) {
            let x_1979 : f32 = u_xlat13.x;
            x_1975 = x_1979;
          } else {
            let x_1982 : f32 = u_xlat13.x;
            x_1975 = -(x_1982);
          }
          let x_1984 : f32 = x_1975;
          u_xlat39.x = x_1984;
          let x_1987 : bool = u_xlatb39.y;
          if (x_1987) {
            let x_1992 : f32 = u_xlat13.x;
            x_1988 = x_1992;
          } else {
            let x_1995 : f32 = u_xlat13.x;
            x_1988 = -(x_1995);
          }
          let x_1997 : f32 = x_1988;
          u_xlat39.y = x_1997;
          let x_1999 : vec4<f32> = u_xlat12;
          let x_2001 : f32 = u_xlat49;
          let x_2004 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1999.x, x_1999.y) * vec2<f32>(x_2001, x_2001)) + x_2004);
          let x_2006 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2006 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2009 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2009, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2013 : i32 = u_xlati18;
          let x_2015 : vec4<f32> = x_944.x_AdditionalLightsCookieAtlasUVRects[x_2013];
          let x_2017 : vec2<f32> = u_xlat39;
          let x_2019 : i32 = u_xlati18;
          let x_2021 : vec4<f32> = x_944.x_AdditionalLightsCookieAtlasUVRects[x_2019];
          let x_2023 : vec2<f32> = ((vec2<f32>(x_2015.x, x_2015.y) * x_2017) + vec2<f32>(x_2021.z, x_2021.w));
          let x_2024 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2023.x, x_2023.y, x_2024.z, x_2024.w);
        }
      }
      let x_2031 : vec4<f32> = u_xlat11;
      let x_2033 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2031.x, x_2031.y), 0.0f);
      u_xlat11 = x_2033;
      let x_2035 : bool = u_xlatb7.y;
      if (x_2035) {
        let x_2040 : f32 = u_xlat11.w;
        x_2036 = x_2040;
      } else {
        let x_2043 : f32 = u_xlat11.x;
        x_2036 = x_2043;
      }
      let x_2044 : f32 = x_2036;
      u_xlat49 = x_2044;
      let x_2046 : bool = u_xlatb7.x;
      if (x_2046) {
        let x_2050 : vec4<f32> = u_xlat11;
        x_2047 = vec3<f32>(x_2050.x, x_2050.y, x_2050.z);
      } else {
        let x_2053 : f32 = u_xlat49;
        x_2047 = vec3<f32>(x_2053, x_2053, x_2053);
      }
      let x_2055 : vec3<f32> = x_2047;
      let x_2056 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2062 : vec4<f32> = u_xlat11;
    let x_2064 : i32 = u_xlati18;
    let x_2066 : vec4<f32> = x_1411.x_AdditionalLightsColor[x_2064];
    let x_2068 : vec3<f32> = (vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
    let x_2069 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
    let x_2071 : f32 = u_xlat47;
    let x_2072 : f32 = u_xlat35;
    u_xlat18.x = (x_2071 * x_2072);
    let x_2075 : vec4<f32> = u_xlat1;
    let x_2077 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2075.x, x_2075.y, x_2075.z), x_2077);
    let x_2079 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2079, 0.0f, 1.0f);
    let x_2082 : f32 = u_xlat18.x;
    let x_2083 : f32 = u_xlat47;
    u_xlat18.x = (x_2082 * x_2083);
    let x_2086 : vec3<f32> = u_xlat18;
    let x_2088 : vec4<f32> = u_xlat11;
    let x_2090 : vec3<f32> = (vec3<f32>(x_2086.x, x_2086.x, x_2086.x) * vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2093 : vec3<f32> = u_xlat23;
    let x_2094 : f32 = u_xlat48;
    let x_2097 : vec4<f32> = u_xlat3;
    u_xlat23 = ((x_2093 * vec3<f32>(x_2094, x_2094, x_2094)) + vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
    let x_2100 : vec3<f32> = u_xlat23;
    let x_2101 : vec3<f32> = u_xlat23;
    u_xlat18.x = dot(x_2100, x_2101);
    let x_2105 : f32 = u_xlat18.x;
    u_xlat18.x = max(x_2105, 1.17549435e-38f);
    let x_2109 : f32 = u_xlat18.x;
    u_xlat18.x = inverseSqrt(x_2109);
    let x_2112 : vec3<f32> = u_xlat18;
    let x_2114 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2112.x, x_2112.x, x_2112.x) * x_2114);
    let x_2116 : vec4<f32> = u_xlat1;
    let x_2118 : vec3<f32> = u_xlat23;
    u_xlat18.x = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), x_2118);
    let x_2122 : f32 = u_xlat18.x;
    u_xlat18.x = clamp(x_2122, 0.0f, 1.0f);
    let x_2125 : vec3<f32> = u_xlat10;
    let x_2126 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_2125, x_2126);
    let x_2128 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2128, 0.0f, 1.0f);
    let x_2131 : f32 = u_xlat18.x;
    let x_2133 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2131 * x_2133);
    let x_2137 : f32 = u_xlat18.x;
    let x_2139 : f32 = u_xlat9.x;
    u_xlat18.x = ((x_2137 * x_2139) + 1.00001001358032226562f);
    let x_2143 : f32 = u_xlat47;
    let x_2144 : f32 = u_xlat47;
    u_xlat47 = (x_2143 * x_2144);
    let x_2147 : f32 = u_xlat18.x;
    let x_2149 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2147 * x_2149);
    let x_2152 : f32 = u_xlat47;
    u_xlat47 = max(x_2152, 0.10000000149011611938f);
    let x_2155 : f32 = u_xlat18.x;
    let x_2156 : f32 = u_xlat47;
    u_xlat18.x = (x_2155 * x_2156);
    let x_2159 : f32 = u_xlat45;
    let x_2161 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2159 * x_2161);
    let x_2164 : f32 = u_xlat16;
    let x_2166 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2164 / x_2166);
    let x_2169 : vec4<f32> = u_xlat0;
    let x_2171 : vec3<f32> = u_xlat18;
    let x_2174 : vec3<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2169.x, x_2169.y, x_2169.z) * vec3<f32>(x_2171.x, x_2171.x, x_2171.x)) + x_2174);
    let x_2176 : vec3<f32> = u_xlat23;
    let x_2177 : vec4<f32> = u_xlat11;
    let x_2180 : vec4<f32> = u_xlat8;
    let x_2182 : vec3<f32> = ((x_2176 * vec3<f32>(x_2177.x, x_2177.y, x_2177.z)) + vec3<f32>(x_2180.x, x_2180.y, x_2180.z));
    let x_2183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);

    continuing {
      let x_2185 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2185 + bitcast<u32>(1i));
    }
  }
  let x_2187 : vec4<f32> = u_xlat5;
  let x_2189 : f32 = u_xlat30;
  let x_2192 : vec4<f32> = u_xlat4;
  let x_2194 : vec3<f32> = ((vec3<f32>(x_2187.x, x_2187.y, x_2187.z) * vec3<f32>(x_2189, x_2189, x_2189)) + vec3<f32>(x_2192.x, x_2192.z, x_2192.w));
  let x_2195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2197 : vec4<f32> = u_xlat8;
  let x_2199 : vec4<f32> = u_xlat0;
  let x_2201 : vec3<f32> = (vec3<f32>(x_2197.x, x_2197.y, x_2197.z) + vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2202 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2204 : f32 = u_xlat42;
  let x_2205 : f32 = u_xlat42;
  u_xlat42 = (x_2204 * -(x_2205));
  let x_2208 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2208);
  let x_2210 : vec4<f32> = u_xlat0;
  let x_2213 : vec4<f32> = x_29.unity_FogColor;
  let x_2216 : vec3<f32> = (vec3<f32>(x_2210.x, x_2210.y, x_2210.z) + -(vec3<f32>(x_2213.x, x_2213.y, x_2213.z)));
  let x_2217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
  let x_2221 : f32 = u_xlat42;
  let x_2223 : vec4<f32> = u_xlat0;
  let x_2227 : vec4<f32> = x_29.unity_FogColor;
  let x_2229 : vec3<f32> = ((vec3<f32>(x_2221, x_2221, x_2221) * vec3<f32>(x_2223.x, x_2223.y, x_2223.z)) + vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
  let x_2230 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


