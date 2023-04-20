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
	vec4 _ProjectionParams;
	vec4 unity_OrthoParams;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
	float _DitheringTextureInvSize;
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
layout(set = 1, binding = 3, std140) uniform UnityPerMaterial {
	vec4 _BaseMap_ST;
	vec4 _DetailAlbedoMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Smoothness;
	float _Metallic;
	float _BumpScale;
	float _Parallax;
	float _OcclusionStrength;
	float _ClearCoatMask;
	float _ClearCoatSmoothness;
	float _DetailAlbedoMapScale;
	float _DetailNormalMapScale;
	float _Surface;
};
layout(set = 1, binding = 4, std140) uniform LightShadows {
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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 2) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 3) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 4) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
bvec4 u_xlatb5;
vec4 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
bvec3 u_xlatb10;
float u_xlat11;
bvec3 u_xlatb11;
vec2 u_xlat13;
uint u_xlatu13;
vec3 u_xlat14;
vec3 u_xlat15;
bool u_xlatb15;
vec3 u_xlat17;
uint u_xlatu17;
bool u_xlatb17;
vec3 u_xlat22;
bool u_xlatb22;
vec2 u_xlat25;
float u_xlat27;
bool u_xlatb27;
float u_xlat29;
bool u_xlatb29;
float u_xlat34;
float u_xlat36;
int u_xlati36;
uint u_xlatu36;
float u_xlat37;
float u_xlat40;
float u_xlat41;
float u_xlat42;
int u_xlati42;
uint u_xlatu42;
bool u_xlatb42;
float u_xlat43;
int u_xlati43;
float u_xlat44;
float u_xlat45;
int u_xlati45;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 14) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xw;
    u_xlat2 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyw;
    u_xlat3.x = u_xlat3.x * u_xlat3.z;
    u_xlat25.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat36 = dot(u_xlat25.xy, u_xlat25.xy);
    u_xlat36 = min(u_xlat36, 1.0);
    u_xlat36 = (-u_xlat36) + 1.0;
    u_xlat36 = sqrt(u_xlat36);
    u_xlat36 = max(u_xlat36, 1.00000002e-16);
    u_xlat25.xy = u_xlat25.xy * vec2(vec2(_BumpScale, _BumpScale));
    u_xlat3.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).y;
    u_xlat15.x = (-_OcclusionStrength) + 1.0;
    u_xlat3.x = u_xlat3.x * _OcclusionStrength + u_xlat15.x;
    u_xlat15.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat15.x = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat15.xy, _GlobalMipBias.x).w;
    u_xlatb27 = unity_LODFade.x>=0.0;
    u_xlat15.x = (u_xlatb27) ? abs(u_xlat15.x) : -abs(u_xlat15.x);
    u_xlat15.x = (-u_xlat15.x) + unity_LODFade.x;
    u_xlatb15 = u_xlat15.x<0.0;
    if(((int(u_xlatb15) * int(0xffffffffu)))!=0){discard;}
    u_xlatb15 = unity_OrthoParams.w==0.0;
    u_xlat4.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat27 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat27 = inversesqrt(u_xlat27);
    u_xlat4.xyz = vec3(u_xlat27) * u_xlat4.xyz;
    u_xlat5.x = unity_MatrixV[0].z;
    u_xlat5.y = unity_MatrixV[1].z;
    u_xlat5.z = unity_MatrixV[2].z;
    u_xlat15.xyz = (bool(u_xlatb15)) ? u_xlat4.xyz : u_xlat5.xyz;
    u_xlat4.xyz = vs_TEXCOORD2.zxy * vs_TEXCOORD3.yzx;
    u_xlat4.xyz = vs_TEXCOORD2.yzx * vs_TEXCOORD3.zxy + (-u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz * vs_TEXCOORD3.www;
    u_xlat4.xyz = u_xlat25.yyy * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat25.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
    u_xlat4.xyz = vec3(u_xlat36) * vs_TEXCOORD2.xyz + u_xlat4.xyz;
    u_xlat36 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat4.xyz = vec3(u_xlat36) * u_xlat4.xyz;
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlatb5 = lessThan(u_xlat5, _CascadeShadowSplitSphereRadii);
    u_xlat6.x = u_xlatb5.x ? float(1.0) : 0.0;
    u_xlat6.y = u_xlatb5.y ? float(1.0) : 0.0;
    u_xlat6.z = u_xlatb5.z ? float(1.0) : 0.0;
    u_xlat6.w = u_xlatb5.w ? float(1.0) : 0.0;
;
    u_xlat5.x = (u_xlatb5.x) ? float(-1.0) : float(-0.0);
    u_xlat5.y = (u_xlatb5.y) ? float(-1.0) : float(-0.0);
    u_xlat5.z = (u_xlatb5.z) ? float(-1.0) : float(-0.0);
    u_xlat5.xyz = u_xlat5.xyz + u_xlat6.yzw;
    u_xlat6.yzw = max(u_xlat5.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat36 = dot(u_xlat6, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat36 = (-u_xlat36) + 4.0;
    u_xlatu36 = uint(u_xlat36);
    u_xlati36 = int(u_xlatu36) << (2 & int(0x1F));
    u_xlat5.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati36 + 1) / 4][(u_xlati36 + 1) % 4].xyz;
    u_xlat5.xyz = _MainLightWorldToShadow[u_xlati36 / 4][u_xlati36 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat5.xyz;
    u_xlat5.xyz = _MainLightWorldToShadow[(u_xlati36 + 2) / 4][(u_xlati36 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz + _MainLightWorldToShadow[(u_xlati36 + 3) / 4][(u_xlati36 + 3) % 4].xyz;
    u_xlat36 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat36 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat36;
    u_xlat36 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat36;
    u_xlat36 = u_xlat36 + unity_MatrixV[3].z;
    u_xlat36 = (-u_xlat36) + (-_ProjectionParams.y);
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat36 = u_xlat36 * unity_FogParams.x;
    u_xlat4.w = 1.0;
    u_xlat6.x = dot(unity_SHAr, u_xlat4);
    u_xlat6.y = dot(unity_SHAg, u_xlat4);
    u_xlat6.z = dot(unity_SHAb, u_xlat4);
    u_xlat7 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat8.x = dot(unity_SHBr, u_xlat7);
    u_xlat8.y = dot(unity_SHBg, u_xlat7);
    u_xlat8.z = dot(unity_SHBb, u_xlat7);
    u_xlat25.x = u_xlat4.y * u_xlat4.y;
    u_xlat25.x = u_xlat4.x * u_xlat4.x + (-u_xlat25.x);
    u_xlat7.xyz = unity_SHC.xyz * u_xlat25.xxx + u_xlat8.xyz;
    u_xlat6.xyz = u_xlat6.xyz + u_xlat7.xyz;
    u_xlat6.xyz = max(u_xlat6.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat25.x = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat37 = (-u_xlat25.x) + 1.0;
    u_xlat14.xyz = u_xlat25.xxx * u_xlat2.yzw;
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat1.y) * _Smoothness + 1.0;
    u_xlat25.x = u_xlat1.x * u_xlat1.x;
    u_xlat25.x = max(u_xlat25.x, 0.0078125);
    u_xlat40 = u_xlat25.x * u_xlat25.x;
    u_xlat13.x = u_xlat1.y * _Smoothness + u_xlat37;
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat37 = u_xlat25.x * 4.0 + 2.0;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    vec3 txVec0 = vec3(u_xlat5.xy,u_xlat5.z);
    u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat17.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat5.x = u_xlat5.x * _MainLightShadowParams.x + u_xlat17.x;
    u_xlatb17 = 0.0>=u_xlat5.z;
    u_xlatb29 = u_xlat5.z>=1.0;
    u_xlatb17 = u_xlatb29 || u_xlatb17;
    u_xlat5.x = (u_xlatb17) ? 1.0 : u_xlat5.x;
    u_xlat17.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat17.x = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat29 = u_xlat17.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat29 = clamp(u_xlat29, 0.0, 1.0);
    u_xlat41 = (-u_xlat5.x) + 1.0;
    u_xlat5.x = u_xlat29 * u_xlat41 + u_xlat5.x;
    u_xlat29 = dot((-u_xlat15.xyz), u_xlat4.xyz);
    u_xlat29 = u_xlat29 + u_xlat29;
    u_xlat7.xyz = u_xlat4.xyz * (-vec3(u_xlat29)) + (-u_xlat15.xyz);
    u_xlat29 = dot(u_xlat4.xyz, u_xlat15.xyz);
    u_xlat29 = clamp(u_xlat29, 0.0, 1.0);
    u_xlat29 = (-u_xlat29) + 1.0;
    u_xlat29 = u_xlat29 * u_xlat29;
    u_xlat29 = u_xlat29 * u_xlat29;
    u_xlat41 = (-u_xlat1.x) * 0.699999988 + 1.70000005;
    u_xlat1.x = u_xlat1.x * u_xlat41;
    u_xlat1.x = u_xlat1.x * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat1.x);
    u_xlat1.x = u_xlat7.w + -1.0;
    u_xlat1.x = unity_SpecCube0_HDR.w * u_xlat1.x + 1.0;
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.y;
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat1.xxx;
    u_xlat1.xz = u_xlat25.xx * u_xlat25.xx + vec2(-1.0, 1.0);
    u_xlat25.x = float(1.0) / u_xlat1.z;
    u_xlat8.xyz = (-u_xlat0.xyz) + u_xlat13.xxx;
    u_xlat8.xyz = vec3(u_xlat29) * u_xlat8.xyz + u_xlat0.xyz;
    u_xlat8.xyz = u_xlat25.xxx * u_xlat8.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat14.xyz + u_xlat7.xyz;
    u_xlat13.x = u_xlat5.x * unity_LightData.z;
    u_xlat25.x = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat25.x = clamp(u_xlat25.x, 0.0, 1.0);
    u_xlat13.x = u_xlat25.x * u_xlat13.x;
    u_xlat5.xzw = u_xlat13.xxx * _MainLightColor.xyz;
    u_xlat7.xyz = u_xlat15.xyz + _MainLightPosition.xyz;
    u_xlat13.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat13.x = max(u_xlat13.x, 1.17549435e-38);
    u_xlat13.x = inversesqrt(u_xlat13.x);
    u_xlat7.xyz = u_xlat13.xxx * u_xlat7.xyz;
    u_xlat13.x = dot(u_xlat4.xyz, u_xlat7.xyz);
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat13.y = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat13.y = clamp(u_xlat13.y, 0.0, 1.0);
    u_xlat13.xy = u_xlat13.xy * u_xlat13.xy;
    u_xlat13.x = u_xlat13.x * u_xlat1.x + 1.00001001;
    u_xlat13.x = u_xlat13.x * u_xlat13.x;
    u_xlat25.x = max(u_xlat13.y, 0.100000001);
    u_xlat13.x = u_xlat25.x * u_xlat13.x;
    u_xlat13.x = u_xlat37 * u_xlat13.x;
    u_xlat13.x = u_xlat40 / u_xlat13.x;
    u_xlat7.xyz = u_xlat0.xyz * u_xlat13.xxx + u_xlat14.xyz;
    u_xlat5.xzw = u_xlat5.xzw * u_xlat7.xyz;
    u_xlat13.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu13 =  uint(int(u_xlat13.x));
    u_xlat25.x = u_xlat17.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat25.x = clamp(u_xlat25.x, 0.0, 1.0);
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu13 ; u_xlatu_loop_1++)
    {
        u_xlatu42 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati43 = int(u_xlatu_loop_1 & 3u);
        u_xlat42 = dot(unity_LightIndices[int(u_xlatu42)], uintBitsToFloat(ImmCB_0[u_xlati43]));
        u_xlati42 = int(u_xlat42);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati42].www + _AdditionalLightsPosition[u_xlati42].xyz;
        u_xlat43 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat43 = max(u_xlat43, 6.10351562e-05);
        u_xlat44 = inversesqrt(u_xlat43);
        u_xlat9.xyz = vec3(u_xlat44) * u_xlat8.xyz;
        u_xlat45 = float(1.0) / float(u_xlat43);
        u_xlat43 = u_xlat43 * _AdditionalLightsAttenuation[u_xlati42].x;
        u_xlat43 = (-u_xlat43) * u_xlat43 + 1.0;
        u_xlat43 = max(u_xlat43, 0.0);
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat45 = dot(_AdditionalLightsSpotDir[u_xlati42].xyz, u_xlat9.xyz);
        u_xlat45 = u_xlat45 * _AdditionalLightsAttenuation[u_xlati42].z + _AdditionalLightsAttenuation[u_xlati42].w;
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlati45 = int(_AdditionalShadowParams[u_xlati42].w);
        u_xlatb10.x = u_xlati45>=0;
        if(u_xlatb10.x){
            u_xlatb10.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati42].z);
            if(u_xlatb10.x){
                u_xlatb10.xyz = greaterThanEqual(abs(u_xlat9.zzyz), abs(u_xlat9.xyxx)).xyz;
                u_xlatb10.x = u_xlatb10.y && u_xlatb10.x;
                u_xlatb11.xyz = lessThan((-u_xlat9.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat22.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat22.z = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat11 = u_xlatb11.z ? 1.0 : float(0.0);
                u_xlat34 = (u_xlatb10.z) ? u_xlat22.z : u_xlat11;
                u_xlat10.x = (u_xlatb10.x) ? u_xlat22.x : u_xlat34;
                u_xlat22.x = trunc(_AdditionalShadowParams[u_xlati42].w);
                u_xlat10.x = u_xlat10.x + u_xlat22.x;
                u_xlati45 = int(u_xlat10.x);
            }
            u_xlati45 = u_xlati45 << (2 & int(0x1F));
            u_xlat10 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati45 + 1) / 4][(u_xlati45 + 1) % 4];
            u_xlat10 = _AdditionalLightsWorldToShadow[u_xlati45 / 4][u_xlati45 % 4] * vs_TEXCOORD1.xxxx + u_xlat10;
            u_xlat10 = _AdditionalLightsWorldToShadow[(u_xlati45 + 2) / 4][(u_xlati45 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat10;
            u_xlat10 = u_xlat10 + _AdditionalLightsWorldToShadow[(u_xlati45 + 3) / 4][(u_xlati45 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec1 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat45 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat10.x = 1.0 + (-_AdditionalShadowParams[u_xlati42].x);
            u_xlat45 = u_xlat45 * _AdditionalShadowParams[u_xlati42].x + u_xlat10.x;
            u_xlatb10.x = 0.0>=u_xlat10.z;
            u_xlatb22 = u_xlat10.z>=1.0;
            u_xlatb10.x = u_xlatb22 || u_xlatb10.x;
            u_xlat45 = (u_xlatb10.x) ? 1.0 : u_xlat45;
        } else {
            u_xlat45 = 1.0;
        }
        u_xlat10.x = (-u_xlat45) + 1.0;
        u_xlat45 = u_xlat25.x * u_xlat10.x + u_xlat45;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat45 = dot(u_xlat4.xyz, u_xlat9.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat10.xyz = vec3(u_xlat43) * _AdditionalLightsColor[u_xlati42].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat44) + u_xlat15.xyz;
        u_xlat42 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat42 = max(u_xlat42, 1.17549435e-38);
        u_xlat42 = inversesqrt(u_xlat42);
        u_xlat8.xyz = vec3(u_xlat42) * u_xlat8.xyz;
        u_xlat42 = dot(u_xlat4.xyz, u_xlat8.xyz);
        u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
        u_xlat43 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat42 = u_xlat42 * u_xlat1.x + 1.00001001;
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat43 = max(u_xlat43, 0.100000001);
        u_xlat42 = u_xlat42 * u_xlat43;
        u_xlat42 = u_xlat37 * u_xlat42;
        u_xlat42 = u_xlat40 / u_xlat42;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat14.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat0.xyz = u_xlat6.xyz * u_xlat3.xxx + u_xlat5.xzw;
    u_xlat0.xyz = u_xlat7.xyz + u_xlat0.xyz;
    u_xlat36 = u_xlat36 * (-u_xlat36);
    u_xlat36 = exp2(u_xlat36);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat36) * u_xlat0.xyz + unity_FogColor.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat2.x : 1.0;
    return;
}

