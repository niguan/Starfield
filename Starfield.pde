//your code here
Particle[] star;
void setup()
{
	//your code here
	size(700,700);
	star = new Particle[300];
	for (int i =0; i < star.length; i++)
		star [i] = new NormalParticle(300,300);
	star [50] = new OddballParticle(300,300);
	//star[1] = new JumboParticle();
}
void draw()
{
	//your code here
	background(0);
	for (int i = 0; i < star.length; i++)
	{
		star[i].move();
		star[i].show();
	}
}
class NormalParticle implements Particle
{
	//your code here
	int nColor;
	double nX,nY,dTheta,dSpeed;
	NormalParticle(double x, double y)
	{
		nX = x;
		nY = y;
		nColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		dTheta = (Math.random()*2*Math.PI);
		dSpeed = Math.random() * 10;
	}
	void move()
	{
		nX = nX + (dSpeed * Math.cos(dTheta));
		nY = nY + (dSpeed * Math.sin(dTheta));
	}
	void show()
	{
		fill(nColor);
		ellipse((float)nX,(float)nY,25,25);
	}
}
 interface Particle
 {
  	//your code here
	public void move();
	public void show();
 } 
 class OddballParticle implements Particle
 {
 	//your code here
 	double oddX,oddY,oddTheta,oddSpeed;
 	OddballParticle(double x,double y)
 	{
 		oddX = x;
 		oddY = y;
 		oddTheta= (Math.random()*2*Math.PI);
 		oddSpeed= Math.random() * 8;
 	}
	public void move()
	{
		oddX = oddX + (oddSpeed * Math.cos(oddTheta));
		oddY = oddY + (oddSpeed * Math.sin(oddTheta));
	}
	public void show()
	{
		fill(255,0,0);
		ellipse((float)oddX,(float)oddY,22,50);
	}
 }
 // class JumboParticle extends NormalParticle
 // {
 // 	//your code here
 // 	JUmboParicle(double x,double y)
 // 	void show()
 // 	{
 // 		fill(0,255,0);
 // 		ellipse((float)nX,(float)nY,50,50);
 // 	}
 // }