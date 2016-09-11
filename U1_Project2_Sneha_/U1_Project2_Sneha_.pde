float x1 = 50;
float y1 = 300;
float x2 = 680;
float y2 = 300;
float X2 = 800; 
float Y2 = 300; 


float speedx1 = 15;
float speedx2 = -15;
float speedy1 = 20;
float speedy2 = -20;
float speedX2 = 30;
float speedY2 = -30; 

boolean collision = true;


void setup()
{
  fullScreen(); 
}

void draw()
{
  dist ();
  Boundaries ();

  background (255);
  
  fill (200);
  ellipse (x1,y1,50,50);

  x1 = x1 + speedx1;
  y1 = y1 + speedy1;
  
  fill (230);
  ellipse (x2,y2,50,50);
  x2 = x2 + speedx2;
  y2 = y2 + speedy2;
  
  fill (250);
  ellipse (X2,Y2,50,50);
  X2 = X2 + speedX2;
  Y2 = Y2 + speedY2;

  
  if (dist (x1,y1,x2,y2, X2, Y2) < 50)
  {
    fill(255);
    ellipse(100,100,100,100);
  }
  
}


void Boundaries ()
{
  if (x1 > width)
  {
    speedx1 = -speedx1;
  }
  
  if (x1 <= 0)
  {
    speedx1 = 15;
  }
  
  if (y1 > height)
  {
    speedy1 = -speedy1;
  }
  
  if (y1 <= 0)
  {
    speedy1 = 20;
  }
  
  if (x2 > width)
  {
    speedx2 = -speedx2;
  }
  
  if (x2 < 0)
  {
    speedx2 = 7;
  }
  
  if (y2 > height)
  {
    speedy2 = -speedy2;
  }
  
  if (y2 <= 0)
  {
    speedy2 = 30;
  }
  
  
  if (X2 > width)
  {
    speedX2 = -speedX2;
  }
  
  if (X2 < 0)
  {
    speedX2 = 15;
  }
  
  if (Y2 > height)
  {
    speedY2 = -speedY2;
  }
  
  if (Y2 <= 0)
  {
    speedY2 = 20;
  }
}


void dist ()
{
  if (dist (x1,y1,x2,y2) < 50) //when the distance between the two cirles are 
  {
    speedx1 = -speedx1;
    speedx2 = -speedx2;
  
    
    
    //every time the circles collide - create a new circle


if(dist (x2, y2, X2, Y2) < 50)
{
  speedX2 = -speedX2; 
  speedY2 = -speedY2; 
  
}






  }  
}