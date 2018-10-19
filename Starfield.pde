Particle[] Itsuki;
void setup()
{
  background(0);
	size(700,700);
  Itsuki = new Particle[1000];
  for (int i=0; i < Itsuki.length; i++)
  {
     Itsuki[i] = new NormalParticle();
  }
  for (int j=10; j < 20; j++)
  {
     Itsuki[j] = new OddballParticle(); 
  }
  for (int k=20; k < 30; k++)
  {
     Itsuki[k] = new JumboParticle(); 
  }
}
void draw()
{
  fill(0,10);
  rect(0,0,width,height);
	for (int i = 0; i < Itsuki.length; i++)
  {
    Itsuki[i].show();
    Itsuki[i].move();
  }

}
class NormalParticle implements Particle
{
	double myX, myY, myA, myS;
  int myC;
  NormalParticle()
  {
    myX = myY = 400;
    myA = Math.random()*2*Math.PI;
    myS = Math.random()*10;
    myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void show()
  {
    noStroke();
    fill(myC);
    ellipse((float)myX,(float)myY,5,5);
  }
  public void move()
  {
    myX = Math.cos(myA)*myS + myX;
    myY = Math.sin(myA)*myS + myY;
    myA = myA + 0.01;
  }
}
interface Particle
{
	public void show();
  public void move();
}
class OddballParticle extends NormalParticle//uses an interface
{
	public void show()
  {
    noStroke();
    fill(myC);
    ellipse((float)myX,(float)myY,(int)(Math.random()*15),(int)(Math.random()*15));
  }
  public void move()
  {
    myX = Math.sin(myA)*myS + myX;
    myY = Math.cos(myA)*myS + myY;
    myA = myA - 0.01;
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public void show()
  {
    noStroke();
    fill(myC);
    ellipse((float)myX,(float)myY,15,15);
  }
  public void move()
  {
    myX = Math.sin(myA)*myS + myX;
    myY = Math.cos(myA)*myS + myY;
    myA = myA - 0.01;
  }
}
