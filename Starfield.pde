Particle[] Itsuki;
void setup()
{
  background(0);
	size(800,800);
  Itsuki = new Particle[1000];
  //Kaede[] = new OddballParticle();
  //Tetsuya[] = new JumboParticle();
  for (int i=0; i < Itsuki.length; i++)
  {
     Itsuki[i] = new NormalParticle();
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
    ellipse((float)myX,(float)myY,6,6);
    //for (int r = 0; r < 100; r++)
    //{
    //  ellipse(250,250,r+1,r+1);
    //}
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
class OddballParticle implements Particle//uses an interface
{
  double myX, myY, myA, myS;
  int myC;
	public void show()
  {
    
  }
  public void move()
  {
    myX = Math.sin(myA)*myS + myX;
    myY = Math.cos(myA)*myS + myY;
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
