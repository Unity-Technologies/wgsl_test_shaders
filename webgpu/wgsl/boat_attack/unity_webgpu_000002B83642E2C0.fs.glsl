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
	vec4 _Lut_Params;
	vec4 _ColorBalance;
	vec4 _ColorFilter;
	vec4 _ChannelMixerRed;
	vec4 _ChannelMixerGreen;
	vec4 _ChannelMixerBlue;
	vec4 _HueSatCon;
	vec4 _Lift;
	vec4 _Gamma;
	vec4 _Gain;
	vec4 _Shadows;
	vec4 _Midtones;
	vec4 _Highlights;
	vec4 _ShaHiLimits;
	vec4 _SplitShadows;
	vec4 _SplitHighlights;
};
layout(set = 0, binding = 0) uniform mediump texture2D _CurveMaster;
layout(set = 0, binding = 1) uniform mediump texture2D _CurveRed;
layout(set = 0, binding = 2) uniform mediump texture2D _CurveGreen;
layout(set = 0, binding = 3) uniform mediump texture2D _CurveBlue;
layout(set = 0, binding = 4) uniform mediump texture2D _CurveHueVsHue;
layout(set = 0, binding = 5) uniform mediump texture2D _CurveHueVsSat;
layout(set = 0, binding = 6) uniform mediump texture2D _CurveSatVsSat;
layout(set = 0, binding = 7) uniform mediump texture2D _CurveLumVsSat;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
ivec3 u_xlati1;
bool u_xlatb1;
vec3 u_xlat2;
ivec3 u_xlati2;
vec4 u_xlat3;
vec3 u_xlat4;
bvec3 u_xlatb4;
vec3 u_xlat5;
vec2 u_xlat6;
bool u_xlatb6;
vec3 u_xlat7;
vec3 u_xlat8;
vec2 u_xlat14;
vec2 u_xlat15;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.yz = vs_TEXCOORD0.xy + (-_Lut_Params.yz);
    u_xlat1.x = u_xlat0.y * _Lut_Params.x;
    u_xlat0.x = fract(u_xlat1.x);
    u_xlat1.x = u_xlat0.x / _Lut_Params.x;
    u_xlat0.w = u_xlat0.y + (-u_xlat1.x);
    u_xlat0.xyz = u_xlat0.xzw * _Lut_Params.www + vec3(-0.386036009, -0.386036009, -0.386036009);
    u_xlat0.xyz = u_xlat0.xyz * vec3(13.6054821, 13.6054821, 13.6054821);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0479959995, -0.0479959995, -0.0479959995);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.179999992, 0.179999992, 0.179999992);
    u_xlat1.x = dot(vec3(0.390404999, 0.549941003, 0.00892631989), u_xlat0.xyz);
    u_xlat1.y = dot(vec3(0.070841603, 0.963172019, 0.00135775004), u_xlat0.xyz);
    u_xlat1.z = dot(vec3(0.0231081992, 0.128021002, 0.936245024), u_xlat0.xyz);
    u_xlat0.xyz = u_xlat1.xyz * _ColorBalance.xyz;
    u_xlat1.x = dot(vec3(2.85846996, -1.62879002, -0.0248910002), u_xlat0.xyz);
    u_xlat1.y = dot(vec3(-0.210181996, 1.15820003, 0.000324280991), u_xlat0.xyz);
    u_xlat1.z = dot(vec3(-0.0418119989, -0.118169002, 1.06867003), u_xlat0.xyz);
    u_xlat0.xyz = u_xlat1.xyz * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(-0.0275523961, -0.0275523961, -0.0275523961);
    u_xlat0.xyz = u_xlat0.xyz * _HueSatCon.zzz + vec3(0.0275523961, 0.0275523961, 0.0275523961);
    u_xlat0.xyz = u_xlat0.xyz * vec3(13.6054821, 13.6054821, 13.6054821);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0479959995, -0.0479959995, -0.0479959995);
    u_xlat0.xyz = u_xlat0.xyz * _ColorFilter.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.179999992, 0.179999992, 0.179999992);
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat1.xyz = u_xlat0.xyz + u_xlat0.xyz;
    u_xlat2.xyz = u_xlat0.xyz * u_xlat0.xyz;
    u_xlat3.xyz = min(u_xlat0.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat0.xyz = sqrt(u_xlat0.xyz);
    u_xlat18 = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat18 = u_xlat18 + _SplitShadows.w;
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat19 = (-u_xlat18) + 1.0;
    u_xlat3.xyz = _SplitShadows.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat3.xyz = vec3(u_xlat19) * u_xlat3.xyz + vec3(0.5, 0.5, 0.5);
    u_xlat4.xyz = (-u_xlat3.xyz) * vec3(2.0, 2.0, 2.0) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat4.xyz;
    u_xlat2.xyz = u_xlat1.xyz * u_xlat3.xyz + u_xlat2.xyz;
    u_xlatb4.xyz = greaterThanEqual(u_xlat3.xyzx, vec4(0.5, 0.5, 0.5, 0.0)).xyz;
    u_xlat5.x = (u_xlatb4.x) ? float(0.0) : float(1.0);
    u_xlat5.y = (u_xlatb4.y) ? float(0.0) : float(1.0);
    u_xlat5.z = (u_xlatb4.z) ? float(0.0) : float(1.0);
    u_xlat4.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat4.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat4.z = u_xlatb4.z ? float(1.0) : 0.0;
;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
    u_xlat5.xyz = (-u_xlat3.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = u_xlat1.xyz * u_xlat5.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat4.xyz + u_xlat2.xyz;
    u_xlat1.xyz = u_xlat0.xyz + u_xlat0.xyz;
    u_xlat2.xyz = u_xlat0.xyz * u_xlat0.xyz;
    u_xlat0.xyz = sqrt(u_xlat0.xyz);
    u_xlat3.xyz = _SplitHighlights.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz + vec3(0.5, 0.5, 0.5);
    u_xlat4.xyz = (-u_xlat3.xyz) * vec3(2.0, 2.0, 2.0) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat4.xyz;
    u_xlat2.xyz = u_xlat1.xyz * u_xlat3.xyz + u_xlat2.xyz;
    u_xlatb4.xyz = greaterThanEqual(u_xlat3.xyzx, vec4(0.5, 0.5, 0.5, 0.0)).xyz;
    u_xlat5.x = (u_xlatb4.x) ? float(0.0) : float(1.0);
    u_xlat5.y = (u_xlatb4.y) ? float(0.0) : float(1.0);
    u_xlat5.z = (u_xlatb4.z) ? float(0.0) : float(1.0);
    u_xlat4.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat4.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat4.z = u_xlatb4.z ? float(1.0) : 0.0;
;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz;
    u_xlat5.xyz = (-u_xlat3.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = u_xlat1.xyz * u_xlat5.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat4.xyz + u_xlat2.xyz;
    u_xlat0.xyz = log2(abs(u_xlat0.xyz));
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.20000005, 2.20000005, 2.20000005);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat1.x = dot(u_xlat0.xyz, _ChannelMixerRed.xyz);
    u_xlat1.y = dot(u_xlat0.xyz, _ChannelMixerGreen.xyz);
    u_xlat1.z = dot(u_xlat0.xyz, _ChannelMixerBlue.xyz);
    u_xlat0.xyz = u_xlat1.xyz * _Midtones.xyz;
    u_xlat18 = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat2.xy = vec2(u_xlat18) + (-_ShaHiLimits.xz);
    u_xlat14.xy = (-_ShaHiLimits.xz) + _ShaHiLimits.yw;
    u_xlat14.xy = vec2(1.0, 1.0) / u_xlat14.xy;
    u_xlat2.xy = u_xlat14.xy * u_xlat2.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlat14.xy = u_xlat2.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
    u_xlat2.xy = u_xlat2.xy * u_xlat2.xy;
    u_xlat18 = (-u_xlat14.x) * u_xlat2.x + 1.0;
    u_xlat19 = (-u_xlat18) + 1.0;
    u_xlat19 = (-u_xlat14.y) * u_xlat2.y + u_xlat19;
    u_xlat2.x = u_xlat2.y * u_xlat14.y;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat19);
    u_xlat8.xyz = u_xlat1.xyz * _Shadows.xyz;
    u_xlat1.xyz = u_xlat1.xyz * _Highlights.xyz;
    u_xlat0.xyz = u_xlat8.xyz * vec3(u_xlat18) + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat2.xxx + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * _Gain.xyz + _Lift.xyz;
    u_xlati1.xyz = ivec3(uvec3(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat0.xyzx).xyz) * 0xFFFFFFFFu);
    u_xlati2.xyz = ivec3(uvec3(lessThan(u_xlat0.xyzx, vec4(0.0, 0.0, 0.0, 0.0)).xyz) * 0xFFFFFFFFu);
    u_xlat0.xyz = log2(abs(u_xlat0.xyz));
    u_xlat0.xyz = u_xlat0.xyz * _Gamma.xyz;
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlati1.xyz = (-u_xlati1.xyz) + u_xlati2.xyz;
    u_xlat1.xyz = vec3(u_xlati1.xyz);
    u_xlat2.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat3.xy = u_xlat2.zy;
    u_xlat0.xy = u_xlat1.yz * u_xlat0.yz + (-u_xlat3.xy);
    u_xlatb1 = u_xlat3.y>=u_xlat2.z;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat3.z = float(-1.0);
    u_xlat3.w = float(0.666666687);
    u_xlat0.z = float(1.0);
    u_xlat0.w = float(-1.0);
    u_xlat0 = u_xlat1.xxxx * u_xlat0.xywz + u_xlat3.xywz;
    u_xlatb1 = u_xlat2.x>=u_xlat0.x;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat3.z = u_xlat0.w;
    u_xlat0.w = u_xlat2.x;
    u_xlat2.x = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat3.xyw = u_xlat0.wyx;
    u_xlat3 = (-u_xlat0) + u_xlat3;
    u_xlat0 = u_xlat1.xxxx * u_xlat3 + u_xlat0;
    u_xlat1.x = min(u_xlat0.y, u_xlat0.w);
    u_xlat1.x = u_xlat0.x + (-u_xlat1.x);
    u_xlat7.x = u_xlat1.x * 6.0 + 9.99999975e-05;
    u_xlat6.x = (-u_xlat0.y) + u_xlat0.w;
    u_xlat6.x = u_xlat6.x / u_xlat7.x;
    u_xlat6.x = u_xlat6.x + u_xlat0.z;
    u_xlat3.x = abs(u_xlat6.x);
    u_xlat14.x = u_xlat3.x + _HueSatCon.x;
    u_xlat2.y = float(0.0);
    u_xlat14.y = float(0.0);
    u_xlat6.x = texture(sampler2D(_CurveHueVsHue, sampler_LinearClamp), u_xlat14.xy, _GlobalMipBias.x).x;
    u_xlat6.y = texture(sampler2D(_CurveLumVsSat, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).x;
    u_xlat6.xy = u_xlat6.xy;
    u_xlat6.xy = clamp(u_xlat6.xy, 0.0, 1.0);
    u_xlat6.x = u_xlat14.x + u_xlat6.x;
    u_xlat7.xyz = u_xlat6.xxx + vec3(-0.5, 0.5, -1.5);
    u_xlatb6 = 1.0<u_xlat7.x;
    u_xlat6.x = (u_xlatb6) ? u_xlat7.z : u_xlat7.x;
    u_xlatb18 = u_xlat7.x<0.0;
    u_xlat6.x = (u_xlatb18) ? u_xlat7.y : u_xlat6.x;
    u_xlat7.xyz = u_xlat6.xxx + vec3(1.0, 0.666666687, 0.333333343);
    u_xlat7.xyz = fract(u_xlat7.xyz);
    u_xlat7.xyz = u_xlat7.xyz * vec3(6.0, 6.0, 6.0) + vec3(-3.0, -3.0, -3.0);
    u_xlat7.xyz = abs(u_xlat7.xyz) + vec3(-1.0, -1.0, -1.0);
    u_xlat7.xyz = clamp(u_xlat7.xyz, 0.0, 1.0);
    u_xlat7.xyz = u_xlat7.xyz + vec3(-1.0, -1.0, -1.0);
    u_xlat6.x = u_xlat0.x + 9.99999975e-05;
    u_xlat15.x = u_xlat1.x / u_xlat6.x;
    u_xlat1.xyz = u_xlat15.xxx * u_xlat7.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat6.x = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + (-u_xlat6.xxx);
    u_xlat3.y = float(0.0);
    u_xlat15.y = float(0.0);
    u_xlat0.x = texture(sampler2D(_CurveHueVsSat, sampler_LinearClamp), u_xlat3.xy, _GlobalMipBias.x).x;
    u_xlat0.w = texture(sampler2D(_CurveSatVsSat, sampler_LinearClamp), u_xlat15.xy, _GlobalMipBias.x).x;
    u_xlat0.xw = u_xlat0.xw;
    u_xlat0.xw = clamp(u_xlat0.xw, 0.0, 1.0);
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat0.x = dot(u_xlat0.ww, u_xlat0.xx);
    u_xlat0.x = u_xlat0.x * u_xlat6.y;
    u_xlat0.x = dot(_HueSatCon.yy, u_xlat0.xx);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat6.xxx;
    u_xlat18 = max(u_xlat0.y, u_xlat0.x);
    u_xlat18 = max(u_xlat0.z, u_xlat18);
    u_xlat18 = u_xlat18 + 1.0;
    u_xlat18 = float(1.0) / float(u_xlat18);
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat18) + vec3(0.00390625, 0.00390625, 0.00390625);
    u_xlat0.w = 0.0;
    u_xlat1.x = texture(sampler2D(_CurveMaster, sampler_LinearClamp), u_xlat0.xw, _GlobalMipBias.x).x;
    u_xlat1.x = u_xlat1.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat7.x = texture(sampler2D(_CurveMaster, sampler_LinearClamp), u_xlat0.yw, _GlobalMipBias.x).x;
    u_xlat7.y = texture(sampler2D(_CurveMaster, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).x;
    u_xlat1.yz = u_xlat7.xy;
    u_xlat1.yz = clamp(u_xlat1.yz, 0.0, 1.0);
    u_xlat0.xyz = u_xlat1.xyz + vec3(0.00390625, 0.00390625, 0.00390625);
    u_xlat0.w = 0.0;
    u_xlat1.x = texture(sampler2D(_CurveRed, sampler_LinearClamp), u_xlat0.xw, _GlobalMipBias.x).x;
    u_xlat1.x = u_xlat1.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat7.x = texture(sampler2D(_CurveGreen, sampler_LinearClamp), u_xlat0.yw, _GlobalMipBias.x).x;
    u_xlat7.y = texture(sampler2D(_CurveBlue, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).x;
    u_xlat1.yz = u_xlat7.xy;
    u_xlat1.yz = clamp(u_xlat1.yz, 0.0, 1.0);
    u_xlat0.x = max(u_xlat1.y, u_xlat1.x);
    u_xlat0.x = max(u_xlat1.z, u_xlat0.x);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = float(1.0) / float(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.262677222, 0.262677222, 0.262677222) + vec3(0.0695999935, 0.0695999935, 0.0695999935);
    u_xlat2.xyz = u_xlat0.xyz * vec3(1.31338608, 1.31338608, 1.31338608);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.262677222, 0.262677222, 0.262677222) + vec3(0.289999992, 0.289999992, 0.289999992);
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xyz + vec3(0.0816000104, 0.0816000104, 0.0816000104);
    u_xlat1.xyz = u_xlat2.xyz * u_xlat1.xyz + vec3(0.00543999998, 0.00543999998, 0.00543999998);
    u_xlat0.xyz = u_xlat1.xyz / u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0666666627, -0.0666666627, -0.0666666627);
    SV_Target0.xyz = u_xlat0.xyz * vec3(1.31338608, 1.31338608, 1.31338608);
    SV_Target0.w = 1.0;
    return;
}

