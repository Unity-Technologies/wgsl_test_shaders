#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

layout(origin_upper_left) in vec4 gl_FragCoord;
#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
const uvec4 ImmCB_0[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec2 _GlobalMipBias;
	float _AlphaToMaskAvailable;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ScreenParams;
	vec4 unity_OrthoParams;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
};
layout(set = 1, binding = 1, std140) uniform AdditionalLights {
	vec4 _AdditionalLightsPosition[32];
	vec4 _AdditionalLightsColor[32];
	vec4 _AdditionalLightsAttenuation[32];
	vec4 _AdditionalLightsSpotDir[32];
	vec4 _AdditionalLightsOcclusionProbes[32];
	float _AdditionalLightsLayerMasks[32];
};
layout(set = 1, binding = 2, std140) uniform UnityPerDraw {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_LODFade;
	vec4 unity_WorldTransformParams;
	vec4 unity_RenderingLayer;
	vec4 unity_LightData;
	vec4 unity_LightIndices[2];
	vec4 unity_ProbesOcclusion;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_HDR;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_RendererBounds_Min;
	vec4 unity_RendererBounds_Max;
	mat4x4 unity_MatrixPreviousM;
	mat4x4 unity_MatrixPreviousMI;
	vec4 unity_MotionVectorsParams;
	vec4 unity_SpriteColor;
	vec4 unity_SpriteProps;
};
layout(set = 1, binding = 3, std140) uniform LightShadows {
	mat4x4 _MainLightWorldToShadow[5];
	vec4 _CascadeShadowSplitSpheres0;
	vec4 _CascadeShadowSplitSpheres1;
	vec4 _CascadeShadowSplitSpheres2;
	vec4 _CascadeShadowSplitSpheres3;
	vec4 _CascadeShadowSplitSphereRadii;
	vec4 _MainLightShadowOffset0;
	vec4 _MainLightShadowOffset1;
	vec4 _MainLightShadowParams;
	vec4 _MainLightShadowmapSize;
	vec4 _AdditionalShadowOffset0;
	vec4 _AdditionalShadowOffset1;
	vec4 _AdditionalShadowFadeParams;
	vec4 _AdditionalShadowmapSize;
	vec4 _AdditionalShadowParams[32];
	mat4x4 _AdditionalLightsWorldToShadow[32];
};
layout(set = 1, binding = 4, std140) uniform UnityPerMaterial {
	vec4 Texture2D_B222E8F_TexelSize;
	vec4 Color_C30C7CA3;
	vec4 Texture2D_D9BFD5F1_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D Texture2D_B222E8F;
layout(set = 0, binding = 6) uniform mediump texture2D Texture2D_D9BFD5F1;
layout(location = 0) in highp  vec2 vs_INTERP0;
layout(location = 1) in highp  vec4 vs_INTERP3;
layout(location = 2) in highp  vec4 vs_INTERP4;
layout(location = 3) in highp  vec4 vs_INTERP5;
layout(location = 4) in highp  vec4 vs_INTERP6;
layout(location = 5) in highp  vec3 vs_INTERP8;
layout(location = 6) in highp  vec3 vs_INTERP9;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
uint u_xlatu3;
vec3 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
int u_xlati8;
vec4 u_xlat9;
vec4 u_xlat10;
int u_xlati10;
vec4 u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat12;
bvec2 u_xlatb12;
vec3 u_xlat14;
int u_xlati14;
uvec3 u_xlatu14;
bool u_xlatb14;
vec3 u_xlat18;
bool u_xlatb18;
vec3 u_xlat20;
vec3 u_xlat21;
float u_xlat22;
bvec3 u_xlatb22;
vec2 u_xlat26;
int u_xlati26;
uint u_xlatu26;
float u_xlat30;
bool u_xlatb30;
float u_xlat34;
bool u_xlatb34;
float u_xlat37;
uint u_xlatu37;
float u_xlat38;
int u_xlati38;
uint u_xlatu38;
float u_xlat39;
float u_xlat40;
uint u_xlatu40;
float u_xlat41;
float u_xlat42;
float u_xlat43;
int u_xlati43;
uint u_xlatu43;
bool u_xlatb43;
float u_xlat44;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 10) uniform mediump  sampler samplerTexture2D_B222E8F;
layout(set = 0, binding = 11) uniform mediump  sampler samplerTexture2D_D9BFD5F1;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
    u_xlat0 = dot(vs_INTERP9.xyz, vs_INTERP9.xyz);
    u_xlat0 = sqrt(u_xlat0);
    u_xlat0 = float(1.0) / u_xlat0;
    u_xlatb12.x = 0.0<vs_INTERP4.w;
    u_xlatb12.y = unity_WorldTransformParams.w>=0.0;
    u_xlat12.x = (u_xlatb12.x) ? float(1.0) : float(-1.0);
    u_xlat12.y = (u_xlatb12.y) ? float(1.0) : float(-1.0);
    u_xlat12.x = u_xlat12.y * u_xlat12.x;
    u_xlat1.xyz = vs_INTERP4.yzx * vs_INTERP9.zxy;
    u_xlat1.xyz = vs_INTERP9.yzx * vs_INTERP4.zxy + (-u_xlat1.xyz);
    u_xlat12.xyz = u_xlat12.xxx * u_xlat1.xyz;
    u_xlat1.xyz = vec3(u_xlat0) * vs_INTERP9.xyz;
    u_xlat2.xyz = vec3(u_xlat0) * vs_INTERP4.xyz;
    u_xlat3.xyz = u_xlat12.xyz * vec3(u_xlat0);
    u_xlatb0 = unity_OrthoParams.w==0.0;
    u_xlat4.xyz = (-vs_INTERP8.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat37 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat4.xyz = vec3(u_xlat37) * u_xlat4.xyz;
    u_xlat5.x = unity_MatrixV[0].z;
    u_xlat5.y = unity_MatrixV[1].z;
    u_xlat5.z = unity_MatrixV[2].z;
    u_xlat4.xyz = (bool(u_xlatb0)) ? u_xlat4.xyz : u_xlat5.xyz;
    u_xlat5.xyz = u_xlat4.yyy * unity_WorldToObject[1].xyz;
    u_xlat5.xyz = unity_WorldToObject[0].xyz * u_xlat4.xxx + u_xlat5.xyz;
    u_xlat5.xyz = unity_WorldToObject[2].xyz * u_xlat4.zzz + u_xlat5.xyz;
    u_xlat0 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat0 = inversesqrt(u_xlat0);
    u_xlat5.xyz = vec3(u_xlat0) * u_xlat5.xyz;
    u_xlat6 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat7.xyz = u_xlat6.xyz * Color_C30C7CA3.xyz;
    u_xlat8 = texture(sampler2D(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1), vs_INTERP5.xy, _GlobalMipBias.x).wxyz;
    u_xlat9 = u_xlat8.yzwx * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat0 = dot(u_xlat9, u_xlat9);
    u_xlat0 = inversesqrt(u_xlat0);
    u_xlat20.xyz = vec3(u_xlat0) * u_xlat9.xyz;
    u_xlat0 = vs_INTERP6.y * 200.0;
    u_xlat0 = min(u_xlat0, 1.0);
    u_xlat6.xyz = vec3(u_xlat0) * u_xlat6.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat20.yyy;
    u_xlat2.xyz = u_xlat20.xxx * u_xlat2.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat20.zzz * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat0 = max(u_xlat0, 1.17549435e-38);
    u_xlat0 = inversesqrt(u_xlat0);
    u_xlat1.xyz = vec3(u_xlat0) * u_xlat1.xyz;
    u_xlat2.xyz = vs_INTERP8.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * vs_INTERP8.xxx + u_xlat2.xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * vs_INTERP8.zzz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat2.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat0 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat37 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat0 = u_xlat0 * _MainLightShadowParams.x + u_xlat37;
    u_xlatb2 = 0.0>=u_xlat2.z;
    u_xlatb14 = u_xlat2.z>=1.0;
    u_xlatb2 = u_xlatb14 || u_xlatb2;
    u_xlat0 = (u_xlatb2) ? 1.0 : u_xlat0;
    u_xlat1.x = dot(u_xlat1.xyz, (-_MainLightPosition.xyz));
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat2.xyz = vec3(u_xlat0) * _MainLightColor.xyz;
    u_xlat1.xyz = u_xlat1.xxx * u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat6.xyz;
    u_xlatb0 = unity_LODFade.x<0.0;
    u_xlat2.x = unity_LODFade.x + 1.0;
    u_xlat0 = (u_xlatb0) ? u_xlat2.x : unity_LODFade.x;
    u_xlatb2 = 0.5>=u_xlat0;
    u_xlat14.xyz = abs(u_xlat5.xyz) * _ScreenParams.xyx;
    u_xlatu14.xyz = uvec3(u_xlat14.xyz);
    u_xlatu38 = u_xlatu14.z * 1025u;
    u_xlatu3 = u_xlatu38 >> (6u & uint(0x1F));
    u_xlati38 = int(u_xlatu38 ^ u_xlatu3);
    u_xlatu38 = uint(u_xlati38) * 9u;
    u_xlatu3 = u_xlatu38 >> (11u & uint(0x1F));
    u_xlati38 = int(u_xlatu38 ^ u_xlatu3);
    u_xlati38 = u_xlati38 * 32769;
    u_xlati26 = int(uint(u_xlati38) ^ u_xlatu14.y);
    u_xlatu26 = uint(u_xlati26) * 1025u;
    u_xlatu38 = u_xlatu26 >> (6u & uint(0x1F));
    u_xlati26 = int(u_xlatu38 ^ u_xlatu26);
    u_xlatu26 = uint(u_xlati26) * 9u;
    u_xlatu38 = u_xlatu26 >> (11u & uint(0x1F));
    u_xlati26 = int(u_xlatu38 ^ u_xlatu26);
    u_xlati26 = u_xlati26 * 32769;
    u_xlati14 = int(uint(u_xlati26) ^ u_xlatu14.x);
    u_xlatu14.x = uint(u_xlati14) * 1025u;
    u_xlatu26 = u_xlatu14.x >> (6u & uint(0x1F));
    u_xlati14 = int(u_xlatu26 ^ u_xlatu14.x);
    u_xlatu14.x = uint(u_xlati14) * 9u;
    u_xlatu26 = u_xlatu14.x >> (11u & uint(0x1F));
    u_xlati14 = int(u_xlatu26 ^ u_xlatu14.x);
    u_xlati14 = u_xlati14 * 32769;
    u_xlat14.x = intBitsToFloat(int(int_bitfieldInsert(1065353216, u_xlati14, 0 & int(0x1F), 23)));
    u_xlat14.x = u_xlat14.x + -1.0;
    u_xlat26.x = (-u_xlat14.x) + 1.0;
    u_xlat2.x = (u_xlatb2) ? u_xlat14.x : u_xlat26.x;
    u_xlat0 = u_xlat0 * 2.0 + (-u_xlat2.x);
    u_xlat2.x = u_xlat0 * u_xlat6.w;
    u_xlatb14 = u_xlat2.x>=0.400000006;
    u_xlat14.x = u_xlatb14 ? u_xlat2.x : float(0.0);
    u_xlat0 = u_xlat6.w * u_xlat0 + -0.400000006;
    u_xlat26.x = dFdxCoarse(u_xlat2.x);
    u_xlat2.x = dFdyCoarse(u_xlat2.x);
    u_xlat2.x = abs(u_xlat2.x) + abs(u_xlat26.x);
    u_xlat2.x = max(u_xlat2.x, 9.99999975e-05);
    u_xlat0 = u_xlat0 / u_xlat2.x;
    u_xlat0 = u_xlat0 + 0.5;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlatb2 = _AlphaToMaskAvailable!=0.0;
    u_xlat0 = (u_xlatb2) ? u_xlat0 : u_xlat14.x;
    u_xlat14.x = u_xlat0 + -9.99999975e-05;
    u_xlatb14 = u_xlat14.x<0.0;
    if(((int(u_xlatb14) * int(0xffffffffu)))!=0){discard;}
    u_xlat12.xyz = u_xlat12.xyz * u_xlat20.yyy;
    u_xlat12.xyz = u_xlat20.xxx * vs_INTERP4.xyz + u_xlat12.xyz;
    u_xlat12.xyz = u_xlat20.zzz * vs_INTERP9.xyz + u_xlat12.xyz;
    u_xlat14.x = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat14.x = inversesqrt(u_xlat14.x);
    u_xlat12.xyz = u_xlat12.xyz * u_xlat14.xxx;
    u_xlat14.x = vs_INTERP8.y * unity_MatrixV[1].z;
    u_xlat14.x = unity_MatrixV[0].z * vs_INTERP8.x + u_xlat14.x;
    u_xlat14.x = unity_MatrixV[2].z * vs_INTERP8.z + u_xlat14.x;
    u_xlat14.x = u_xlat14.x + unity_MatrixV[3].z;
    u_xlat14.x = (-u_xlat14.x) + (-_ProjectionParams.y);
    u_xlat14.x = max(u_xlat14.x, 0.0);
    u_xlat14.x = u_xlat14.x * unity_FogParams.x;
    u_xlat3 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_INTERP0.xy, _GlobalMipBias.x);
    u_xlat5.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_INTERP0.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat26.x = dot(u_xlat12.xyz, u_xlat3.xyz);
    u_xlat26.x = u_xlat26.x + 0.5;
    u_xlat3.xyz = u_xlat26.xxx * u_xlat5.xyz;
    u_xlat26.x = max(u_xlat3.w, 9.99999975e-05);
    u_xlat3.xyz = u_xlat3.xyz / u_xlat26.xxx;
    u_xlat8.x = u_xlat8.x;
    u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
    u_xlat0 = u_xlat0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat5.xyz = u_xlat7.xyz * vec3(0.959999979, 0.959999979, 0.959999979);
    u_xlat26.x = (-u_xlat8.x) + 1.0;
    u_xlat38 = u_xlat26.x * u_xlat26.x;
    u_xlat38 = max(u_xlat38, 0.0078125);
    u_xlat39 = u_xlat38 * u_xlat38;
    u_xlat40 = u_xlat8.x + 0.0400000215;
    u_xlat40 = min(u_xlat40, 1.0);
    u_xlat41 = u_xlat38 * 4.0 + 2.0;
    u_xlat6.x = min(vs_INTERP6.w, 1.0);
    vec3 txVec1 = vec3(vs_INTERP3.xy,vs_INTERP3.z);
    u_xlat18.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
    u_xlat37 = u_xlat18.x * _MainLightShadowParams.x + u_xlat37;
    u_xlatb18 = 0.0>=vs_INTERP3.z;
    u_xlatb30 = vs_INTERP3.z>=1.0;
    u_xlatb18 = u_xlatb30 || u_xlatb18;
    u_xlat37 = (u_xlatb18) ? 1.0 : u_xlat37;
    u_xlat18.xyz = vs_INTERP8.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat18.x = dot(u_xlat18.xyz, u_xlat18.xyz);
    u_xlat30 = u_xlat18.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
    u_xlat42 = (-u_xlat37) + 1.0;
    u_xlat37 = u_xlat30 * u_xlat42 + u_xlat37;
    u_xlat30 = dot((-u_xlat4.xyz), u_xlat12.xyz);
    u_xlat30 = u_xlat30 + u_xlat30;
    u_xlat7.xyz = u_xlat12.xyz * (-vec3(u_xlat30)) + (-u_xlat4.xyz);
    u_xlat30 = dot(u_xlat12.xyz, u_xlat4.xyz);
    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
    u_xlat30 = (-u_xlat30) + 1.0;
    u_xlat30 = u_xlat30 * u_xlat30;
    u_xlat30 = u_xlat30 * u_xlat30;
    u_xlat42 = (-u_xlat26.x) * 0.699999988 + 1.70000005;
    u_xlat26.x = u_xlat26.x * u_xlat42;
    u_xlat26.x = u_xlat26.x * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat26.x);
    u_xlat26.x = u_xlat7.w + -1.0;
    u_xlat26.x = unity_SpecCube0_HDR.w * u_xlat26.x + 1.0;
    u_xlat26.x = max(u_xlat26.x, 0.0);
    u_xlat26.x = log2(u_xlat26.x);
    u_xlat26.x = u_xlat26.x * unity_SpecCube0_HDR.y;
    u_xlat26.x = exp2(u_xlat26.x);
    u_xlat26.x = u_xlat26.x * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat26.xxx;
    u_xlat26.xy = vec2(u_xlat38) * vec2(u_xlat38) + vec2(-1.0, 1.0);
    u_xlat38 = float(1.0) / u_xlat26.y;
    u_xlat40 = u_xlat40 + -0.0399999991;
    u_xlat40 = u_xlat30 * u_xlat40 + 0.0399999991;
    u_xlat38 = u_xlat38 * u_xlat40;
    u_xlat7.xyz = vec3(u_xlat38) * u_xlat7.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz + u_xlat7.xyz;
    u_xlat37 = u_xlat37 * unity_LightData.z;
    u_xlat38 = dot(u_xlat12.xyz, _MainLightPosition.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat37 = u_xlat37 * u_xlat38;
    u_xlat7.xyz = vec3(u_xlat37) * _MainLightColor.xyz;
    u_xlat8.xyz = u_xlat4.xyz + _MainLightPosition.xyz;
    u_xlat37 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat37 = max(u_xlat37, 1.17549435e-38);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat8.xyz = vec3(u_xlat37) * u_xlat8.xyz;
    u_xlat37 = dot(u_xlat12.xyz, u_xlat8.xyz);
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlat38 = dot(_MainLightPosition.xyz, u_xlat8.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat37 = u_xlat37 * u_xlat37;
    u_xlat37 = u_xlat37 * u_xlat26.x + 1.00001001;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat37 = u_xlat37 * u_xlat37;
    u_xlat38 = max(u_xlat38, 0.100000001);
    u_xlat37 = u_xlat37 * u_xlat38;
    u_xlat37 = u_xlat41 * u_xlat37;
    u_xlat37 = u_xlat39 / u_xlat37;
    u_xlat8.xyz = vec3(u_xlat37) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat5.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat37 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu37 =  uint(int(u_xlat37));
    u_xlat38 = u_xlat18.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat18.x = float(0.0);
    u_xlat18.y = float(0.0);
    u_xlat18.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu37 ; u_xlatu_loop_1++)
    {
        u_xlatu43 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati8 = int(u_xlatu_loop_1 & 3u);
        u_xlat43 = dot(unity_LightIndices[int(u_xlatu43)], uintBitsToFloat(ImmCB_0[u_xlati8]));
        u_xlati43 = int(u_xlat43);
        u_xlat8.xyz = (-vs_INTERP8.xyz) * _AdditionalLightsPosition[u_xlati43].www + _AdditionalLightsPosition[u_xlati43].xyz;
        u_xlat44 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat44 = max(u_xlat44, 6.10351562e-05);
        u_xlat9.x = inversesqrt(u_xlat44);
        u_xlat21.xyz = u_xlat8.xyz * u_xlat9.xxx;
        u_xlat10.x = float(1.0) / float(u_xlat44);
        u_xlat44 = u_xlat44 * _AdditionalLightsAttenuation[u_xlati43].x;
        u_xlat44 = (-u_xlat44) * u_xlat44 + 1.0;
        u_xlat44 = max(u_xlat44, 0.0);
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.x = dot(_AdditionalLightsSpotDir[u_xlati43].xyz, u_xlat21.xyz);
        u_xlat10.x = u_xlat10.x * _AdditionalLightsAttenuation[u_xlati43].z + _AdditionalLightsAttenuation[u_xlati43].w;
        u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
        u_xlat10.x = u_xlat10.x * u_xlat10.x;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlati10 = int(_AdditionalShadowParams[u_xlati43].w);
        u_xlatb22.x = u_xlati10>=0;
        if(u_xlatb22.x){
            u_xlatb22.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati43].z);
            if(u_xlatb22.x){
                u_xlatb22.xyz = greaterThanEqual(abs(u_xlat21.zzyy), abs(u_xlat21.xyxx)).xyz;
                u_xlatb22.x = u_xlatb22.y && u_xlatb22.x;
                u_xlatb11.xyz = lessThan((-u_xlat21.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat34 = u_xlatb11.z ? 1.0 : float(0.0);
                u_xlat34 = (u_xlatb22.z) ? u_xlat11.y : u_xlat34;
                u_xlat22 = (u_xlatb22.x) ? u_xlat11.x : u_xlat34;
                u_xlat34 = trunc(_AdditionalShadowParams[u_xlati43].w);
                u_xlat22 = u_xlat22 + u_xlat34;
                u_xlati10 = int(u_xlat22);
            }
            u_xlati10 = u_xlati10 << (2 & int(0x1F));
            u_xlat11 = vs_INTERP8.yyyy * _AdditionalLightsWorldToShadow[(u_xlati10 + 1) / 4][(u_xlati10 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati10 / 4][u_xlati10 % 4] * vs_INTERP8.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati10 + 2) / 4][(u_xlati10 + 2) % 4] * vs_INTERP8.zzzz + u_xlat11;
            u_xlat10 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati10 + 3) / 4][(u_xlati10 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec2 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat10.x = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec2, 0.0);
            u_xlat22 = 1.0 + (-_AdditionalShadowParams[u_xlati43].x);
            u_xlat10.x = u_xlat10.x * _AdditionalShadowParams[u_xlati43].x + u_xlat22;
            u_xlatb22.x = 0.0>=u_xlat10.z;
            u_xlatb34 = u_xlat10.z>=1.0;
            u_xlatb22.x = u_xlatb34 || u_xlatb22.x;
            u_xlat10.x = (u_xlatb22.x) ? 1.0 : u_xlat10.x;
        } else {
            u_xlat10.x = 1.0;
        }
        u_xlat22 = (-u_xlat10.x) + 1.0;
        u_xlat10.x = u_xlat38 * u_xlat22 + u_xlat10.x;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.x = dot(u_xlat12.xyz, u_xlat21.xyz);
        u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.xyz = vec3(u_xlat44) * _AdditionalLightsColor[u_xlati43].xyz;
        u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xxx + u_xlat4.xyz;
        u_xlat43 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat43 = max(u_xlat43, 1.17549435e-38);
        u_xlat43 = inversesqrt(u_xlat43);
        u_xlat8.xyz = vec3(u_xlat43) * u_xlat8.xyz;
        u_xlat43 = dot(u_xlat12.xyz, u_xlat8.xyz);
        u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
        u_xlat8.x = dot(u_xlat21.xyz, u_xlat8.xyz);
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat43 = u_xlat43 * u_xlat26.x + 1.00001001;
        u_xlat8.x = u_xlat8.x * u_xlat8.x;
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat8.x = max(u_xlat8.x, 0.100000001);
        u_xlat43 = u_xlat43 * u_xlat8.x;
        u_xlat43 = u_xlat41 * u_xlat43;
        u_xlat43 = u_xlat39 / u_xlat43;
        u_xlat8.xyz = vec3(u_xlat43) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat5.xyz;
        u_xlat18.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat18.xyz;
    }
    u_xlat12.xyz = u_xlat3.xyz * u_xlat6.xxx + u_xlat7.xyz;
    u_xlat12.xyz = u_xlat18.xyz + u_xlat12.xyz;
    u_xlat12.xyz = vs_INTERP6.www * u_xlat1.xyz + u_xlat12.xyz;
    u_xlat1.x = u_xlat14.x * (-u_xlat14.x);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat12.xyz = u_xlat12.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat12.xyz + unity_FogColor.xyz;
    SV_Target0.w = (u_xlatb2) ? u_xlat0 : 1.0;
    return;
}

