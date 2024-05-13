varying vec2 vUv;

void main(){
    vec2 st =vUv*2.0-1.0; 
    float color =step(0.0+st.y*-1.0,st.x);

    float hcircle= length((st-vec2(0.1,0.0)));
    float hcircle1= length((st+vec2(0.1,0.0)));
    float max= max(hcircle,hcircle1);
    float circle = step(0.5,max);

    float mix = mix(circle,1.0-circle,color);

        gl_FragColor = vec4(mix,mix,mix,1.0);
}