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
	NormalParticle()
	{
		nX = Math.random()*401;
		nY = Math.random()*401;
		nTheta = (double)(Math.random()*2*Math.pi)
		nSpeed = (double)(Math.random()*10);
	}
	void move()
	{
		nX = nX + Math.cos((double)(Math.random()*6.28));
		nY = nY + Math.sin((double)(Math.random()*6.28));
	}
	void show()
	{
		ellipse(200,200,5,5);
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