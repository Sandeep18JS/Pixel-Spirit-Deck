varying vec2 vUv;
float PI = 3.14159;

void main(){
    float color = step(0.45,1.0-vUv.x);
    color*=step(0.45,vUv.x);
    gl_FragColor=vec4(color,color,color,1.0);
}