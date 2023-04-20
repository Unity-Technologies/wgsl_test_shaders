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
	vec4 _LayerMask;
	vec4 _OriginalTargetAlphaMask;
};
layout(set = 0, binding = 0) uniform mediump texture2D _AlphaMapTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _OriginalTargetAlphaMap;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
float u_xlat3;
float u_xlat6;
bool u_xlatb6;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_AlphaMapTexture;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_OriginalTargetAlphaMap;
void main()
{
    u_xlat0 = texture(sampler2D(_OriginalTargetAlphaMap, sampler_OriginalTargetAlphaMap), vs_TEXCOORD1.xy);
    u_xlat0.x = dot(u_xlat0, _OriginalTargetAlphaMask);
    u_xlat3 = (-u_xlat0.x) + 1.0;
    u_xlatb6 = 0.00100000005<u_xlat3;
    if(u_xlatb6){
        u_xlat1 = texture(sampler2D(_AlphaMapTexture, sampler_AlphaMapTexture), vs_TEXCOORD1.xy);
        u_xlat6 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).x;
        u_xlat0.x = max(u_xlat0.x, u_xlat6);
        u_xlat6 = (-u_xlat0.x) + 1.0;
        u_xlat3 = u_xlat6 / u_xlat3;
        u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
        u_xlat2 = (-_LayerMask) + vec4(1.0, 1.0, 1.0, 1.0);
        u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
        u_xlat1 = u_xlat1 * u_xlat2;
        u_xlat2 = u_xlat0.xxxx * _LayerMask;
        SV_Target0 = u_xlat1 * vec4(u_xlat3) + u_xlat2;
        return;
    }
    SV_Target0 = _LayerMask;
    return;
}

