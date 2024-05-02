varying vec2 vUv;
float PI = 3.14159;

void main(){
    float color = step(0.5+cos(vUv.y*PI)*0.25,vUv.x);
    gl_FragColor=vec4(color,color,color,1.0);
}