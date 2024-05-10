varying vec2 vUv;

float rectSDF(float x,vec2 st){
    return step(-x,st.x)* step(-x,st.y)* step(st.x,x)* step(st.y,x);
}

void main(){
    vec2 st = vUv*2.0-1.0;
    float box = rectSDF(0.8,st);
    float box1 = rectSDF(0.75,st);
    float box2 = rectSDF(0.65,st);
    float box3 = rectSDF(0.60,st);
    box=box-box1+box2-box3;

    float color=max(abs(st.x),abs(st.y));
    color =1.0-step(0.5,color);

    vec2 size = vec2(0.25,1.0);

    float cross = min(max(abs(st.x/size.x),abs(st.y/size.y)),max(abs(st.x/size.y),abs(st.y/size.x)));
    color*=step(0.5,fract(cross*4.0));
    color*= step(1.0,cross);
    color+=1.0-step(.5,cross);
    box=box+color;
    gl_FragColor = vec4(box,box,box,1.0);
}






// Special One

// float color=max(abs(st.x),abs(st.y));
// color =1.0-step(0.5,color);

// vec2 size = vec2(0.25,1.0);

// float cross = min(max(abs(st.x/size.x),abs(st.y/size.y)),max(abs(st.x/size.y),abs(st.y/size.x)));
// cross*=fract(cross);

// gl_FragColor = vec4(cross,cross,cross,1.0);