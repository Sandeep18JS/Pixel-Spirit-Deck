varying vec2 vUv;
float PI = 3.14159;

void main(){
    float color = step(0.5,(vUv.x+vUv.y)*0.5);
    gl_FragColor=vec4(color,color,color,1.0);
}