varying vec2 vUv;
float PI = 3.14159;

void main(){
    float color = step(0.65-cos(vUv.y*PI)*0.15,1.0-vUv.x);
    color*=step(0.25+cos(vUv.y*PI)*0.15,vUv.x);
    float color1 = step(0.25-cos(vUv.y*PI)*0.15,1.0-vUv.x);
    color1*=step(0.65+cos(vUv.y*PI)*0.15,vUv.x);
    float color2 = step(0.45-cos(vUv.y*PI)*0.15,1.0-vUv.x);
    color2*=step(0.45+cos(vUv.y*PI)*0.15,vUv.x);
    gl_FragColor=vec4(color+color1+color2,color+color1+color2,color+color1+color2,1.0);
}