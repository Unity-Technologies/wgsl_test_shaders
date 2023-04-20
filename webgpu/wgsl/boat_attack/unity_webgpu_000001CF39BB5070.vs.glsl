#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
layout(set = 1, binding = 5, std140) uniform VGlobals {
	vec4 _Time;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	float _MaxDepth;
	float _MaxWaveHeight;
	vec4 _VeraslWater_DepthCamParams;
	uint _WaveCount;
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
layout(set = 0, binding = 1) uniform mediump texture2D _WaterFXMap;
layout(set = 0, binding = 4) uniform mediump texture2D _WaterDepthMap;
 struct _WaveDataBuffer_type {
	uint[6] value;
};

layout(set = 0, binding = 20, std430) readonly buffer _WaveDataBuffer {
	_WaveDataBuffer_type _WaveDataBuffer_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec3 vs_TEXCOORD1;
layout(location = 2) out highp vec3 vs_NORMAL0;
layout(location = 3) out highp vec3 vs_TEXCOORD2;
layout(location = 4) out highp vec3 vs_TEXCOORD3;
highp vec2 vs_TEXCOORD4;
layout(location = 5) out highp vec4 vs_TEXCOORD5;
layout(location = 6) out highp vec4 vs_TEXCOORD6;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
vec2 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
float u_xlat12;
vec3 u_xlat13;
float u_xlat14;
float u_xlat15;
vec3 u_xlat19;
vec2 u_xlat20;
vec2 u_xlat21;
vec2 u_xlat25;
vec2 u_xlat26;
float u_xlat31;
float u_xlat37;
float u_xlat38;
uint u_xlatu39;
float u_xlat40;
bool u_xlatb40;
float u_xlat41;
float u_xlat42;
float u_xlat44;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_ScreenTextures_linear_clamp;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_WaterDepthMap_linear_clamp;
void main()
{
    u_xlat0.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat1.xy = u_xlat0.xz * vec2(0.5, 0.5) + _Time.yy;
    u_xlat1.zw = floor(u_xlat1.xy);
    u_xlat1.xy = fract(u_xlat1.xy);
    u_xlat2.xy = u_xlat1.xy * u_xlat1.xy;
    u_xlat26.xy = (-u_xlat1.xy) * vec2(2.0, 2.0) + vec2(3.0, 3.0);
    u_xlat2.xy = u_xlat26.xy * u_xlat2.xy;
    u_xlat26.x = dot(u_xlat1.zw, vec2(127.099998, 311.700012));
    u_xlat26.y = dot(u_xlat1.zw, vec2(269.5, 183.300003));
    u_xlat3.xy = sin(u_xlat26.xy);
    u_xlat26.xy = u_xlat3.xy * vec2(43758.5469, 43758.5469);
    u_xlat26.xy = fract(u_xlat26.xy);
    u_xlat26.xy = u_xlat26.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat26.x = dot(u_xlat26.xy, u_xlat1.xy);
    u_xlat3 = u_xlat1.zwzw + vec4(1.0, 0.0, 0.0, 1.0);
    u_xlat38 = dot(u_xlat3.xy, vec2(127.099998, 311.700012));
    u_xlat3.x = dot(u_xlat3.xy, vec2(269.5, 183.300003));
    u_xlat4.x = sin(u_xlat38);
    u_xlat4.y = sin(u_xlat3.x);
    u_xlat3.xy = u_xlat4.xy * vec2(43758.5469, 43758.5469);
    u_xlat3.xy = fract(u_xlat3.xy);
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat4 = u_xlat1.xyxy + vec4(-1.0, -0.0, -0.0, -1.0);
    u_xlat38 = dot(u_xlat3.xy, u_xlat4.xy);
    u_xlat38 = (-u_xlat26.x) + u_xlat38;
    u_xlat26.x = u_xlat2.x * u_xlat38 + u_xlat26.x;
    u_xlat38 = dot(u_xlat3.zw, vec2(127.099998, 311.700012));
    u_xlat3.x = dot(u_xlat3.zw, vec2(269.5, 183.300003));
    u_xlat4.x = sin(u_xlat38);
    u_xlat4.y = sin(u_xlat3.x);
    u_xlat3.xy = u_xlat4.xy * vec2(43758.5469, 43758.5469);
    u_xlat3.xy = fract(u_xlat3.xy);
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat38 = dot(u_xlat3.xy, u_xlat4.zw);
    u_xlat1 = u_xlat1 + vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat3.x = dot(u_xlat1.zw, vec2(127.099998, 311.700012));
    u_xlat25.x = dot(u_xlat1.zw, vec2(269.5, 183.300003));
    u_xlat3.x = sin(u_xlat3.x);
    u_xlat3.y = sin(u_xlat25.x);
    u_xlat25.xy = u_xlat3.xy * vec2(43758.5469, 43758.5469);
    u_xlat25.xy = fract(u_xlat25.xy);
    u_xlat25.xy = u_xlat25.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.x = dot(u_xlat25.xy, u_xlat1.xy);
    u_xlat1.x = (-u_xlat38) + u_xlat1.x;
    u_xlat1.x = u_xlat2.x * u_xlat1.x + u_xlat38;
    u_xlat1.x = (-u_xlat26.x) + u_xlat1.x;
    u_xlat1.x = u_xlat2.y * u_xlat1.x + u_xlat26.x;
    u_xlat13.xy = u_xlat0.xz + _Time.yy;
    u_xlat2.xy = floor(u_xlat13.xy);
    u_xlat13.xy = fract(u_xlat13.xy);
    u_xlat26.xy = u_xlat13.xy * u_xlat13.xy;
    u_xlat3.xy = (-u_xlat13.xy) * vec2(2.0, 2.0) + vec2(3.0, 3.0);
    u_xlat26.xy = u_xlat26.xy * u_xlat3.xy;
    u_xlat37 = dot(u_xlat2.xy, vec2(127.099998, 311.700012));
    u_xlat3.x = dot(u_xlat2.xy, vec2(269.5, 183.300003));
    u_xlat4.x = sin(u_xlat37);
    u_xlat4.y = sin(u_xlat3.x);
    u_xlat3.xy = u_xlat4.xy * vec2(43758.5469, 43758.5469);
    u_xlat3.xy = fract(u_xlat3.xy);
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat37 = dot(u_xlat3.xy, u_xlat13.xy);
    u_xlat3 = u_xlat2.xyxy + vec4(1.0, 0.0, 0.0, 1.0);
    u_xlat4.x = dot(u_xlat3.xy, vec2(127.099998, 311.700012));
    u_xlat3.x = dot(u_xlat3.xy, vec2(269.5, 183.300003));
    u_xlat4.x = sin(u_xlat4.x);
    u_xlat4.y = sin(u_xlat3.x);
    u_xlat3.xy = u_xlat4.xy * vec2(43758.5469, 43758.5469);
    u_xlat3.xy = fract(u_xlat3.xy);
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat4 = u_xlat13.xyxy + vec4(-1.0, -0.0, -0.0, -1.0);
    u_xlat3.x = dot(u_xlat3.xy, u_xlat4.xy);
    u_xlat3.x = (-u_xlat37) + u_xlat3.x;
    u_xlat37 = u_xlat26.x * u_xlat3.x + u_xlat37;
    u_xlat3.x = dot(u_xlat3.zw, vec2(127.099998, 311.700012));
    u_xlat3.y = dot(u_xlat3.zw, vec2(269.5, 183.300003));
    u_xlat4.xy = sin(u_xlat3.xy);
    u_xlat3.xy = u_xlat4.xy * vec2(43758.5469, 43758.5469);
    u_xlat3.xy = fract(u_xlat3.xy);
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat3.x = dot(u_xlat3.xy, u_xlat4.zw);
    u_xlat2.xy = u_xlat2.xy + vec2(1.0, 1.0);
    u_xlat15 = dot(u_xlat2.xy, vec2(127.099998, 311.700012));
    u_xlat2.x = dot(u_xlat2.xy, vec2(269.5, 183.300003));
    u_xlat4.x = sin(u_xlat15);
    u_xlat4.y = sin(u_xlat2.x);
    u_xlat2.xy = u_xlat4.xy * vec2(43758.5469, 43758.5469);
    u_xlat2.xy = fract(u_xlat2.xy);
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat13.xy = u_xlat13.xy + vec2(-1.0, -1.0);
    u_xlat13.x = dot(u_xlat2.xy, u_xlat13.xy);
    u_xlat13.x = (-u_xlat3.x) + u_xlat13.x;
    u_xlat13.x = u_xlat26.x * u_xlat13.x + u_xlat3.x;
    u_xlat13.x = (-u_xlat37) + u_xlat13.x;
    u_xlat13.x = u_xlat26.y * u_xlat13.x + u_xlat37;
    u_xlat1.x = u_xlat13.x + u_xlat1.x;
    u_xlat1.x = u_xlat1.x * 0.25 + -0.5;
    u_xlat1.x = u_xlat1.x + 1.0;
    u_xlat13.xy = _Time.yy * vec2(0.0500000007, 0.100000001);
    u_xlat13.xz = u_xlat0.xz * vec2(0.100000001, 0.100000001) + u_xlat13.xx;
    vs_TEXCOORD0.zw = u_xlat1.xx * vec2(0.100000001, 0.100000001) + u_xlat13.xz;
    u_xlat13.xy = u_xlat0.xz * vec2(0.400000006, 0.400000006) + (-u_xlat13.yy);
    vs_TEXCOORD0.xy = u_xlat1.xx * vec2(0.200000003, 0.200000003) + u_xlat13.xy;
    u_xlat2 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat2;
    u_xlat2 = u_xlat2 + unity_MatrixVP[3];
    u_xlat3.x = float(0.5);
    u_xlat3.z = float(0.5);
    u_xlat3.y = _ProjectionParams.x;
    u_xlat4.xyz = u_xlat2.xyw * u_xlat3.zyz;
    u_xlat4.w = u_xlat4.y * 0.5;
    u_xlat2.xy = u_xlat4.zz + u_xlat4.xw;
    u_xlat13.xyz = u_xlat2.xyz / u_xlat2.www;
    u_xlat2.xy = u_xlat0.xz * vec2(0.00200000009, 0.00200000009) + vec2(0.5, 0.5);
    u_xlat2.x = textureLod(sampler2D(_WaterDepthMap, sampler_WaterDepthMap_linear_clamp), u_xlat2.xy, 1.0).x;
    u_xlat2.x = (-u_xlat2.x) + 1.0;
    u_xlat14 = _MaxDepth + _VeraslWater_DepthCamParams.x;
    u_xlat2.x = u_xlat2.x * u_xlat14 + (-_VeraslWater_DepthCamParams.x);
    u_xlat14 = (-u_xlat2.x) + 1.5;
    u_xlat14 = u_xlat14 * 0.400000006;
    u_xlat14 = clamp(u_xlat14, 0.0, 1.0);
    u_xlat0.w = u_xlat14 * u_xlat14 + u_xlat0.y;
    u_xlat12 = u_xlat2.x * 0.100000001 + 0.0500000007;
    u_xlat2.xz = vec2(u_xlat12);
    u_xlat2.xz = clamp(u_xlat2.xz, 0.0, 1.0);
    u_xlat12 = float(_WaveCount);
    u_xlat38 = float(1.0) / u_xlat12;
    u_xlat4.xyz = u_xlat2.zzz * vec3(3.0, 3.0, 1.0);
    u_xlat4.xyz = min(u_xlat4.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<_WaveCount ; u_xlatu_loop_1++)
    {
        u_xlat7 = vec4(uintBitsToFloat(_WaveDataBuffer_buf[u_xlatu_loop_1].value[(0 >> 2) + 0]), uintBitsToFloat(_WaveDataBuffer_buf[u_xlatu_loop_1].value[(0 >> 2) + 1]), uintBitsToFloat(_WaveDataBuffer_buf[u_xlatu_loop_1].value[(0 >> 2) + 2]), uintBitsToFloat(_WaveDataBuffer_buf[u_xlatu_loop_1].value[(0 >> 2) + 3]));
        u_xlat8.xy = vec2(uintBitsToFloat(_WaveDataBuffer_buf[u_xlatu_loop_1].value[(16 >> 2) + 0]), uintBitsToFloat(_WaveDataBuffer_buf[u_xlatu_loop_1].value[(16 >> 2) + 1]));
        u_xlat40 = 6.28318024 / u_xlat7.z;
        u_xlat41 = u_xlat40 * 9.80000019;
        u_xlat41 = sqrt(u_xlat41);
        u_xlat42 = u_xlat40 * u_xlat7.x;
        u_xlat31 = u_xlat12 * u_xlat42;
        u_xlat31 = 1.5 / u_xlat31;
        u_xlat9.xy = u_xlat7.xy * vec2(10000.0, 0.0174532924);
        u_xlat10.x = sin(u_xlat9.y);
        u_xlat11.x = cos(u_xlat9.y);
        u_xlat19.x = (-u_xlat8.y) + 1.0;
        u_xlat10.z = u_xlat11.x;
        u_xlat8.z = u_xlat7.w;
        u_xlat21.xy = u_xlat0.xz + (-u_xlat8.zx);
        u_xlat21.xy = u_xlat8.yy * u_xlat21.xy;
        u_xlat19.xz = u_xlat10.xz * u_xlat19.xx + u_xlat21.xy;
        u_xlat44 = dot(u_xlat19.xz, u_xlat19.xz);
        u_xlat44 = inversesqrt(u_xlat44);
        u_xlat19.xz = u_xlat19.xz * vec2(u_xlat44);
        u_xlat8.xy = (-u_xlat8.zx) * u_xlat8.yy + u_xlat0.xz;
        u_xlat8.x = dot(u_xlat19.xz, u_xlat8.xy);
        u_xlat41 = u_xlat41 * (-_Time.y);
        u_xlat40 = u_xlat8.x * u_xlat40 + u_xlat41;
        u_xlat8.x = sin(u_xlat40);
        u_xlat10.x = cos(u_xlat40);
        u_xlat40 = u_xlat7.x * u_xlat31;
        u_xlat20.xy = u_xlat19.xz * vec2(u_xlat40);
        u_xlat11.xz = u_xlat10.xx * u_xlat20.xy;
        u_xlat40 = u_xlat7.x * u_xlat8.x;
        u_xlat11.y = u_xlat38 * u_xlat40;
        u_xlat7.xy = vec2(u_xlat42) * u_xlat19.xz;
        u_xlat7.xy = u_xlat10.xx * u_xlat7.xy;
        u_xlat10.xz = (-u_xlat7.xy);
        u_xlat40 = u_xlat42 * u_xlat31;
        u_xlat10.y = (-u_xlat40) * u_xlat8.x + 1.0;
        u_xlat9.x = u_xlat9.x;
        u_xlat9.x = clamp(u_xlat9.x, 0.0, 1.0);
        u_xlat5.xyz = u_xlat11.xyz * u_xlat9.xxx + u_xlat5.xyz;
        u_xlat6.xyz = u_xlat10.xyz * vec3(u_xlat38) + u_xlat6.xyz;
    }
    u_xlat7.xyz = u_xlat4.xyz * u_xlat5.xyz;
    u_xlat2.y = 1.0;
    u_xlat8.xyz = u_xlat2.xyz * u_xlat6.xyz;
    u_xlat0.xyz = u_xlat5.xyz * u_xlat4.xyz + u_xlat0.xwz;
    u_xlat38 = textureLod(sampler2D(_WaterFXMap, sampler_ScreenTextures_linear_clamp), u_xlat13.xy, 0.0).w;
    u_xlat38 = u_xlat38 * 2.0 + -1.0;
    u_xlat0.w = u_xlat0.y + u_xlat38;
    u_xlat4 = u_xlat0.wwww * unity_MatrixVP[1];
    u_xlat4 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat4;
    u_xlat4 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat4;
    u_xlat4 = u_xlat4 + unity_MatrixVP[3];
    u_xlat3.xyz = u_xlat3.xyz * u_xlat4.xyw;
    u_xlat3.w = u_xlat3.y * 0.5;
    vs_TEXCOORD6.xy = u_xlat3.zz + u_xlat3.xw;
    u_xlat3.xyz = (-u_xlat0.xwz) + _WorldSpaceCameraPos.xyz;
    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat38 = max(u_xlat12, 1.17549435e-38);
    u_xlat38 = inversesqrt(u_xlat38);
    vs_TEXCOORD2.xyz = vec3(u_xlat38) * u_xlat3.xyz;
    u_xlat5.xyz = u_xlat0.www * unity_MatrixV[1].xyz;
    u_xlat5.xyz = unity_MatrixV[0].xyz * u_xlat0.xxx + u_xlat5.xyz;
    u_xlat5.xyz = unity_MatrixV[2].xyz * u_xlat0.zzz + u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz + unity_MatrixV[3].xyz;
    u_xlat5.xyz = u_xlat5.xyz / u_xlat5.zzz;
    u_xlat38 = dot(u_xlat5.xyz, u_xlat5.xyz);
    vs_TEXCOORD5.x = sqrt(u_xlat38);
    vs_TEXCOORD5.y = sqrt(u_xlat12);
    u_xlat12 = u_xlat7.y / _MaxWaveHeight;
    vs_TEXCOORD5.z = u_xlat12 * 0.5 + 0.5;
    vs_TEXCOORD5.w = u_xlat7.z + u_xlat7.x;
    u_xlat3.xy = u_xlat3.xz * vec2(0.00499999989, 0.00499999989);
    u_xlat12 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat12 = sqrt(u_xlat12);
    u_xlat12 = u_xlat12 + -0.25;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat2.xyz = (-u_xlat6.xyz) * u_xlat2.xyz + vec3(0.0, 1.0, 0.0);
    vs_NORMAL0.xyz = vec3(u_xlat12) * u_xlat2.xyz + u_xlat8.xyz;
    vs_TEXCOORD6.zw = u_xlat4.zw;
    gl_Position = u_xlat4;
    vs_TEXCOORD1.xyz = u_xlat0.xwz;
    vs_TEXCOORD3.xyz = u_xlat13.xyz;
    vs_TEXCOORD4.x = 0.0;
    vs_TEXCOORD4.y = u_xlat1.x;
    return;
}

