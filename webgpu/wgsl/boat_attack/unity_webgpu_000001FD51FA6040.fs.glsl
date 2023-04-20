#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 unity_OrthoParams;
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
layout(set = 1, binding = 4, std140) uniform LightCookies {
	mat4x4 _MainLightWorldToLight;
	float _AdditionalLightsCookieEnableBits;
	float _MainLightCookieTextureFormat;
	float _AdditionalLightsCookieAtlasTextureFormat;
	mat4x4 _AdditionalLightsWorldToLights[32];
	vec4 _AdditionalLightsCookieAtlasUVRects[32];
	float _AdditionalLightsLightTypes[32];
};
layout(set = 1, binding = 5, std140) uniform UnityPerMaterial {
	vec4 _SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D_TexelSize;
	vec4 _MainTex_TexelSize;
	vec4 Texture2D_DE8BF47E_TexelSize;
	float Vector1_6E11FCEA;
	float Vector1_A492C01C;
	float Vector1_8B35DE98;
	vec4 Texture2D_C005B064_TexelSize;
	vec4 Texture2D_D7D66558_TexelSize;
	float Vector1_90E376AD;
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D;
layout(set = 0, binding = 6) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 7) uniform mediump texture2D Texture2D_DE8BF47E;
layout(set = 0, binding = 8) uniform mediump texture2D Texture2D_C005B064;
layout(set = 0, binding = 9) uniform mediump texture2D Texture2D_D7D66558;
layout(location = 0) in highp  vec4 vs_INTERP3;
layout(location = 1) in highp  vec4 vs_INTERP4;
layout(location = 2) in highp  vec4 vs_INTERP5;
layout(location = 3) in highp  vec3 vs_INTERP7;
layout(location = 4) in highp  vec3 vs_INTERP8;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
bvec2 u_xlatb7;
vec3 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
bvec4 u_xlatb11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat14;
bvec2 u_xlatb14;
vec2 u_xlat15;
float u_xlat17;
vec3 u_xlat18;
vec3 u_xlat21;
vec3 u_xlat22;
float u_xlat28;
float u_xlat31;
vec2 u_xlat35;
int u_xlati35;
bool u_xlatb35;
vec2 u_xlat39;
bvec2 u_xlatb39;
float u_xlat42;
uint u_xlatu42;
float u_xlat43;
float u_xlat44;
uint u_xlatu44;
float u_xlat45;
int u_xlati45;
uint u_xlatu45;
bool u_xlatb45;
float u_xlat46;
int u_xlati46;
bool u_xlatb46;
float u_xlat47;
bool u_xlatb47;
float u_xlat48;
int u_xlati48;
float u_xlat49;
int u_xlati49;
bool u_xlatb49;
int u_xlati51;
layout(set = 0, binding = 10) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 12) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 16) uniform mediump  sampler samplerTexture2D_DE8BF47E;
layout(set = 0, binding = 17) uniform mediump  sampler samplerTexture2D_C005B064;
layout(set = 0, binding = 18) uniform mediump  sampler samplerTexture2D_D7D66558;
void main()
{
    u_xlat0.x = dot(vs_INTERP8.xyz, vs_INTERP8.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlatb14.x = 0.0<vs_INTERP4.w;
    u_xlatb14.y = unity_WorldTransformParams.w>=0.0;
    u_xlat14.x = (u_xlatb14.x) ? float(1.0) : float(-1.0);
    u_xlat14.y = (u_xlatb14.y) ? float(1.0) : float(-1.0);
    u_xlat14.x = u_xlat14.y * u_xlat14.x;
    u_xlat1.xyz = vs_INTERP4.yzx * vs_INTERP8.zxy;
    u_xlat1.xyz = vs_INTERP8.yzx * vs_INTERP4.zxy + (-u_xlat1.xyz);
    u_xlat0.yzw = u_xlat14.xxx * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat0.xxx * vs_INTERP8.xyz;
    u_xlat2.xyz = u_xlat0.xxx * vs_INTERP4.xyz;
    u_xlat3.xyz = u_xlat0.yzw * u_xlat0.xxx;
    u_xlat4 = texture(sampler2D(_MainTex, sampler_MainTex), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat0.x = u_xlat4.w + -0.5;
    u_xlat43 = u_xlat0.x * 4.0 + vs_INTERP7.y;
    u_xlat43 = u_xlat43 * 0.330000013;
    u_xlat44 = vs_INTERP7.y + 1.0;
    u_xlat44 = u_xlat44 * -1.33333337 + 1.0;
    u_xlat43 = max(u_xlat43, u_xlat44);
    u_xlat1.w = max(u_xlat43, 0.100000001);
    u_xlat5.xy = vs_INTERP5.xy * vec2(4.0, 4.0);
    u_xlat6.xyz = texture(sampler2D(Texture2D_D7D66558, samplerTexture2D_D7D66558), u_xlat5.xy, _GlobalMipBias.x).xyz;
    u_xlat44 = (-Vector1_8B35DE98) * 0.0111109996 + 0.949999988;
    u_xlat45 = Vector1_A492C01C + -10.0;
    u_xlat45 = (-u_xlat45) + vs_INTERP7.y;
    u_xlat45 = u_xlat45 * 0.0500000007;
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat46 = u_xlat45 * -2.0 + 3.0;
    u_xlat45 = u_xlat45 * u_xlat45;
    u_xlat45 = u_xlat45 * u_xlat46;
    u_xlat7 = texture(sampler2D(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat21.xyz = u_xlat7.wyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat3.xyz = u_xlat3.xyz * u_xlat21.yyy;
    u_xlat2.xyz = u_xlat21.xxx * u_xlat2.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat21.zzz * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.x = max(u_xlat1.x, 1.17549435e-38);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * u_xlat1.y;
    u_xlat1.x = u_xlat45 * u_xlat1.x + (-u_xlat44);
    u_xlat1.x = u_xlat1.x * 10.0;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat15.x = u_xlat1.x * -2.0 + 3.0;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat1.x = u_xlat1.x * u_xlat15.x;
    u_xlat1.xw = min(u_xlat1.xw, vec2(1.0, 1.0));
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat2.xyz = u_xlat4.xyz + (-u_xlat6.xyz);
    u_xlat2.xyz = u_xlat1.xxx * u_xlat2.xyz + u_xlat6.xyz;
    u_xlat3.xyz = u_xlat1.www * u_xlat2.xyz;
    u_xlat18.xyz = texture(sampler2D(Texture2D_C005B064, samplerTexture2D_C005B064), u_xlat5.xy, _GlobalMipBias.x).xyw;
    u_xlat18.x = u_xlat18.x * u_xlat18.z;
    u_xlat5.xy = u_xlat18.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat15.x = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlat15.x = min(u_xlat15.x, 1.0);
    u_xlat15.x = (-u_xlat15.x) + 1.0;
    u_xlat15.x = sqrt(u_xlat15.x);
    u_xlat5.z = max(u_xlat15.x, 1.00000002e-16);
    u_xlat15.x = dot(unity_ObjectToWorld[0].xyz, unity_ObjectToWorld[0].xyz);
    u_xlat6.x = sqrt(u_xlat15.x);
    u_xlat15.x = dot(unity_ObjectToWorld[1].xyz, unity_ObjectToWorld[1].xyz);
    u_xlat6.y = sqrt(u_xlat15.x);
    u_xlat15.x = dot(unity_ObjectToWorld[2].xyz, unity_ObjectToWorld[2].xyz);
    u_xlat6.z = sqrt(u_xlat15.x);
    u_xlat15.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat15.x = sqrt(u_xlat15.x);
    u_xlat15.x = u_xlat15.x * Vector1_90E376AD;
    u_xlat15.x = u_xlat15.x * 30.0;
    u_xlat15.xy = u_xlat15.xx * vs_INTERP5.xy;
    u_xlat18.xyz = texture(sampler2D(_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D), u_xlat15.xy, _GlobalMipBias.x).xyw;
    u_xlat18.x = u_xlat18.x * u_xlat18.z;
    u_xlat15.xy = u_xlat18.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat44 = dot(u_xlat15.xy, u_xlat15.xy);
    u_xlat44 = min(u_xlat44, 1.0);
    u_xlat44 = (-u_xlat44) + 1.0;
    u_xlat44 = sqrt(u_xlat44);
    u_xlat44 = max(u_xlat44, 1.00000002e-16);
    u_xlat6.xy = u_xlat15.xy + u_xlat21.xy;
    u_xlat6.z = u_xlat44 * u_xlat21.z;
    u_xlat15.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat15.x = max(u_xlat15.x, 6.10351562e-05);
    u_xlat15.x = inversesqrt(u_xlat15.x);
    u_xlat18.xyz = u_xlat6.xyz * u_xlat15.xxx + (-u_xlat5.xyz);
    u_xlat4.yzw = u_xlat1.xxx * u_xlat18.xyz + u_xlat5.xyz;
    u_xlat0.x = -abs(u_xlat0.x) + 1.0;
    u_xlat0 = u_xlat0 * u_xlat4.xzzz;
    u_xlat0.x = u_xlat0.x * Vector1_6E11FCEA;
    u_xlat0.x = u_xlat1.x * u_xlat0.x + -0.850000024;
    u_xlat0.x = u_xlat1.w * u_xlat0.x + 0.850000024;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat14.xyz = u_xlat4.yyy * vs_INTERP4.xyz + u_xlat0.yzw;
    u_xlat14.xyz = u_xlat4.www * vs_INTERP8.xyz + u_xlat14.xyz;
    u_xlat1.x = dot(u_xlat14.xyz, u_xlat14.xyz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat4.xyz = u_xlat14.xyz * u_xlat1.xxx;
    u_xlatb14.x = unity_OrthoParams.w==0.0;
    u_xlat1.xyz = (-vs_INTERP7.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat28 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat28 = inversesqrt(u_xlat28);
    u_xlat1.xyz = vec3(u_xlat28) * u_xlat1.xyz;
    u_xlat5.x = (u_xlatb14.x) ? u_xlat1.x : unity_MatrixV[0].z;
    u_xlat5.y = (u_xlatb14.x) ? u_xlat1.y : unity_MatrixV[1].z;
    u_xlat5.z = (u_xlatb14.x) ? u_xlat1.z : unity_MatrixV[2].z;
    u_xlat4.w = 1.0;
    u_xlat1.x = dot(unity_SHAr, u_xlat4);
    u_xlat1.y = dot(unity_SHAg, u_xlat4);
    u_xlat1.z = dot(unity_SHAb, u_xlat4);
    u_xlat6 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat8.x = dot(unity_SHBr, u_xlat6);
    u_xlat8.y = dot(unity_SHBg, u_xlat6);
    u_xlat8.z = dot(unity_SHBb, u_xlat6);
    u_xlat14.x = u_xlat4.y * u_xlat4.y;
    u_xlat14.x = u_xlat4.x * u_xlat4.x + (-u_xlat14.x);
    u_xlat14.xyz = unity_SHC.xyz * u_xlat14.xxx + u_xlat8.xyz;
    u_xlat14.xyz = u_xlat14.xyz + u_xlat1.xyz;
    u_xlat14.xyz = max(u_xlat14.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat3.xyz * vec3(0.863999963, 0.863999963, 0.863999963);
    u_xlat2.xyz = u_xlat1.www * u_xlat2.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.100000001, 0.100000001, 0.100000001) + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat43 = (-u_xlat0.x) + 1.0;
    u_xlat44 = u_xlat43 * u_xlat43;
    u_xlat44 = max(u_xlat44, 0.0078125);
    u_xlat3.x = u_xlat44 * u_xlat44;
    u_xlat0.x = u_xlat0.x + 0.136000037;
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat17 = u_xlat44 * 4.0 + 2.0;
    u_xlat31 = min(u_xlat7.x, 1.0);
    vec3 txVec0 = vec3(vs_INTERP3.xy,vs_INTERP3.z);
    u_xlat45 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat46 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat45 = u_xlat45 * _MainLightShadowParams.x + u_xlat46;
    u_xlatb46 = 0.0>=vs_INTERP3.z;
    u_xlatb47 = vs_INTERP3.z>=1.0;
    u_xlatb46 = u_xlatb46 || u_xlatb47;
    u_xlat45 = (u_xlatb46) ? 1.0 : u_xlat45;
    u_xlat6.xyz = vs_INTERP7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat46 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat47 = u_xlat46 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat6.x = (-u_xlat45) + 1.0;
    u_xlat45 = u_xlat47 * u_xlat6.x + u_xlat45;
    u_xlatb47 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb47){
        u_xlat6.xy = vs_INTERP7.yy * _MainLightWorldToLight[1].xy;
        u_xlat6.xy = _MainLightWorldToLight[0].xy * vs_INTERP7.xx + u_xlat6.xy;
        u_xlat6.xy = _MainLightWorldToLight[2].xy * vs_INTERP7.zz + u_xlat6.xy;
        u_xlat6.xy = u_xlat6.xy + _MainLightWorldToLight[3].xy;
        u_xlat6.xy = u_xlat6.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat6 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat6.xy, _GlobalMipBias.x);
        u_xlatb7.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat47 = (u_xlatb7.y) ? u_xlat6.w : u_xlat6.x;
        u_xlat6.xyz = (u_xlatb7.x) ? u_xlat6.xyz : vec3(u_xlat47);
    } else {
        u_xlat6.x = float(1.0);
        u_xlat6.y = float(1.0);
        u_xlat6.z = float(1.0);
    }
    u_xlat6.xyz = u_xlat6.xyz * _MainLightColor.xyz;
    u_xlat47 = dot((-u_xlat5.xyz), u_xlat4.xyz);
    u_xlat47 = u_xlat47 + u_xlat47;
    u_xlat7.xyz = u_xlat4.xyz * (-vec3(u_xlat47)) + (-u_xlat5.xyz);
    u_xlat47 = dot(u_xlat4.xyz, u_xlat5.xyz);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat47 = (-u_xlat47) + 1.0;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat48 = (-u_xlat43) * 0.699999988 + 1.70000005;
    u_xlat43 = u_xlat43 * u_xlat48;
    u_xlat43 = u_xlat43 * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat43);
    u_xlat43 = u_xlat7.w + -1.0;
    u_xlat43 = unity_SpecCube0_HDR.w * u_xlat43 + 1.0;
    u_xlat43 = max(u_xlat43, 0.0);
    u_xlat43 = log2(u_xlat43);
    u_xlat43 = u_xlat43 * unity_SpecCube0_HDR.y;
    u_xlat43 = exp2(u_xlat43);
    u_xlat43 = u_xlat43 * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat7.xyz * vec3(u_xlat43);
    u_xlat8.xy = vec2(u_xlat44) * vec2(u_xlat44) + vec2(-1.0, 1.0);
    u_xlat43 = float(1.0) / u_xlat8.y;
    u_xlat22.xyz = (-u_xlat2.xyz) + u_xlat0.xxx;
    u_xlat22.xyz = vec3(u_xlat47) * u_xlat22.xyz + u_xlat2.xyz;
    u_xlat22.xyz = vec3(u_xlat43) * u_xlat22.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat22.xyz;
    u_xlat0.xyz = u_xlat14.xyz * u_xlat1.xyz + u_xlat7.xyz;
    u_xlat42 = u_xlat45 * unity_LightData.z;
    u_xlat43 = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat43;
    u_xlat6.xyz = vec3(u_xlat42) * u_xlat6.xyz;
    u_xlat7.xyz = u_xlat5.xyz + _MainLightPosition.xyz;
    u_xlat42 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42 = max(u_xlat42, 1.17549435e-38);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat7.xyz = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat42 = dot(u_xlat4.xyz, u_xlat7.xyz);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat43 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat42 = u_xlat42 * u_xlat8.x + 1.00001001;
    u_xlat43 = u_xlat43 * u_xlat43;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat43 = max(u_xlat43, 0.100000001);
    u_xlat42 = u_xlat42 * u_xlat43;
    u_xlat42 = u_xlat17 * u_xlat42;
    u_xlat42 = u_xlat3.x / u_xlat42;
    u_xlat7.xyz = u_xlat2.xyz * vec3(u_xlat42) + u_xlat1.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat7.xyz;
    u_xlat42 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu42 =  uint(int(u_xlat42));
    u_xlat43 = u_xlat46 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlatb7.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat22.x = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat22.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu42 ; u_xlatu_loop_1++)
    {
        u_xlatu45 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati46 = int(u_xlatu_loop_1 & 3u);
        u_xlat45 = dot(unity_LightIndices[int(u_xlatu45)], uintBitsToFloat(ImmCB_0[u_xlati46]));
        u_xlati45 = int(u_xlat45);
        u_xlat9.xyz = (-vs_INTERP7.xyz) * _AdditionalLightsPosition[u_xlati45].www + _AdditionalLightsPosition[u_xlati45].xyz;
        u_xlat46 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat46 = max(u_xlat46, 6.10351562e-05);
        u_xlat47 = inversesqrt(u_xlat46);
        u_xlat10.xyz = vec3(u_xlat47) * u_xlat9.xyz;
        u_xlat48 = float(1.0) / float(u_xlat46);
        u_xlat46 = u_xlat46 * _AdditionalLightsAttenuation[u_xlati45].x;
        u_xlat46 = (-u_xlat46) * u_xlat46 + 1.0;
        u_xlat46 = max(u_xlat46, 0.0);
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat46 = u_xlat46 * u_xlat48;
        u_xlat48 = dot(_AdditionalLightsSpotDir[u_xlati45].xyz, u_xlat10.xyz);
        u_xlat48 = u_xlat48 * _AdditionalLightsAttenuation[u_xlati45].z + _AdditionalLightsAttenuation[u_xlati45].w;
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat46 = u_xlat46 * u_xlat48;
        u_xlati48 = int(_AdditionalShadowParams[u_xlati45].w);
        u_xlatb35 = u_xlati48>=0;
        if(u_xlatb35){
            u_xlatb35 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati45].z);
            if(u_xlatb35){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb35 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat49 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat49 = (u_xlatb11.z) ? u_xlat11.y : u_xlat49;
                u_xlat35.x = (u_xlatb35) ? u_xlat11.x : u_xlat49;
                u_xlat49 = trunc(_AdditionalShadowParams[u_xlati45].w);
                u_xlat35.x = u_xlat35.x + u_xlat49;
                u_xlati48 = int(u_xlat35.x);
            }
            u_xlati48 = u_xlati48 << (2 & int(0x1F));
            u_xlat11 = vs_INTERP7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati48 + 1) / 4][(u_xlati48 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati48 / 4][u_xlati48 % 4] * vs_INTERP7.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati48 + 2) / 4][(u_xlati48 + 2) % 4] * vs_INTERP7.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati48 + 3) / 4][(u_xlati48 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec1 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat48 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat35.x = 1.0 + (-_AdditionalShadowParams[u_xlati45].x);
            u_xlat48 = u_xlat48 * _AdditionalShadowParams[u_xlati45].x + u_xlat35.x;
            u_xlatb35 = 0.0>=u_xlat11.z;
            u_xlatb49 = u_xlat11.z>=1.0;
            u_xlatb35 = u_xlatb49 || u_xlatb35;
            u_xlat48 = (u_xlatb35) ? 1.0 : u_xlat48;
        } else {
            u_xlat48 = 1.0;
        }
        u_xlat35.x = (-u_xlat48) + 1.0;
        u_xlat48 = u_xlat43 * u_xlat35.x + u_xlat48;
        u_xlati35 = 1 << (u_xlati45 & int(0x1F));
        u_xlati35 = int(uint(u_xlati35) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati35 != 0) {
            u_xlati35 = int(_AdditionalLightsLightTypes[u_xlati45]);
            u_xlati49 = (u_xlati35 != 0) ? 0 : 1;
            u_xlati51 = u_xlati45 << (2 & int(0x1F));
            if(u_xlati49 != 0) {
                u_xlat11.xyz = vs_INTERP7.yyy * _AdditionalLightsWorldToLights[(u_xlati51 + 1) / 4][(u_xlati51 + 1) % 4].xyw;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[u_xlati51 / 4][u_xlati51 % 4].xyw * vs_INTERP7.xxx + u_xlat11.xyz;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[(u_xlati51 + 2) / 4][(u_xlati51 + 2) % 4].xyw * vs_INTERP7.zzz + u_xlat11.xyz;
                u_xlat11.xyz = u_xlat11.xyz + _AdditionalLightsWorldToLights[(u_xlati51 + 3) / 4][(u_xlati51 + 3) % 4].xyw;
                u_xlat11.xy = u_xlat11.xy / u_xlat11.zz;
                u_xlat11.xy = u_xlat11.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat11.xy = clamp(u_xlat11.xy, 0.0, 1.0);
                u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati45].xy * u_xlat11.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati45].zw;
            } else {
                u_xlatb35 = u_xlati35==1;
                u_xlati35 = u_xlatb35 ? 1 : int(0);
                if(u_xlati35 != 0) {
                    u_xlat35.xy = vs_INTERP7.yy * _AdditionalLightsWorldToLights[(u_xlati51 + 1) / 4][(u_xlati51 + 1) % 4].xy;
                    u_xlat35.xy = _AdditionalLightsWorldToLights[u_xlati51 / 4][u_xlati51 % 4].xy * vs_INTERP7.xx + u_xlat35.xy;
                    u_xlat35.xy = _AdditionalLightsWorldToLights[(u_xlati51 + 2) / 4][(u_xlati51 + 2) % 4].xy * vs_INTERP7.zz + u_xlat35.xy;
                    u_xlat35.xy = u_xlat35.xy + _AdditionalLightsWorldToLights[(u_xlati51 + 3) / 4][(u_xlati51 + 3) % 4].xy;
                    u_xlat35.xy = u_xlat35.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat35.xy = fract(u_xlat35.xy);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati45].xy * u_xlat35.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati45].zw;
                } else {
                    u_xlat12 = vs_INTERP7.yyyy * _AdditionalLightsWorldToLights[(u_xlati51 + 1) / 4][(u_xlati51 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati51 / 4][u_xlati51 % 4] * vs_INTERP7.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati51 + 2) / 4][(u_xlati51 + 2) % 4] * vs_INTERP7.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati51 + 3) / 4][(u_xlati51 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat35.x = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat35.x = inversesqrt(u_xlat35.x);
                    u_xlat12.xyz = u_xlat35.xxx * u_xlat12.xyz;
                    u_xlat35.x = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat35.x = max(u_xlat35.x, 9.99999997e-07);
                    u_xlat35.x = float(1.0) / float(u_xlat35.x);
                    u_xlat13.xyz = u_xlat35.xxx * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb39.xy = greaterThanEqual(u_xlat13.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat39.x = (u_xlatb39.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat39.y = (u_xlatb39.y) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat35.xy = u_xlat12.xy * u_xlat35.xx + u_xlat39.xy;
                    u_xlat35.xy = u_xlat35.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat35.xy = clamp(u_xlat35.xy, 0.0, 1.0);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati45].xy * u_xlat35.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati45].zw;
                }
            }
            u_xlat11 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat11.xy, 0.0);
            u_xlat35.x = (u_xlatb7.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb7.x) ? u_xlat11.xyz : u_xlat35.xxx;
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[u_xlati45].xyz;
        u_xlat45 = u_xlat46 * u_xlat48;
        u_xlat46 = dot(u_xlat4.xyz, u_xlat10.xyz);
        u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat46;
        u_xlat11.xyz = vec3(u_xlat45) * u_xlat11.xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat47) + u_xlat5.xyz;
        u_xlat45 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat45 = max(u_xlat45, 1.17549435e-38);
        u_xlat45 = inversesqrt(u_xlat45);
        u_xlat9.xyz = vec3(u_xlat45) * u_xlat9.xyz;
        u_xlat45 = dot(u_xlat4.xyz, u_xlat9.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat46 = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat45 = u_xlat45 * u_xlat8.x + 1.00001001;
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat46 = max(u_xlat46, 0.100000001);
        u_xlat45 = u_xlat45 * u_xlat46;
        u_xlat45 = u_xlat17 * u_xlat45;
        u_xlat45 = u_xlat3.x / u_xlat45;
        u_xlat9.xyz = u_xlat2.xyz * vec3(u_xlat45) + u_xlat1.xyz;
        u_xlat22.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat22.xyz;
    }
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat31) + u_xlat6.xyz;
    SV_Target0.xyz = u_xlat22.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

