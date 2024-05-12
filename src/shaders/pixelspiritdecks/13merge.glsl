varying vec2 vUv;

void main(){
    vec2 st =vUv*2.0-1.0; 
    float Wcircle =step( 0.5,length(vec2(-0.4,0.0)-st));
    float Wcircle1 =1.0-step( 0.55,length(vec2(-0.4,0.0)-st));
    Wcircle*=Wcircle1;
    float fcircle =1.0-step(0.55,length(vec2(0.4,0.0)-st));
    float color = mix(Wcircle,1.0-Wcircle,fcircle);


    gl_FragColor = vec4(color,color,color,1.0);
}