precision highp float;

uniform lowp vec2 u_resolution;
uniform highp float u_time;

void main() {
    vec2 uv = gl_FragCoord/u_resolution;

    vec3 col = 0.5 + 0.5*cos(u_time+uv.xyx+vec3(0,2,4));

	gl_FragColor = vec4(col, 1.0);
}