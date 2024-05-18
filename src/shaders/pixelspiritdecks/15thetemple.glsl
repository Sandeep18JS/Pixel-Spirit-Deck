varying vec2 vUv;
float triSDF(vec2 st) { 
    return max(abs(st.x)*0.8+st.y*0.5,-st.y*0.5);
}
void main(){
    vec2 st = vUv*4.0-2.0;
    st=vec2(st.x,st.y-0.6);
    vec2 ts =vec2(st.x,(-.8-st.y));
    float color =1.0-step(.8,triSDF(ts));
    color -=1.0-step(.4,triSDF(st));

    gl_FragColor = vec4(color,color,color,1.0);
}