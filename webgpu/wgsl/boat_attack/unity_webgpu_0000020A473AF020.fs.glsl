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
	vec4 _Time;
	vec4 _ScreenParams;
	vec4 _ZBufferParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixVP;
	float _MaxDepth;
	vec4 _VeraslWater_DepthCamParams;
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
	float _BumpScale;
	vec4 _DitherPattern_TexelSize;
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
layout(set = 0, binding = 0) uniform mediump texture2D _PlanarReflectionTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _WaterFXMap;
layout(set = 0, binding = 2) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraOpaqueTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _WaterDepthMap;
layout(set = 0, binding = 5) uniform mediump texture2D _AbsorptionScatteringRamp;
layout(set = 0, binding = 6) uniform mediump texture2D _SurfaceMap;
layout(set = 0, binding = 7) uniform mediump texture2D _FoamMap;
layout(set = 0, binding = 8) uniform mediump texture2D _DitherPattern;
layout(set = 0, binding = 9) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_NORMAL0;
layout(location = 3) in highp  vec3 vs_TEXCOORD2;
layout(location = 4) in highp  vec3 vs_TEXCOORD3;
layout(location = 5) in highp  vec2 vs_TEXCOORD4;
layout(location = 6) in highp  vec4 vs_TEXCOORD5;
layout(location = 7) in highp  vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
uint u_xlatu1;
vec4 u_xlat2;
float u_xlat3;
vec4 u_xlat4;
bvec4 u_xlatb4;
vec4 u_xlat5;
vec4 u_xlat6;
bvec4 u_xlatb6;
vec4 u_xlat7;
vec4 u_xlat8;
bvec4 u_xlatb8;
vec4 u_xlat9;
vec4 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec4 u_xlat13;
vec4 u_xlat14;
vec2 u_xlat15;
vec4 u_xlat16;
vec4 u_xlat17;
vec4 u_xlat18;
vec2 u_xlat20;
vec3 u_xlat22;
int u_xlati22;
uint u_xlatu22;
bool u_xlatb22;
vec2 u_xlat23;
bool u_xlatb23;
vec2 u_xlat25;
float u_xlat38;
vec2 u_xlat40;
vec2 u_xlat41;
int u_xlati41;
uint u_xlatu41;
bool u_xlatb41;
vec2 u_xlat42;
vec2 u_xlat43;
uint u_xlatu44;
vec2 u_xlat45;
vec2 u_xlat46;
vec2 u_xlat49;
float u_xlat57;
float u_xlat58;
float u_xlat59;
uint u_xlatu59;
float u_xlat60;
bool u_xlatb60;
float u_xlat61;
float u_xlat62;
int u_xlati62;
uint u_xlatu62;
bool u_xlatb62;
float u_xlat63;
int u_xlati63;
uint u_xlatu63;
bool u_xlatb63;
float u_xlat64;
float u_xlat65;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_ScreenTextures_linear_clamp;
layout(set = 0, binding = 11) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_CameraOpaqueTexture_linear_clamp;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_WaterDepthMap_linear_clamp;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_AbsorptionScatteringRamp;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_SurfaceMap;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_FoamMap;
layout(set = 0, binding = 17) uniform mediump  sampler sampler_DitherPattern;
layout(set = 0, binding = 18) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
    u_xlat0.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
    u_xlat1.xyz = texture(sampler2D(_WaterFXMap, sampler_ScreenTextures_linear_clamp), vs_TEXCOORD3.xy, _GlobalMipBias.x).xyz;
    u_xlat38 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat0.xy, _GlobalMipBias.x).x;
    u_xlat38 = _ZBufferParams.z * u_xlat38 + _ZBufferParams.w;
    u_xlat38 = float(1.0) / u_xlat38;
    u_xlat38 = u_xlat38 * vs_TEXCOORD5.x + (-vs_TEXCOORD5.y);
    u_xlat2.xy = vs_TEXCOORD1.xz * vec2(0.00200000009, 0.00200000009) + vec2(0.5, 0.5);
    u_xlat57 = textureLod(sampler2D(_WaterDepthMap, sampler_WaterDepthMap_linear_clamp), u_xlat2.xy, 1.0).x;
    u_xlat57 = (-u_xlat57) + 1.0;
    u_xlat58 = _MaxDepth + _VeraslWater_DepthCamParams.x;
    u_xlat57 = u_xlat57 * u_xlat58 + (-_VeraslWater_DepthCamParams.x);
    u_xlat57 = u_xlat57 + vs_TEXCOORD1.y;
    u_xlat58 = float(1.0) / _MaxDepth;
    u_xlat2.xy = texture(sampler2D(_SurfaceMap, sampler_SurfaceMap), vs_TEXCOORD0.zw, _GlobalMipBias.x).xy;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat40.xy = texture(sampler2D(_SurfaceMap, sampler_SurfaceMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xy;
    u_xlat40.xy = u_xlat40.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat2.xy = u_xlat40.xy * vec2(0.5, 0.5) + u_xlat2.xy;
    u_xlat3 = u_xlat38 * 0.00499999989;
    u_xlat40.x = u_xlat38 * 0.25 + 0.25;
    u_xlat40.x = clamp(u_xlat40.x, 0.0, 1.0);
    u_xlat2.xy = u_xlat40.xx * u_xlat2.xy;
    u_xlat2.xz = u_xlat2.xy * vec2(_BumpScale) + vs_NORMAL0.xz;
    u_xlat4.xz = (-u_xlat1.yz) + vec2(0.5, 0.5);
    u_xlat2.w = 0.0;
    u_xlat4.y = vs_NORMAL0.y;
    u_xlat2.xyz = u_xlat2.xwz + u_xlat4.xyz;
    u_xlat20.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat20.x = inversesqrt(u_xlat20.x);
    u_xlat2.xyz = u_xlat20.xxx * u_xlat2.xyz;
    u_xlat20.xy = (-u_xlat2.yy) * unity_MatrixVP[1].xz;
    u_xlat20.xy = unity_MatrixVP[0].xz * (-u_xlat2.xx) + u_xlat20.xy;
    u_xlat20.xy = unity_MatrixVP[2].xz * (-u_xlat2.zz) + u_xlat20.xy;
    u_xlat3 = u_xlat3;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat20.xy = u_xlat20.xy * vec2(u_xlat3) + u_xlat0.xy;
    u_xlat3 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat20.xy, _GlobalMipBias.x).x;
    u_xlat3 = _ZBufferParams.z * u_xlat3 + _ZBufferParams.w;
    u_xlat3 = float(1.0) / u_xlat3;
    u_xlat3 = u_xlat3 * vs_TEXCOORD5.x + (-vs_TEXCOORD5.y);
    u_xlatb22 = u_xlat3<0.0;
    u_xlat20.xy = (bool(u_xlatb22)) ? u_xlat0.xy : u_xlat20.xy;
    u_xlat38 = (u_xlatb22) ? u_xlat38 : u_xlat3;
    u_xlat3 = dot(u_xlat2.xyz, vs_TEXCOORD2.xyz);
    u_xlat3 = (-u_xlat3) + 1.0;
    u_xlat22.x = u_xlat3 * u_xlat3;
    u_xlat22.x = u_xlat22.x * u_xlat22.x;
    u_xlat3 = u_xlat22.x * u_xlat3;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat22.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat7.x = dot(u_xlat22.xyz, u_xlat22.xyz);
    u_xlat7.y = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat7.z = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat7.w = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb4 = lessThan(u_xlat7, _CascadeShadowSplitSphereRadii);
    u_xlat5.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat5.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat5.z = u_xlatb4.z ? float(1.0) : 0.0;
    u_xlat5.w = u_xlatb4.w ? float(1.0) : 0.0;
;
    u_xlat22.x = (u_xlatb4.x) ? float(-1.0) : float(-0.0);
    u_xlat22.y = (u_xlatb4.y) ? float(-1.0) : float(-0.0);
    u_xlat22.z = (u_xlatb4.z) ? float(-1.0) : float(-0.0);
    u_xlat22.xyz = u_xlat22.xyz + u_xlat5.yzw;
    u_xlat5.yzw = max(u_xlat22.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat22.x = dot(u_xlat5, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat22.x = (-u_xlat22.x) + 4.0;
    u_xlatu22 = uint(u_xlat22.x);
    u_xlati22 = int(u_xlatu22) << (2 & int(0x1F));
    u_xlat4.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati22 + 1) / 4][(u_xlati22 + 1) % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[u_xlati22 / 4][u_xlati22 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[(u_xlati22 + 2) / 4][(u_xlati22 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
    u_xlat22.xyz = u_xlat4.xyz + _MainLightWorldToShadow[(u_xlati22 + 3) / 4][(u_xlati22 + 3) % 4].xyz;
    u_xlatb4.x = 0.0<_MainLightShadowParams.y;
    if(u_xlatb4.x){
        u_xlatb4.x = _MainLightShadowParams.y==1.0;
        if(u_xlatb4.x){
            u_xlat4 = u_xlat22.xyxy + _MainLightShadowOffset0;
            vec3 txVec0 = vec3(u_xlat4.xy,u_xlat22.z);
            u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
            vec3 txVec1 = vec3(u_xlat4.zw,u_xlat22.z);
            u_xlat5.y = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat4 = u_xlat22.xyxy + _MainLightShadowOffset1;
            vec3 txVec2 = vec3(u_xlat4.xy,u_xlat22.z);
            u_xlat5.z = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec2, 0.0);
            vec3 txVec3 = vec3(u_xlat4.zw,u_xlat22.z);
            u_xlat5.w = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec3, 0.0);
            u_xlat4.x = dot(u_xlat5, vec4(0.25, 0.25, 0.25, 0.25));
        } else {
            u_xlatb23 = _MainLightShadowParams.y==2.0;
            if(u_xlatb23){
                u_xlat23.xy = u_xlat22.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat23.xy = floor(u_xlat23.xy);
                u_xlat5.xy = u_xlat22.xy * _MainLightShadowmapSize.zw + (-u_xlat23.xy);
                u_xlat6 = u_xlat5.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat7 = u_xlat6.xxzz * u_xlat6.xxzz;
                u_xlat43.xy = u_xlat7.yw * vec2(0.0799999982, 0.0799999982);
                u_xlat6.xz = u_xlat7.xz * vec2(0.5, 0.5) + (-u_xlat5.xy);
                u_xlat7.xy = (-u_xlat5.xy) + vec2(1.0, 1.0);
                u_xlat45.xy = min(u_xlat5.xy, vec2(0.0, 0.0));
                u_xlat45.xy = (-u_xlat45.xy) * u_xlat45.xy + u_xlat7.xy;
                u_xlat5.xy = max(u_xlat5.xy, vec2(0.0, 0.0));
                u_xlat5.xy = (-u_xlat5.xy) * u_xlat5.xy + u_xlat6.yw;
                u_xlat45.xy = u_xlat45.xy + vec2(1.0, 1.0);
                u_xlat5.xy = u_xlat5.xy + vec2(1.0, 1.0);
                u_xlat8.xy = u_xlat6.xz * vec2(0.159999996, 0.159999996);
                u_xlat9.xy = u_xlat7.xy * vec2(0.159999996, 0.159999996);
                u_xlat7.xy = u_xlat45.xy * vec2(0.159999996, 0.159999996);
                u_xlat10.xy = u_xlat5.xy * vec2(0.159999996, 0.159999996);
                u_xlat5.xy = u_xlat6.yw * vec2(0.159999996, 0.159999996);
                u_xlat8.z = u_xlat7.x;
                u_xlat8.w = u_xlat5.x;
                u_xlat9.z = u_xlat10.x;
                u_xlat9.w = u_xlat43.x;
                u_xlat6 = u_xlat8.zwxz + u_xlat9.zwxz;
                u_xlat7.z = u_xlat8.y;
                u_xlat7.w = u_xlat5.y;
                u_xlat10.z = u_xlat9.y;
                u_xlat10.w = u_xlat43.y;
                u_xlat5.xyz = u_xlat7.zyw + u_xlat10.zyw;
                u_xlat7.xyz = u_xlat9.xzw / u_xlat6.zwy;
                u_xlat7.xyz = u_xlat7.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat8.xyz = u_xlat10.zyw / u_xlat5.xyz;
                u_xlat8.xyz = u_xlat8.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat7.xyz = u_xlat7.yxz * _MainLightShadowmapSize.xxx;
                u_xlat8.xyz = u_xlat8.xyz * _MainLightShadowmapSize.yyy;
                u_xlat7.w = u_xlat8.x;
                u_xlat9 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.ywxw;
                u_xlat10.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat7.zw;
                u_xlat8.w = u_xlat7.y;
                u_xlat7.yw = u_xlat8.yz;
                u_xlat11 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyzy;
                u_xlat8 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat8.wywz;
                u_xlat7 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xwzw;
                u_xlat12 = u_xlat5.xxxy * u_xlat6.zwyz;
                u_xlat13 = u_xlat5.yyzz * u_xlat6;
                u_xlat23.x = u_xlat5.z * u_xlat6.y;
                vec3 txVec4 = vec3(u_xlat9.xy,u_xlat22.z);
                u_xlat42.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec4, 0.0);
                vec3 txVec5 = vec3(u_xlat9.zw,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec5, 0.0);
                u_xlat61 = u_xlat61 * u_xlat12.y;
                u_xlat42.x = u_xlat12.x * u_xlat42.x + u_xlat61;
                vec3 txVec6 = vec3(u_xlat10.xy,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec6, 0.0);
                u_xlat42.x = u_xlat12.z * u_xlat61 + u_xlat42.x;
                vec3 txVec7 = vec3(u_xlat8.xy,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec7, 0.0);
                u_xlat42.x = u_xlat12.w * u_xlat61 + u_xlat42.x;
                vec3 txVec8 = vec3(u_xlat11.xy,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec8, 0.0);
                u_xlat42.x = u_xlat13.x * u_xlat61 + u_xlat42.x;
                vec3 txVec9 = vec3(u_xlat11.zw,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec9, 0.0);
                u_xlat42.x = u_xlat13.y * u_xlat61 + u_xlat42.x;
                vec3 txVec10 = vec3(u_xlat8.zw,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec10, 0.0);
                u_xlat42.x = u_xlat13.z * u_xlat61 + u_xlat42.x;
                vec3 txVec11 = vec3(u_xlat7.xy,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec11, 0.0);
                u_xlat42.x = u_xlat13.w * u_xlat61 + u_xlat42.x;
                vec3 txVec12 = vec3(u_xlat7.zw,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec12, 0.0);
                u_xlat4.x = u_xlat23.x * u_xlat61 + u_xlat42.x;
            } else {
                u_xlat23.xy = u_xlat22.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat23.xy = floor(u_xlat23.xy);
                u_xlat5.xy = u_xlat22.xy * _MainLightShadowmapSize.zw + (-u_xlat23.xy);
                u_xlat6 = u_xlat5.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat7 = u_xlat6.xxzz * u_xlat6.xxzz;
                u_xlat8.yw = u_xlat7.yw * vec2(0.0408160016, 0.0408160016);
                u_xlat43.xy = u_xlat7.xz * vec2(0.5, 0.5) + (-u_xlat5.xy);
                u_xlat6.xz = (-u_xlat5.xy) + vec2(1.0, 1.0);
                u_xlat7.xy = min(u_xlat5.xy, vec2(0.0, 0.0));
                u_xlat6.xz = (-u_xlat7.xy) * u_xlat7.xy + u_xlat6.xz;
                u_xlat7.xy = max(u_xlat5.xy, vec2(0.0, 0.0));
                u_xlat6.yw = (-u_xlat7.xy) * u_xlat7.xy + u_xlat6.yw;
                u_xlat6 = u_xlat6 + vec4(2.0, 2.0, 2.0, 2.0);
                u_xlat7.z = u_xlat6.y * 0.0816320032;
                u_xlat9.xy = u_xlat43.yx * vec2(0.0816320032, 0.0816320032);
                u_xlat43.xy = u_xlat6.xz * vec2(0.0816320032, 0.0816320032);
                u_xlat9.z = u_xlat6.w * 0.0816320032;
                u_xlat7.x = u_xlat9.y;
                u_xlat7.yw = u_xlat5.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat6.xz = u_xlat5.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat6.y = u_xlat43.x;
                u_xlat6.w = u_xlat8.y;
                u_xlat7 = u_xlat6 + u_xlat7;
                u_xlat9.yw = u_xlat5.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat8.xz = u_xlat5.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat8.y = u_xlat43.y;
                u_xlat5 = u_xlat8 + u_xlat9;
                u_xlat6 = u_xlat6 / u_xlat7;
                u_xlat6 = u_xlat6 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat8 = u_xlat8 / u_xlat5;
                u_xlat8 = u_xlat8 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat6 = u_xlat6.wxyz * _MainLightShadowmapSize.xxxx;
                u_xlat8 = u_xlat8.xwyz * _MainLightShadowmapSize.yyyy;
                u_xlat9.xzw = u_xlat6.yzw;
                u_xlat9.y = u_xlat8.x;
                u_xlat10 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat9.xyzy;
                u_xlat11.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat9.wy;
                u_xlat6.y = u_xlat9.y;
                u_xlat9.y = u_xlat8.z;
                u_xlat12 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat9.xyzy;
                u_xlat49.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat9.wy;
                u_xlat6.z = u_xlat9.y;
                u_xlat13 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xyxz;
                u_xlat9.y = u_xlat8.w;
                u_xlat14 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat9.xyzy;
                u_xlat25.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat9.wy;
                u_xlat6.w = u_xlat9.y;
                u_xlat15.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat6.xw;
                u_xlat8.xzw = u_xlat9.xzw;
                u_xlat9 = u_xlat23.xyxy * _MainLightShadowmapSize.xyxy + u_xlat8.xyzy;
                u_xlat46.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat8.wy;
                u_xlat8.x = u_xlat6.x;
                u_xlat23.xy = u_xlat23.xy * _MainLightShadowmapSize.xy + u_xlat8.xy;
                u_xlat16 = u_xlat5.xxxx * u_xlat7;
                u_xlat17 = u_xlat5.yyyy * u_xlat7;
                u_xlat18 = u_xlat5.zzzz * u_xlat7;
                u_xlat5 = u_xlat5.wwww * u_xlat7;
                vec3 txVec13 = vec3(u_xlat10.xy,u_xlat22.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec13, 0.0);
                vec3 txVec14 = vec3(u_xlat10.zw,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec14, 0.0);
                u_xlat6.x = u_xlat6.x * u_xlat16.y;
                u_xlat61 = u_xlat16.x * u_xlat61 + u_xlat6.x;
                vec3 txVec15 = vec3(u_xlat11.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec15, 0.0);
                u_xlat61 = u_xlat16.z * u_xlat6.x + u_xlat61;
                vec3 txVec16 = vec3(u_xlat13.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec16, 0.0);
                u_xlat61 = u_xlat16.w * u_xlat6.x + u_xlat61;
                vec3 txVec17 = vec3(u_xlat12.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec17, 0.0);
                u_xlat61 = u_xlat17.x * u_xlat6.x + u_xlat61;
                vec3 txVec18 = vec3(u_xlat12.zw,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec18, 0.0);
                u_xlat61 = u_xlat17.y * u_xlat6.x + u_xlat61;
                vec3 txVec19 = vec3(u_xlat49.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec19, 0.0);
                u_xlat61 = u_xlat17.z * u_xlat6.x + u_xlat61;
                vec3 txVec20 = vec3(u_xlat13.zw,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec20, 0.0);
                u_xlat61 = u_xlat17.w * u_xlat6.x + u_xlat61;
                vec3 txVec21 = vec3(u_xlat14.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec21, 0.0);
                u_xlat61 = u_xlat18.x * u_xlat6.x + u_xlat61;
                vec3 txVec22 = vec3(u_xlat14.zw,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec22, 0.0);
                u_xlat61 = u_xlat18.y * u_xlat6.x + u_xlat61;
                vec3 txVec23 = vec3(u_xlat25.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec23, 0.0);
                u_xlat61 = u_xlat18.z * u_xlat6.x + u_xlat61;
                vec3 txVec24 = vec3(u_xlat15.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec24, 0.0);
                u_xlat61 = u_xlat18.w * u_xlat6.x + u_xlat61;
                vec3 txVec25 = vec3(u_xlat9.xy,u_xlat22.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec25, 0.0);
                u_xlat61 = u_xlat5.x * u_xlat6.x + u_xlat61;
                vec3 txVec26 = vec3(u_xlat9.zw,u_xlat22.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec26, 0.0);
                u_xlat61 = u_xlat5.y * u_xlat5.x + u_xlat61;
                vec3 txVec27 = vec3(u_xlat46.xy,u_xlat22.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec27, 0.0);
                u_xlat61 = u_xlat5.z * u_xlat5.x + u_xlat61;
                vec3 txVec28 = vec3(u_xlat23.xy,u_xlat22.z);
                u_xlat23.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec28, 0.0);
                u_xlat4.x = u_xlat5.w * u_xlat23.x + u_xlat61;
            }
        }
    } else {
        vec3 txVec29 = vec3(u_xlat22.xy,u_xlat22.z);
        u_xlat4.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec29, 0.0);
    }
    u_xlat22.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat22.x = u_xlat4.x * _MainLightShadowParams.x + u_xlat22.x;
    u_xlatb41 = 0.0>=u_xlat22.z;
    u_xlatb60 = u_xlat22.z>=1.0;
    u_xlatb41 = u_xlatb60 || u_xlatb41;
    u_xlat22.x = (u_xlatb41) ? 1.0 : u_xlat22.x;
    u_xlat41.xy = u_xlat0.xy * _ScreenParams.xy;
    u_xlat41.xy = u_xlat41.xy * _DitherPattern_TexelSize.xy;
    u_xlat4.xy = vec2(u_xlat38) * vec2(20.0, 0.25);
    u_xlat5.xyz = u_xlat4.yyy * (-vs_TEXCOORD2.xyz);
    u_xlat6.x = fract(_Time.x);
    u_xlat6.y = fract((-_Time.z));
    u_xlat42.xy = u_xlat41.xy;
    u_xlat62 = 0.0;
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<4u ; u_xlatu_loop_1++)
    {
        u_xlat42.xy = u_xlat6.xy + u_xlat42.xy;
        u_xlat63 = float(u_xlatu_loop_1);
        u_xlat7.xy = vec2(u_xlat63) * _ScreenParams.xy + u_xlat42.xy;
        u_xlat7.xyz = texture(sampler2D(_DitherPattern, sampler_DitherPattern), u_xlat7.xy, _GlobalMipBias.x).xyz;
        u_xlat7.xyz = u_xlat7.xzy * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
        u_xlat7.xyw = u_xlat4.yyy * u_xlat7.xyz;
        u_xlat7.xyw = vec3(u_xlat63) * u_xlat7.xyw;
        u_xlat7.xyw = u_xlat7.xyw * vec3(0.100000001, 0.100000001, 0.100000001) + vs_TEXCOORD1.xyz;
        u_xlat63 = u_xlat63 + u_xlat7.z;
        u_xlat7.xyz = u_xlat5.xyz * vec3(u_xlat63) + u_xlat7.xyw;
        u_xlat8.xyz = u_xlat7.xyz + (-_CascadeShadowSplitSpheres0.xyz);
        u_xlat9.xyz = u_xlat7.xyz + (-_CascadeShadowSplitSpheres1.xyz);
        u_xlat10.xyz = u_xlat7.xyz + (-_CascadeShadowSplitSpheres2.xyz);
        u_xlat11.xyz = u_xlat7.xyz + (-_CascadeShadowSplitSpheres3.xyz);
        u_xlat8.x = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat8.y = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat8.z = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat8.w = dot(u_xlat11.xyz, u_xlat11.xyz);
        u_xlatb8 = lessThan(u_xlat8, _CascadeShadowSplitSphereRadii);
        u_xlat9.x = u_xlatb8.x ? float(1.0) : 0.0;
        u_xlat9.y = u_xlatb8.y ? float(1.0) : 0.0;
        u_xlat9.z = u_xlatb8.z ? float(1.0) : 0.0;
        u_xlat9.w = u_xlatb8.w ? float(1.0) : 0.0;
;
        u_xlat8.x = (u_xlatb8.x) ? float(-1.0) : float(-0.0);
        u_xlat8.y = (u_xlatb8.y) ? float(-1.0) : float(-0.0);
        u_xlat8.z = (u_xlatb8.z) ? float(-1.0) : float(-0.0);
        u_xlat8.xyz = u_xlat8.xyz + u_xlat9.yzw;
        u_xlat9.yzw = max(u_xlat8.xyz, vec3(0.0, 0.0, 0.0));
        u_xlat63 = dot(u_xlat9, vec4(4.0, 3.0, 2.0, 1.0));
        u_xlat63 = (-u_xlat63) + 4.0;
        u_xlatu63 = uint(u_xlat63);
        u_xlati63 = int(u_xlatu63) << (2 & int(0x1F));
        u_xlat8.xyz = u_xlat7.yyy * _MainLightWorldToShadow[(u_xlati63 + 1) / 4][(u_xlati63 + 1) % 4].xyz;
        u_xlat7.xyw = _MainLightWorldToShadow[u_xlati63 / 4][u_xlati63 % 4].xyz * u_xlat7.xxx + u_xlat8.xyz;
        u_xlat7.xyz = _MainLightWorldToShadow[(u_xlati63 + 2) / 4][(u_xlati63 + 2) % 4].xyz * u_xlat7.zzz + u_xlat7.xyw;
        u_xlat7.xyz = u_xlat7.xyz + _MainLightWorldToShadow[(u_xlati63 + 3) / 4][(u_xlati63 + 3) % 4].xyz;
        vec3 txVec30 = vec3(u_xlat7.xy,u_xlat7.z);
        u_xlat63 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec30, 0.0);
        u_xlat62 = u_xlat62 + u_xlat63;
    }
    u_xlat5.xyz = vs_TEXCOORD1.xyz * vec3(1.10000002, 1.10000002, 1.10000002);
    u_xlat6.xyz = vs_TEXCOORD1.xyz * vec3(1.10000002, 1.10000002, 1.10000002) + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat7.xyz = vs_TEXCOORD1.xyz * vec3(1.10000002, 1.10000002, 1.10000002) + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat8.xyz = vs_TEXCOORD1.xyz * vec3(1.10000002, 1.10000002, 1.10000002) + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat9.xyz = vs_TEXCOORD1.xyz * vec3(1.10000002, 1.10000002, 1.10000002) + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat6.y = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat6.z = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat6.w = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlatb6 = lessThan(u_xlat6, _CascadeShadowSplitSphereRadii);
    u_xlat7.x = u_xlatb6.x ? float(1.0) : 0.0;
    u_xlat7.y = u_xlatb6.y ? float(1.0) : 0.0;
    u_xlat7.z = u_xlatb6.z ? float(1.0) : 0.0;
    u_xlat7.w = u_xlatb6.w ? float(1.0) : 0.0;
;
    u_xlat6.x = (u_xlatb6.x) ? float(-1.0) : float(-0.0);
    u_xlat6.y = (u_xlatb6.y) ? float(-1.0) : float(-0.0);
    u_xlat6.z = (u_xlatb6.z) ? float(-1.0) : float(-0.0);
    u_xlat6.xyz = u_xlat6.xyz + u_xlat7.yzw;
    u_xlat7.yzw = max(u_xlat6.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat41.x = dot(u_xlat7, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat41.x = (-u_xlat41.x) + 4.0;
    u_xlatu41 = uint(u_xlat41.x);
    u_xlati41 = int(u_xlatu41) << (2 & int(0x1F));
    u_xlat60 = u_xlat5.y * _MainLightWorldToShadow[(u_xlati41 + 1) / 4][(u_xlati41 + 1) % 4].z;
    u_xlat60 = _MainLightWorldToShadow[u_xlati41 / 4][u_xlati41 % 4].z * u_xlat5.x + u_xlat60;
    u_xlat60 = _MainLightWorldToShadow[(u_xlati41 + 2) / 4][(u_xlati41 + 2) % 4].z * u_xlat5.z + u_xlat60;
    u_xlat41.x = u_xlat60 + _MainLightWorldToShadow[(u_xlati41 + 3) / 4][(u_xlati41 + 3) % 4].z;
    u_xlatb60 = 0.0>=u_xlat41.x;
    u_xlatb41 = u_xlat41.x>=1.0;
    u_xlatb41 = u_xlatb41 || u_xlatb60;
    u_xlat60 = u_xlat62 * 0.25;
    u_xlat41.x = (u_xlatb41) ? 1.0 : u_xlat60;
    u_xlat2.w = 1.0;
    u_xlat5.x = dot(unity_SHAr, u_xlat2);
    u_xlat5.y = dot(unity_SHAg, u_xlat2);
    u_xlat5.z = dot(unity_SHAb, u_xlat2);
    u_xlat6 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat7.x = dot(unity_SHBr, u_xlat6);
    u_xlat7.y = dot(unity_SHBg, u_xlat6);
    u_xlat7.z = dot(unity_SHBb, u_xlat6);
    u_xlat59 = u_xlat2.y * u_xlat2.y;
    u_xlat59 = u_xlat2.x * u_xlat2.x + (-u_xlat59);
    u_xlat6.xyz = unity_SHC.xyz * vec3(u_xlat59) + u_xlat7.xyz;
    u_xlat5.xyz = u_xlat5.xyz + u_xlat6.xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat59 = dot(vs_TEXCOORD2.xyz, (-_MainLightPosition.xyz));
    u_xlat59 = u_xlat59 * vs_TEXCOORD5.z;
    u_xlat60 = u_xlat59 * u_xlat59;
    u_xlat59 = u_xlat59 * u_xlat60;
    u_xlat59 = clamp(u_xlat59, 0.0, 1.0);
    u_xlat59 = u_xlat59 * 5.0;
    u_xlat6.xyz = vec3(u_xlat59) * _MainLightColor.xyz;
    u_xlat6.xyz = _MainLightPosition.yyy * _MainLightColor.xyz + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat41.xxx + u_xlat5.xyz;
    u_xlat7.xyz = texture(sampler2D(_FoamMap, sampler_FoamMap), vs_TEXCOORD0.zw, _GlobalMipBias.x).xyz;
    u_xlat4.x = u_xlat4.x;
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat59 = vs_TEXCOORD5.z + -0.375;
    u_xlat59 = clamp(u_xlat59, 0.0, 1.0);
    u_xlat60 = (-u_xlat38) * 4.0 + 1.0;
    u_xlat60 = clamp(u_xlat60, 0.0, 1.0);
    u_xlat57 = min(u_xlat57, u_xlat38);
    u_xlat57 = (-u_xlat57) * 0.5 + 0.75;
    u_xlat57 = u_xlat60 * 0.5 + u_xlat57;
    u_xlat57 = clamp(u_xlat57, 0.0, 1.0);
    u_xlat57 = u_xlat4.x * u_xlat57;
    u_xlat57 = max(u_xlat57, u_xlat59);
    u_xlat1.x = u_xlat1.x + u_xlat1.x;
    u_xlat8.x = max(u_xlat57, u_xlat1.x);
    u_xlat8.y = 0.660000026;
    u_xlat4.xzw = texture(sampler2D(_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp), u_xlat8.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xzw = u_xlat4.xzw * u_xlat7.xyz;
    u_xlat57 = dot(u_xlat4.xzw, u_xlat4.xzw);
    u_xlat57 = sqrt(u_xlat57);
    u_xlat57 = u_xlat57 * 1.5 + -0.100000001;
    u_xlat57 = clamp(u_xlat57, 0.0, 1.0);
    u_xlat4.xzw = u_xlat22.xxx * _MainLightColor.xyz + u_xlat5.xyz;
    u_xlat5.xyz = vs_TEXCOORD2.xyz + _MainLightPosition.xyz;
    u_xlat1.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat1.x = max(u_xlat1.x, 1.17549435e-38);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat5.xyz = u_xlat1.xxx * u_xlat5.xyz;
    u_xlat1.x = dot(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat59 = dot(_MainLightPosition.xyz, u_xlat5.xyz);
    u_xlat59 = clamp(u_xlat59, 0.0, 1.0);
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat1.x = u_xlat1.x * -0.999938965 + 1.00001001;
    u_xlat59 = u_xlat59 * u_xlat59;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat59 = max(u_xlat59, 0.100000001);
    u_xlat1.x = u_xlat1.x * u_xlat59;
    u_xlat1.x = u_xlat1.x * 2.03125;
    u_xlat1.x = 6.10351562e-05 / u_xlat1.x;
    u_xlat1.x = u_xlat41.x * u_xlat1.x;
    u_xlat1.x = u_xlat1.x * 0.0399999991;
    u_xlat22.xyz = u_xlat1.xxx * _MainLightColor.xyz;
    u_xlat1.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu1 =  uint(int(u_xlat1.x));
    u_xlat5.xyz = u_xlat6.xyz;
    u_xlat7.xyz = u_xlat22.xyz;
    for(uint u_xlatu_loop_2 = 0u ; u_xlatu_loop_2<u_xlatu1 ; u_xlatu_loop_2++)
    {
        u_xlatu62 = u_xlatu_loop_2 >> (2u & uint(0x1F));
        u_xlati63 = int(u_xlatu_loop_2 & 3u);
        u_xlat62 = dot(unity_LightIndices[int(u_xlatu62)], uintBitsToFloat(ImmCB_0[u_xlati63]));
        u_xlati62 = int(u_xlat62);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati62].www + _AdditionalLightsPosition[u_xlati62].xyz;
        u_xlat63 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat63 = max(u_xlat63, 6.10351562e-05);
        u_xlat64 = inversesqrt(u_xlat63);
        u_xlat9.xyz = vec3(u_xlat64) * u_xlat8.xyz;
        u_xlat65 = float(1.0) / float(u_xlat63);
        u_xlat63 = u_xlat63 * _AdditionalLightsAttenuation[u_xlati62].x;
        u_xlat63 = (-u_xlat63) * u_xlat63 + 1.0;
        u_xlat63 = max(u_xlat63, 0.0);
        u_xlat63 = u_xlat63 * u_xlat63;
        u_xlat63 = u_xlat63 * u_xlat65;
        u_xlat65 = dot(_AdditionalLightsSpotDir[u_xlati62].xyz, u_xlat9.xyz);
        u_xlat65 = u_xlat65 * _AdditionalLightsAttenuation[u_xlati62].z + _AdditionalLightsAttenuation[u_xlati62].w;
        u_xlat65 = clamp(u_xlat65, 0.0, 1.0);
        u_xlat65 = u_xlat65 * u_xlat65;
        u_xlat63 = u_xlat63 * u_xlat65;
        u_xlat65 = dot(u_xlat2.xyz, u_xlat9.xyz);
        u_xlat65 = clamp(u_xlat65, 0.0, 1.0);
        u_xlat65 = u_xlat63 * u_xlat65;
        u_xlat10.xyz = vec3(u_xlat65) * _AdditionalLightsColor[u_xlati62].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat64) + vs_TEXCOORD2.xyz;
        u_xlat64 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat64 = max(u_xlat64, 1.17549435e-38);
        u_xlat64 = inversesqrt(u_xlat64);
        u_xlat8.xyz = vec3(u_xlat64) * u_xlat8.xyz;
        u_xlat64 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat64 = clamp(u_xlat64, 0.0, 1.0);
        u_xlat8.x = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat64 = u_xlat64 * u_xlat64;
        u_xlat64 = u_xlat64 * -0.999938965 + 1.00001001;
        u_xlat8.x = u_xlat8.x * u_xlat8.x;
        u_xlat64 = u_xlat64 * u_xlat64;
        u_xlat8.x = max(u_xlat8.x, 0.100000001);
        u_xlat64 = u_xlat64 * u_xlat8.x;
        u_xlat64 = u_xlat64 * 2.03125;
        u_xlat64 = 6.10351562e-05 / u_xlat64;
        u_xlat64 = u_xlat64 * 0.0399999991;
        u_xlat7.xyz = vec3(u_xlat64) * u_xlat10.xyz + u_xlat7.xyz;
        u_xlat5.xyz = vec3(u_xlat63) * _AdditionalLightsColor[u_xlati62].xyz + u_xlat5.xyz;
    }
    u_xlat6.x = u_xlat58 * u_xlat38;
    u_xlat6.y = float(0.375);
    u_xlat6.z = float(0.0);
    u_xlat22.xyz = texture(sampler2D(_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp), u_xlat6.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xy = u_xlat2.zx * vec2(0.0199999996, 0.150000006) + u_xlat0.xy;
    u_xlat0.xyz = textureLod(sampler2D(_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp), u_xlat0.xy, 0.0).xyz;
    u_xlat1.xyz = textureLod(sampler2D(_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp), u_xlat20.xy, u_xlat4.y).xyz;
    u_xlat2.xyz = texture(sampler2D(_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp), u_xlat6.xz, _GlobalMipBias.x).xyz;
    u_xlat6.xyz = u_xlat1.xyz * u_xlat2.xyz;
    u_xlat0.xyz = (-u_xlat1.xyz) * u_xlat2.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat3) * u_xlat0.xyz + u_xlat6.xyz;
    u_xlat0.xyz = u_xlat5.xyz * u_xlat22.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat7.xyz + u_xlat0.xyz;
    u_xlat1.xyz = vec3(u_xlat57) * u_xlat4.xzw + (-u_xlat0.xyz);
    u_xlat0.xyz = vec3(u_xlat57) * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat57 = vs_TEXCOORD4.x * (-vs_TEXCOORD4.x);
    u_xlat57 = exp2(u_xlat57);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat57) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

