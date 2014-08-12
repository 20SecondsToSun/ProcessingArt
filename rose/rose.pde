float a=0;
void setup()
{ 
    smooth(8);
    size(600,600,P3D);
    stroke(179,17,91,20);   
    strokeWeight(6); 
    background(1);
    
}

void draw()
{ 
  fill(noise(frameCount)*30+40, 25, true?250:25, random(90, 120));
  stroke(noise(0, (frameCount)/200.0)*255, 5, true?24:250, 15);
  translate(300,300);  
  ambientLight(0,0,0.65);
  rotateY(cos(a)); 
  rotateX(sin(a));
  
  box(200-a*10);  
  a+=0.02;

  if (a>20) noLoop();  
}
