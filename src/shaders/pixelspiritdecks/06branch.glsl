varying vec2 vUv;
float PI = 3.14159;

void main(){
    float color = step(-0.1+vUv.y,vUv.x);
     color*=1.0-step(0.1+vUv.y,vUv.x);


    gl_FragColor=vec4(color,color,color,1.0);
}