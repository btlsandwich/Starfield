NormalParticle[] Itsuki;
public void setup()
{
  background(0);
	size(500,500);
  Itsuki = new NormalParticle[100];
  for (int i=0; i < 100; i++)
  {
     Itsuki[i] = new NormalParticle();
  }
}
void draw()
{
	for (int i = 0; i < Itsuki.length; i++)
  {
    Itsuki[i].show();
    Itsuki[i].move();
  }
}
void mousePressed()
{
   redraw(); 
}
class NormalParticle
{
	double myX, myY, myA, myS;
  int myC;
  NormalParticle()
  {
    myX = 250;
    myY = 250;
    myA = Math.random()*2*Math.PI;
    myS = 0.1;
    myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void show()
  {
    noStroke();
    fill(myC);
    ellipseMode(CORNERS);
    ellipse((float)myX,(float)myY,5,5);
    //for (int r = 0; r < 100; r++)
    //{
    //  fill(0,0,0);
    //  ellipse(250,250,r+1,r+1);
    //}
  }
  public void move()
  {
    for (int z = 0; z < 100; z++)
    {
      myX = Math.cos(myA)*myS + myX;
      myY = Math.sin(myA)*myS + myY;
    }
    //if (myS < 10)
    //  myS = myS + 0.001;
  }
}
interface Particle
{
	public void show();
  public void move();
}
class OddballParticle implements Particle//uses an interface
{
  OddballParticle()
  {
      
  }
	public void show()
  {
    
  }
  public void move()
  {
    
  }
}
class JumboParticle implements Particle//uses inheritance
{
	public void show()
  {
    
  }
  public void move()
  {
    
  }
}
