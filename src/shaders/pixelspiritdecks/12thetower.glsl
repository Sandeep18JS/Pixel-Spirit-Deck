varying vec2 vUv;


void main(){
    vec2 st = vUv*2.0-1.0;
    float rect = step(-0.3,st.x)* step(-0.6,st.y)* step(st.x,0.3)* step(st.y,0.6);

    float angle = radians(45.0); 

    float c = cos(angle);
    float s = sin(angle);
    mat2 rotation = mat2(c, -s, s, c);
    st = rotation * st;

    float line =1.0-step(0.2, abs((st.x / 0.1)));


    float color = mix(rect,1.0-rect,line);

    gl_FragColor = vec4(color, color, color, 1.0);
}






