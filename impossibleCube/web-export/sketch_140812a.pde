
float _sideSizeX = 20;
float _sideSizeY = 20;
float _sideSizeZ = 800*0.2;
float space = 100;
float sdvigX = 40;

void setup() {
  size(800, 800, P3D);
  ortho();
  smooth(8);
}
 
void draw() {
  background(255);
  float sideLength = 800*0.2;
  translate(width/2, height/2);
  rotateX((mouseX-width/2)*0.01);
  rotateY((mouseY-height/2)*0.01);

  noFill();
  box(sideLength, sideLength, sideLength);
  
  noStroke();
 
  fill(#FFCC00);
  drawBox(-sideLength*0.5, -sideLength*0.5, 0, 0, 0, 0);
  drawBox(sideLength*0.5, -sideLength*0.5, 0, 0, 0, 0);
  drawBox(-sideLength*0.5, sideLength*0.5, 0, 0, 0, 0);
  drawBox(sideLength*0.5, sideLength*0.5, 0, 0, 0, 0);
  
  
 // fill(#FF0000);
  drawBox(-sideLength*0.5, -sideLength*0.5, -space*0.5- _sideSizeX*0.5, 0, 90, 0, _sideSizeX, _sideSizeY, 800*0.2 - space );
  //fill(#FFCC00);
   
  drawBox(-sideLength*0.5, sideLength*0.5, 0, 0, 90, 0); 
  drawBox(-sideLength*0.5, -sideLength*0.5, 0, 0, -90, 0);
  
  
  drawBox(-sideLength*0.5, sideLength*0.5, 0, 0, -90, 0);
 // fill(#FF0000);
  drawBox(-sideLength*0.5+sdvigX, sideLength*0.5+_sideSizeX, space*0.5 -_sideSizeX*0.5 + (800*0.2 - space ), 0, -90, 0, _sideSizeX, _sideSizeY, space );
 // fill(#FFCC00);
   
  
  drawBox(-sideLength*0.5, -sideLength*0.5, 0, 90, 0, 0);
  drawBox(-sideLength*0.5, sideLength*0.5, 0, 90, 0, 0);
  
   drawBox(sideLength*0.5, -sideLength*0.5, 0, 90, 0, 0);
  drawBox(sideLength*0.5, sideLength*0.5, 0, 90, 0, 0);
  
  //drawBox(-sideLength*0.5, -sideLength*0.5, sideLength*0.5, 0, 90, 0);
 // drawBox(-sideLength*0.5, sideLength*0.5, sideLength*0.5, 0, 90, 0);
 
}

void drawBox(float x,float y, float z, float rotX, float rotY, float rotZ )
{
  pushMatrix();
  
  rotateX(rotX*3.1415/180);
  rotateY(rotY*3.1415/180);
  rotateZ(rotZ*3.1415/180);
  
  translate(x, y, z);
  
  box(_sideSizeX, _sideSizeY,  _sideSizeZ + _sideSizeX*0.5); 
  
  popMatrix();
}

void drawBox(float x,float y, float z, float rotX, float rotY, float rotZ , float sizeX  , float sizeY , float sizeZ)
{
   pushMatrix();
  
  rotateX(rotX*3.1415/180);
  rotateY(rotY*3.1415/180);
  rotateZ(rotZ*3.1415/180);
  
  translate(x, y, z);
  
  box(sizeX, sizeY,  sizeZ); 
  
  popMatrix();
}


