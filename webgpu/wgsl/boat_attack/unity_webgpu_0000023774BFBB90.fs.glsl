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
layout(location = 4) in highp  vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec2 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
bool u_xlatb6;
vec4 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
bvec4 u_xlatb10;
float u_xlat12;
vec3 u_xlat13;
vec3 u_xlat14;
bool u_xlatb14;
float u_xlat17;
vec3 u_xlat18;
float u_xlat21;
vec2 u_xlat23;
uint u_xlatu23;
float u_xlat25;
bool u_xlatb25;
float u_xlat33;
uint u_xlatu33;
float u_xlat34;
float u_xlat37;
int u_xlati37;
uint u_xlatu37;
bool u_xlatb37;
float u_xlat38;
int u_xlati38;
bool u_xlatb38;
float u_xlat39;
float u_xlat41;
int u_xlati41;
float u_xlat42;
bool u_xlatb42;
float u_xlat43;
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
    u_xlat23.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat33 = dot(u_xlat23.xy, u_xlat23.xy);
    u_xlat33 = min(u_xlat33, 1.0);
    u_xlat33 = (-u_xlat33) + 1.0;
    u_xlat33 = sqrt(u_xlat33);
    u_xlat33 = max(u_xlat33, 1.00000002e-16);
    u_xlat23.xy = u_xlat23.xy * vec2(vec2(_BumpScale, _BumpScale));
    u_xlat3.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).y;
    u_xlat14.x = (-_OcclusionStrength) + 1.0;
    u_xlat3.x = u_xlat3.x * _OcclusionStrength + u_xlat14.x;
    u_xlat14.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat14.x = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat14.xy, _GlobalMipBias.x).w;
    u_xlatb25 = unity_LODFade.x>=0.0;
    u_xlat14.x = (u_xlatb25) ? abs(u_xlat14.x) : -abs(u_xlat14.x);
    u_xlat14.x = (-u_xlat14.x) + unity_LODFade.x;
    u_xlatb14 = u_xlat14.x<0.0;
    if(((int(u_xlatb14) * int(0xffffffffu)))!=0){discard;}
    u_xlatb14 = unity_OrthoParams.w==0.0;
    u_xlat4.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat25 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat4.xyz = vec3(u_xlat25) * u_xlat4.xyz;
    u_xlat5.x = (u_xlatb14) ? u_xlat4.x : unity_MatrixV[0].z;
    u_xlat5.y = (u_xlatb14) ? u_xlat4.y : unity_MatrixV[1].z;
    u_xlat5.z = (u_xlatb14) ? u_xlat4.z : unity_MatrixV[2].z;
    u_xlat14.xyz = vs_TEXCOORD2.zxy * vs_TEXCOORD3.yzx;
    u_xlat14.xyz = vs_TEXCOORD2.yzx * vs_TEXCOORD3.zxy + (-u_xlat14.xyz);
    u_xlat14.xyz = u_xlat14.xyz * vs_TEXCOORD3.www;
    u_xlat14.xyz = u_xlat23.yyy * u_xlat14.xyz;
    u_xlat14.xyz = u_xlat23.xxx * vs_TEXCOORD3.xyz + u_xlat14.xyz;
    u_xlat14.xyz = vec3(u_xlat33) * vs_TEXCOORD2.xyz + u_xlat14.xyz;
    u_xlat33 = dot(u_xlat14.xyz, u_xlat14.xyz);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat4.xyz = vec3(u_xlat33) * u_xlat14.xyz;
    u_xlat4.w = 1.0;
    u_xlat6.x = dot(unity_SHAr, u_xlat4);
    u_xlat6.y = dot(unity_SHAg, u_xlat4);
    u_xlat6.z = dot(unity_SHAb, u_xlat4);
    u_xlat7 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat8.x = dot(unity_SHBr, u_xlat7);
    u_xlat8.y = dot(unity_SHBg, u_xlat7);
    u_xlat8.z = dot(unity_SHBb, u_xlat7);
    u_xlat33 = u_xlat4.y * u_xlat4.y;
    u_xlat33 = u_xlat4.x * u_xlat4.x + (-u_xlat33);
    u_xlat14.xyz = unity_SHC.xyz * vec3(u_xlat33) + u_xlat8.xyz;
    u_xlat14.xyz = u_xlat14.xyz + u_xlat6.xyz;
    u_xlat14.xyz = max(u_xlat14.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat33 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat23.x = u_xlat1.y * _Smoothness + (-u_xlat33);
    u_xlat13.xyz = vec3(u_xlat33) * u_xlat2.yzw;
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat33 = (-u_xlat1.y) * _Smoothness + 1.0;
    u_xlat1.x = u_xlat33 * u_xlat33;
    u_xlat1.x = max(u_xlat1.x, 0.0078125);
    u_xlat12 = u_xlat1.x * u_xlat1.x;
    u_xlat23.x = u_xlat23.x + 1.0;
    u_xlat23.x = clamp(u_xlat23.x, 0.0, 1.0);
    u_xlat34 = u_xlat1.x * 4.0 + 2.0;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat37 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat38 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat37 = u_xlat37 * _MainLightShadowParams.x + u_xlat38;
    u_xlatb38 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb6 = vs_TEXCOORD6.z>=1.0;
    u_xlatb38 = u_xlatb38 || u_xlatb6;
    u_xlat37 = (u_xlatb38) ? 1.0 : u_xlat37;
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat38 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat6.x = u_xlat38 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
    u_xlat17 = (-u_xlat37) + 1.0;
    u_xlat37 = u_xlat6.x * u_xlat17 + u_xlat37;
    u_xlat6.x = dot((-u_xlat5.xyz), u_xlat4.xyz);
    u_xlat6.x = u_xlat6.x + u_xlat6.x;
    u_xlat6.xyz = u_xlat4.xyz * (-u_xlat6.xxx) + (-u_xlat5.xyz);
    u_xlat39 = dot(u_xlat4.xyz, u_xlat5.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat39 = (-u_xlat39) + 1.0;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat7.x = (-u_xlat33) * 0.699999988 + 1.70000005;
    u_xlat33 = u_xlat33 * u_xlat7.x;
    u_xlat33 = u_xlat33 * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat33);
    u_xlat33 = u_xlat7.w + -1.0;
    u_xlat33 = unity_SpecCube0_HDR.w * u_xlat33 + 1.0;
    u_xlat33 = max(u_xlat33, 0.0);
    u_xlat33 = log2(u_xlat33);
    u_xlat33 = u_xlat33 * unity_SpecCube0_HDR.y;
    u_xlat33 = exp2(u_xlat33);
    u_xlat33 = u_xlat33 * unity_SpecCube0_HDR.x;
    u_xlat6.xyz = u_xlat7.xyz * vec3(u_xlat33);
    u_xlat7.xy = u_xlat1.xx * u_xlat1.xx + vec2(-1.0, 1.0);
    u_xlat33 = float(1.0) / u_xlat7.y;
    u_xlat18.xyz = (-u_xlat0.xyz) + u_xlat23.xxx;
    u_xlat18.xyz = vec3(u_xlat39) * u_xlat18.xyz + u_xlat0.xyz;
    u_xlat18.xyz = vec3(u_xlat33) * u_xlat18.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat18.xyz;
    u_xlat14.xyz = u_xlat14.xyz * u_xlat13.xyz + u_xlat6.xyz;
    u_xlat33 = u_xlat37 * unity_LightData.z;
    u_xlat1.x = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat33 = u_xlat33 * u_xlat1.x;
    u_xlat6.xyz = vec3(u_xlat33) * _MainLightColor.xyz;
    u_xlat18.xyz = u_xlat5.xyz + _MainLightPosition.xyz;
    u_xlat33 = dot(u_xlat18.xyz, u_xlat18.xyz);
    u_xlat33 = max(u_xlat33, 1.17549435e-38);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat18.xyz = vec3(u_xlat33) * u_xlat18.xyz;
    u_xlat33 = dot(u_xlat4.xyz, u_xlat18.xyz);
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat1.x = dot(_MainLightPosition.xyz, u_xlat18.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat33 = u_xlat33 * u_xlat7.x + 1.00001001;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat1.x = max(u_xlat1.x, 0.100000001);
    u_xlat33 = u_xlat33 * u_xlat1.x;
    u_xlat33 = u_xlat34 * u_xlat33;
    u_xlat33 = u_xlat12 / u_xlat33;
    u_xlat18.xyz = u_xlat0.xyz * vec3(u_xlat33) + u_xlat13.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat18.xyz;
    u_xlat33 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu33 =  uint(int(u_xlat33));
    u_xlat1.x = u_xlat38 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat18.x = float(0.0);
    u_xlat18.y = float(0.0);
    u_xlat18.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu33 ; u_xlatu_loop_1++)
    {
        u_xlatu37 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati38 = int(u_xlatu_loop_1 & 3u);
        u_xlat37 = dot(unity_LightIndices[int(u_xlatu37)], uintBitsToFloat(ImmCB_0[u_xlati38]));
        u_xlati37 = int(u_xlat37);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati37].www + _AdditionalLightsPosition[u_xlati37].xyz;
        u_xlat38 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat38 = max(u_xlat38, 6.10351562e-05);
        u_xlat39 = inversesqrt(u_xlat38);
        u_xlat9.xyz = vec3(u_xlat39) * u_xlat8.xyz;
        u_xlat41 = float(1.0) / float(u_xlat38);
        u_xlat38 = u_xlat38 * _AdditionalLightsAttenuation[u_xlati37].x;
        u_xlat38 = (-u_xlat38) * u_xlat38 + 1.0;
        u_xlat38 = max(u_xlat38, 0.0);
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat38 = u_xlat38 * u_xlat41;
        u_xlat41 = dot(_AdditionalLightsSpotDir[u_xlati37].xyz, u_xlat9.xyz);
        u_xlat41 = u_xlat41 * _AdditionalLightsAttenuation[u_xlati37].z + _AdditionalLightsAttenuation[u_xlati37].w;
        u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
        u_xlat41 = u_xlat41 * u_xlat41;
        u_xlat38 = u_xlat38 * u_xlat41;
        u_xlati41 = int(_AdditionalShadowParams[u_xlati37].w);
        u_xlatb42 = u_xlati41>=0;
        if(u_xlatb42){
            u_xlatb42 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati37].z);
            if(u_xlatb42){
                u_xlatb10.xyz = greaterThanEqual(abs(u_xlat9.zzyz), abs(u_xlat9.xyxx)).xyz;
                u_xlatb42 = u_xlatb10.y && u_xlatb10.x;
                u_xlatb10.xyw = lessThan((-u_xlat9.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat10.x = (u_xlatb10.x) ? float(5.0) : float(4.0);
                u_xlat10.y = (u_xlatb10.y) ? float(3.0) : float(2.0);
                u_xlat43 = u_xlatb10.w ? 1.0 : float(0.0);
                u_xlat21 = (u_xlatb10.z) ? u_xlat10.y : u_xlat43;
                u_xlat42 = (u_xlatb42) ? u_xlat10.x : u_xlat21;
                u_xlat10.x = trunc(_AdditionalShadowParams[u_xlati37].w);
                u_xlat42 = u_xlat42 + u_xlat10.x;
                u_xlati41 = int(u_xlat42);
            }
            u_xlati41 = u_xlati41 << (2 & int(0x1F));
            u_xlat10 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati41 + 1) / 4][(u_xlati41 + 1) % 4];
            u_xlat10 = _AdditionalLightsWorldToShadow[u_xlati41 / 4][u_xlati41 % 4] * vs_TEXCOORD1.xxxx + u_xlat10;
            u_xlat10 = _AdditionalLightsWorldToShadow[(u_xlati41 + 2) / 4][(u_xlati41 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat10;
            u_xlat10 = u_xlat10 + _AdditionalLightsWorldToShadow[(u_xlati41 + 3) / 4][(u_xlati41 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec1 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat41 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat42 = 1.0 + (-_AdditionalShadowParams[u_xlati37].x);
            u_xlat41 = u_xlat41 * _AdditionalShadowParams[u_xlati37].x + u_xlat42;
            u_xlatb42 = 0.0>=u_xlat10.z;
            u_xlatb10.x = u_xlat10.z>=1.0;
            u_xlatb42 = u_xlatb42 || u_xlatb10.x;
            u_xlat41 = (u_xlatb42) ? 1.0 : u_xlat41;
        } else {
            u_xlat41 = 1.0;
        }
        u_xlat42 = (-u_xlat41) + 1.0;
        u_xlat41 = u_xlat1.x * u_xlat42 + u_xlat41;
        u_xlat38 = u_xlat38 * u_xlat41;
        u_xlat41 = dot(u_xlat4.xyz, u_xlat9.xyz);
        u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
        u_xlat38 = u_xlat38 * u_xlat41;
        u_xlat10.xyz = vec3(u_xlat38) * _AdditionalLightsColor[u_xlati37].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat39) + u_xlat5.xyz;
        u_xlat37 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat37 = max(u_xlat37, 1.17549435e-38);
        u_xlat37 = inversesqrt(u_xlat37);
        u_xlat8.xyz = vec3(u_xlat37) * u_xlat8.xyz;
        u_xlat37 = dot(u_xlat4.xyz, u_xlat8.xyz);
        u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
        u_xlat38 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat37 = u_xlat37 * u_xlat7.x + 1.00001001;
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat38 = max(u_xlat38, 0.100000001);
        u_xlat37 = u_xlat37 * u_xlat38;
        u_xlat37 = u_xlat34 * u_xlat37;
        u_xlat37 = u_xlat12 / u_xlat37;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat37) + u_xlat13.xyz;
        u_xlat18.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat18.xyz;
    }
    u_xlat0.xyz = u_xlat14.xyz * u_xlat3.xxx + u_xlat6.xyz;
    SV_Target0.xyz = u_xlat18.xyz + u_xlat0.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat2.x : 1.0;
    return;
}

