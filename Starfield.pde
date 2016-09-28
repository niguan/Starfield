//your code here
NormalParticle bob;
NormalParticle[] particles;
void setup()
{
	//your code here
	size(400,400);
	bob = new NormalParticle();
	particles = new NormalParticle[300];
	for (int i =0; i < particles.length; i++)
		particles [i] = new NormalParticle();
}
void draw()
{
	//your code here
	background(0);
	for (int i = 0; i < particles.length; i++)
	{
		particles[i].move();
		particles[i].show();
	}
}
class NormalParticle
{
	//your code here
	double nX,nY,nColor,nTheta,nSpeed;
	Particle()
	{
		nX = Math.random()*401;
		nY = Math.random()*401;
		//nTheta = 
		//nSpeed = ;
	}
	void move()
	{
		x = x + Math.cos((double)(Math.random()*6.28));
		y = y + Math.sin((double)(Math.random()*6.28));
	}
	void show()
	{
		ellipse(nX,nY,5,5);
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