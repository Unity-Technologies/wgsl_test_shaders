diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_28 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_25 * x_28);
  let x_33 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = u_xlat0;
  let x_37 : vec3<f32> = (vec3<f32>(x_33.w, x_33.w, x_33.w) * vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_38 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_37.x, x_37.y, x_37.z, x_38.w);
  let x_44 : f32 = u_xlat0.w;
  SV_Target0.w = x_44;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


