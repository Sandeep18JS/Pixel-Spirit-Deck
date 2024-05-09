uniform float u_time;
varying vec2 vUv;


void main() {
    float circle = length(vUv-0.5)*2.0;
    float circle2 = length((vUv-vec2(0.1,0.05))-0.5)*2.0;
    float color = 1.0-step(0.5,circle);
    color-=1.0-step(0.4,circle2);
    gl_FragColor = vec4(color,color,color, 1.0);
}