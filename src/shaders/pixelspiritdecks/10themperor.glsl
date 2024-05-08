uniform float u_time;
varying vec2 vUv;

void main() {
    vec2 st = (vUv * 2.0) - 1.0;

    float outerBox = step(-0.5, st.x) * step(-0.5, st.y) * step(st.x, 0.5) * step(st.y, 0.5);
    float innerBox1 = step(-0.4, st.x) * step(-0.4, st.y) * step(st.x, 0.4) * step(st.y, 0.4);
    float innerBox2 = step(-0.1, st.x) * step(-0.1, st.y) * step(st.x, 0.1) * step(st.y, 0.1);

    float combinedBox = outerBox - innerBox1 + innerBox2;

    gl_FragColor = vec4(combinedBox, combinedBox, combinedBox, 1.0);
}