float _sideSizeX = 20;
float _sideSizeY = 20;
float _sideSizeZ = 160;
float space = 100;
float sdvigX = 40;
float sideLength = 160;

void setup() {
  size(800, 800, P3D);
  ortho();
  smooth(8);
  noStroke();
}
 
void draw() {
   background(0);
   pointLight(51, 102, 126, 100, 100, 900);
  
   translate(width*0.5, height*0.5);
   rotateX((mouseX-width*0.5)*0.01);
   rotateY((mouseY-height*0.5)*0.01);
  // rotateX(-0.84);//
  // rotateY(-0.72999996);//
  
   fill(#FFCC00);
   drawBox(-sideLength*0.5, -sideLength*0.5, 0, 0, 0, 0);
   drawBox(sideLength*0.5, -sideLength*0.5, 0, 0, 0, 0);
   drawBox(-sideLength*0.5, sideLength*0.5, 0, 0, 0, 0);
   drawBox(sideLength*0.5, sideLength*0.5, 0, 0, 0, 0);
  
   float x1 =-0.5*(sideLength+ _sideSizeX);
   float y1 = (sideLength- _sideSizeX)*0.5;
   pushMatrix();
    rotateX(DEEGRE_TO_GRAD(90));
    rotateY(DEEGRE_TO_GRAD(0));
    rotateZ(DEEGRE_TO_GRAD(0));
    translate(0,0, sideLength*0.5+_sideSizeX*0.5);
    beginShape();    
        vertex(x1 , y1, 0) ;
        vertex( x1+ sideLength - space, y1, 0);  
        vertex( x1+ sideLength - space, y1+_sideSizeY, 0);     
        vertex(x1,  y1+_sideSizeY, 0);
    endShape(CLOSE);
  
    beginShape();    
      vertex(x1,  y1+_sideSizeY, 0);
      vertex( x1+ sideLength - space, y1+_sideSizeY, 0); 
      vertex( x1+ sideLength - space, y1+_sideSizeY, -_sideSizeY);  
      vertex(x1,  y1+_sideSizeY, -_sideSizeY);     
    endShape(CLOSE);

   popMatrix();    
   
   drawBox(-sideLength*0.5, sideLength*0.5, 0, 0, 90, 0); 
   drawBox(-sideLength*0.5, -sideLength*0.5, 0, 0, -90, 0);  
   drawBox(-sideLength*0.5, sideLength*0.5, 0, 0, -90, 0);
   drawBox(-sideLength*0.5+sdvigX, sideLength*0.5+_sideSizeX, space*0.5 -_sideSizeX-2.3 + (sideLength - space ), 0, -90, 0, _sideSizeX, _sideSizeY, space+2 );

   drawBox(-sideLength*0.5, -sideLength*0.5, 0, 90, 0, 0);
   drawBox(-sideLength*0.5, sideLength*0.5, 0, 90, 0, 0);
  
   drawBox(sideLength*0.5, -sideLength*0.5, 0, 90, 0, 0);
   drawBox(sideLength*0.5, sideLength*0.5, 0, 90, 0, 0);
}

void drawBox(float x,float y, float z, float rotX, float rotY, float rotZ ){  
  drawBox(x, y, z, rotX, rotY, rotZ,_sideSizeX, _sideSizeY,  _sideSizeZ + _sideSizeX); 
}

void drawBox(float x,float y, float z, float rotX, float rotY, float rotZ , float sizeX  , float sizeY , float sizeZ){  
  pushMatrix();
  
  rotateX(DEEGRE_TO_GRAD(rotX));
  rotateY(DEEGRE_TO_GRAD(rotY));
  rotateZ(DEEGRE_TO_GRAD(rotZ));
  
  translate(x, y, z);
  
  box(sizeX, sizeY,  sizeZ); 
  
  popMatrix();
}

float DEEGRE_TO_GRAD(float degree){  
  return degree*3.1415/180;
}

