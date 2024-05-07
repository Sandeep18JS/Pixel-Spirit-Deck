uniform float u_time;
varying vec2 vUv;

void main() {

   float color = step(0.5,length(vec2(0.0)-((vUv*2.0)-1.0)));
  color*=1.0-step(0.6,length(vec2(0.0)-((vUv*2.0)-1.0)));
    gl_FragColor = vec4(color,color,color,1.0);
}

// uniform float u_time;
// varying vec2 vUv;

// float stroke(float x, float s, float w) {
//     float d = step(s, x + w * 1.) - step(s, x - w * 1.0);
//     return clamp(d, 0.0, 1.0);
// }

// float circleSDF(vec2 st) {
//     return length(st * 2.0 - 1.0);
// }

// void main() {
//     float color = stroke(circleSDF(vUv), 0.5, 0.05);
//     gl_FragColor = vec4(color, color, color, 1.0);
// }