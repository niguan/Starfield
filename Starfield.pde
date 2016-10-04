//your code here
NormalParticle[] star;
void setup()
{
	//your code here
	size(400,400);
	star = new NormalParticle[300];
	for (int i =0; i < star.length; i++)
		star [i] = new NormalParticle(200,200);
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
class NormalParticle
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
	}
	void show()
	{
		fill(nColor);
		ellipse((float)nX,(float)nY,25,25);
	}
}
// interface Particle
// {
// 	//your code here
// }
// class OddballParticle //uses an interface
// {
// 	//your code here
// }
// class JumboParticle //uses inheritance
// {
// 	//your code here
// }