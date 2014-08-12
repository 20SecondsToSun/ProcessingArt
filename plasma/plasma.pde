float step =400;
int pal []=new int [128];
int[] cls;
 
void setup()
{
  size(800, 400);
  smooth(8);
  
  float s1,s2;    
  int shift = 254;

  for (int i=0; i<128; i++)
  {
    s1=sin(i*PI/25);
    s2=sin(i*PI/50+PI/4);
    pal[i]=color(s1*shift,s2*shift,200+s1*shift);
  }
 
  cls = new int[width*height]; 
  float period = 92.0;
  
  for (int x = 0; x < width; x++)
  {
    for (int y = 0; y < height; y++)
    {
      float a = step + step * sin(x / period);
      float b = step + step * cos(y / period);
      float c = step + step * sin(sqrt(x * x + y * y) / period);
      cls[x+y*width] = (int)(a + b + c) / 4;
    }
  }
}
 
void draw()
{
  loadPixels();
  for (int pixelCount = 0; pixelCount < cls.length; pixelCount++)
  {                   
    pixels[pixelCount] = pal[(cls[pixelCount] + frameCount)&27];
  }
  updatePixels(); 
}

