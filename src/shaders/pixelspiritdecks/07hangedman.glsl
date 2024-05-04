varying vec2 vUv;
float PI = 3.14159;

void main(){
    float color = step(-0.1+vUv.y,vUv.x);
    color*=1.0-step(0.1+vUv.y,vUv.x);
    float color1 =step(-0.1+vUv.y,1.0-vUv.x);
    color1*=1.0-step(0.1+vUv.y,1.0-vUv.x);

    gl_FragColor=vec4(color+color1,color+color1,color+color1,1.0);
}