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
layout(set = 1, binding = 0, std140) uniform PGlobals {
	mat4x4 _MatrixColorConversion;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _SecondTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
float u_xlat9;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_SecondTex;
void main()
{
    u_xlat0.x = _MatrixColorConversion[0].x;
    u_xlat0.y = _MatrixColorConversion[1].x;
    u_xlat0.z = _MatrixColorConversion[2].x;
    u_xlat9 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat1.x = u_xlat9 + -0.0625;
    u_xlat2.xy = texture(sampler2D(_SecondTex, sampler_SecondTex), vs_TEXCOORD0.xy).xy;
    u_xlat1.yz = u_xlat2.xy + vec2(-0.5, -0.5);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat1.xyz);
    u_xlat2.x = _MatrixColorConversion[0].y;
    u_xlat2.y = _MatrixColorConversion[1].y;
    u_xlat2.z = _MatrixColorConversion[2].y;
    u_xlat0.y = dot(u_xlat2.xyz, u_xlat1.xyz);
    u_xlat2.x = _MatrixColorConversion[0].z;
    u_xlat2.y = _MatrixColorConversion[1].z;
    u_xlat2.z = _MatrixColorConversion[2].z;
    u_xlat0.z = dot(u_xlat2.xyz, u_xlat1.xyz);
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.305306017, 0.305306017, 0.305306017) + vec3(0.682171106, 0.682171106, 0.682171106);
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz + vec3(0.0125228781, 0.0125228781, 0.0125228781);
    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

