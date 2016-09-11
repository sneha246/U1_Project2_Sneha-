// x and y coordinates for ellipses 
float x1 = 200;
float y1 = 300;
float x2 = 680;
float y2 = 300;
float X2 = 800; 
float Y2 = 300; 

// x and y speeds for ellipses 
float speedx1 = 15;
float speedx2 = -15;
float speedy1 = 20;
float speedy2 = -20;
float speedX2 = 30;
float speedY2 = -30; 

boolean collision = true; //true or false statement

boolean background1 = false; 
boolean background2 = false; 
boolean background3 = false; 

boolean ellipse1 = false; 
boolean ellipse2 = false; 
boolean ellipse3 = false; 

boolean move1 = false; 
boolean move2 = false; 
boolean move3 = false; 



void setup()
{
  fullScreen(); //screen size 
}

void draw()
{
  dist ();
  Boundaries ();
  background (0, 0, 0); // color of background  
  
  fill (255); // color of first circle 
  ellipse (x1,y1,0,50);

  // speed of first circle 
  x1 = x1 + speedx1;
  y1 = y1 + speedy1;
  
  fill (255); //color of second circle/line
  ellipse (x2,y2,0,100);
  
 // speed of second circle 
  x2 = x2 + speedx2;
  y2 = y2 + speedy2;
  
  fill (255); //color of third circle 
  ellipse (X2,Y2,0,75);
  
  // speed of third circle 
  X2 = X2 + speedX2;
  Y2 = Y2 + speedY2;

  
  if (dist (x1,y1,x2,y2, X2, Y2) < 50) // when first and second ellipse collide 
  {
    background1 = false; 
    ellipse1 = true; 
    move1 = true; 
    
  }
  
  if (ellipse1==true) 
  { 
    fill (0, 200, 0); 
    ellipse(x1, x2, 0, 60); 
    fill (0, 254, 86); 
    ellipse(y1, y2, 0, 50); 
  }
 
    if (background1==true)
    {
      fill(0, 255, 0); 
      ellipse(random(width),random(height),random(30,50),random(30,50));
      fill(155);
      ellipse(random(width),random(height),random(30,50),random(30,50));
    }
    
    if(move1 == true)
    {
    x2 = x2 + speedx2;
    y2 = y2 + speedy2;
    
    X2 = X2 + speedX2; 
    Y2 = Y2 + speedY2;  
    }
    
    if (dist (x1,y1,x2,y2) < 50)
    {
      background2 = true; 
      ellipse2 = true; 
      move2 = true; 
    }
    
    if (ellipse2==true)
  {
    fill (0,141,43);
    ellipse(x2,y2,3,50);
    fill (96,202,0);
    ellipse(x1,y1,3,65);
    
  }
    if (background2==true)
  {

    fill(245,72,178);
    ellipse(random(width),random(height),random(20, 30),random(40, 50));
    fill(54,205,245);
    ellipse(random(width),random(height),random(80, 90),random(80, 90));
  }
  
    if (ellipse3==true)
  {
    fill (245,171,70);
    ellipse(X2,Y2,0,50);
    fill (255, 0, 255);
    ellipse(X2,Y2,0,50);
    
  }
    if (background3==true)
  {

    fill(252, 66, 252);
    ellipse(random(width),random(height),random(5,10),random(5,10));
    fill(54,205,245);
    ellipse(random(width),random(height),random(5,10),random(5,10));
 
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
    speedx1 = 30;
  }
  
  if (y1 > height)
  {
    speedy1 = -speedy1;
  }
  
  if (y1 <= 0)
  {
    speedy1 = 40;
  }
  
  if (x2 > width)
  {
    speedx2 = -speedx2;
  }
  
  if (x2 < 0)
  {
    speedx2 = 20;
  }
  
  if (y2 > height)
  {
    speedy2 = -speedy2;
  }
  
  if (y2 <= 0)
  {
    speedy2 = 15;
  }
  
  
  if (X2 > width)
  {
    speedX2 = -speedX2;
  }
  
  if (X2 < 0)
  {
    speedX2 = 20;
  }
  
  if (Y2 > height)
  {
    speedY2 = -speedY2;
  }
  
  if (Y2 <= 0)
  {
    speedY2 = 25;
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
  speedy1 = -speedy1; 
  speedy2 = -speedy2; 
 
 
  if(dist (X2, Y2, x1, x2) < 50)
{
  speedX2 = -speedy1; 
  speedY2 = -speedy2; 
}






  }  
}}