varying vec2 vUv;

void main(){
    float color = step(0.5,vUv.x);
    gl_FragColor=vec4(color,color,color,1.0);
}