varying vec2 vUv;

float triSDF(vec2 st){
    return max(abs(st.x)+st.y*0.5,-st.y);
}
float rhombSDF(vec2 st){
    return max(triSDF(st),triSDF(vec2(st.x,1.0-st.y)));
}

void main(){
        vec2 st = vUv*2.0-1.0;
float color =1.0- step(0.4,rhombSDF(st));
gl_FragColor= vec4(color,color,color,1.0);
}