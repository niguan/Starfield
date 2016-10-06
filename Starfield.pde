//your code here
Particle[] star;
void setup()
{
	//your code here
	size(700,700);
	star = new Particle[400];
	for (int i =0; i < star.length; i++)
		star [i] = new NormalParticle(350,350);
	star [50] = new OddballParticle(300,300);
	//star[1] = new JumboParticle(300,300);
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
		nColor = color(255);
		dTheta = (Math.random()*2*Math.PI);
		dSpeed = Math.random() * 10;
	}
	void move()
	{
		nX = nX + (dSpeed * Math.cos(dTheta));
		nY = nY + (dSpeed * Math.sin(dTheta));
		if ((nX < 0 || nX > 700) || (nY < 0 || nY > 700))
		{
			nX=350;
			nY=350;
			dSpeed = Math.random() * 10;
		}
		if (mousePressed)
		{
			dSpeed = ((Math.random()*7)+15);
		}
		else
		{
			dSpeed = Math.random() * 10;
		}
	}
	void show()
	{
		fill(nColor);
		strokeWeight(1);
		ellipse((float)nX,(float)nY,5,5);
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
 	int oddColor;
 	double oddX,oddY,oddTheta,oddSpeed;
 	OddballParticle(double x,double y)
 	{
 		oddX = x;
 		oddY = y;
 		oddColor = color((int)((Math.random()*33)+170),(int)((Math.random()*15)+85),(int)((Math.random()*10) + 50));
 		oddTheta= (Math.random()*2*Math.PI);
 		oddSpeed= Math.random() * 8;
 	}
	public void move()
	{
		oddX = oddX + (oddSpeed * Math.cos(oddTheta));
		oddY = oddY + (oddSpeed * Math.sin(oddTheta));
		if ((oddX < 0 || oddX > 700) || (oddY < 0 || oddY > 700))
		{
			oddX=350;
			oddY=350;
			oddSpeed = ((Math.random() * 7)+3); 
			oddTheta= (Math.random()*2*Math.PI);
			oddSpeed= Math.random() * 8;
		}
		if (mousePressed)
		{
			oddSpeed = ((Math.random()*7)+18);
		}
		else
		{
			oddSpeed= Math.random() * 8;	
		}
	}
	public void show()
	{
		fill(oddColor);
		ellipse((float)oddX,(float)oddY,25,25);
	}
 }
 // class JumboParticle extends NormalParticle
 // {
 // 	//your code here
 // 	double jumboX,jumboY;
 // 	JumboParticle(double x,double y)
 // 	{
 // 		jumboX = x;
 // 		jumboY = y;
 // 	}
 // 	void show()
 // 	{
 // 		fill(0,255,0);
 // 		rect((float)nX,(float)nY,50,50);
 // 	}
 // }