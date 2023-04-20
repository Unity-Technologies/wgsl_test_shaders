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
	vec2 _GlobalMipBias;
	vec4 _BlitTexture_TexelSize;
};
layout(set = 1, binding = 1, std140) uniform TemporalAAData {
	vec4 _TaaMotionVectorTex_TexelSize;
	vec4 _TaaAccumulationTex_TexelSize;
	float _TaaFilterWeights[9];
	float _TaaFrameInfluence;
	float _TaaVarianceClampScale;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _TaaMotionVectorTex;
layout(set = 0, binding = 2) uniform mediump texture2D _TaaAccumulationTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
float u_xlat18;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.xy = texture(sampler2D(_TaaMotionVectorTex, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xy;
    u_xlat0.xy = (-u_xlat0.xy) + vs_TEXCOORD0.xy;
    u_xlat0.xyz = texture(sampler2D(_TaaAccumulationTex, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat1 = _BlitTexture_TexelSize.xyxy * vec4(0.0, -1.0, -1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = min(u_xlat1.xyz, u_xlat3.xyz);
    u_xlat1.xyz = max(u_xlat1.xyz, u_xlat3.xyz);
    u_xlat1.xyz = max(u_xlat1.xyz, u_xlat2.xyz);
    u_xlat2.xyz = min(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat4 = _BlitTexture_TexelSize.xyxy * vec4(1.0, 0.0, 0.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat4.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat4.zw, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = min(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat1.xyz = max(u_xlat1.xyz, u_xlat5.xyz);
    u_xlat1.xyz = max(u_xlat1.xyz, u_xlat4.xyz);
    u_xlat2.xyz = min(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat0.xyz = max(u_xlat0.xyz, u_xlat2.xyz);
    u_xlat0.xyz = min(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat18 = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat18 = u_xlat18 + 1.0;
    u_xlat18 = float(1.0) / float(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat18 = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat18 = u_xlat18 + 1.0;
    u_xlat18 = float(1.0) / float(u_xlat18);
    u_xlat1.xyz = u_xlat3.xyz * vec3(u_xlat18) + (-u_xlat0.xyz);
    u_xlat0.xyz = vec3(vec3(_TaaFrameInfluence, _TaaFrameInfluence, _TaaFrameInfluence)) * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat18 = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat18 = (-u_xlat18) + 1.0;
    u_xlat18 = float(1.0) / float(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    SV_Target0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    SV_Target0.w = 1.0;
    return;
}

