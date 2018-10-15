Particle[] HERALD;
public void setup()
{
	size(500,500);
  Particle[] Itsuki = new NormalParticle[100];
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
class NormalParticle
{
	double myX, myY, myA, myS;
  NormalParticle()
  {
    myX = 250;
    myY = 250;
    myA = 2.03;
    myS = 5;
  }
  public void show()
  {
    
  }
  public void move()
  {
    if (250 < myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-3;
     if (250 < myY)
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-3;
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
