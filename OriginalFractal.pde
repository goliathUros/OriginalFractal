public void setup()
{
	size(600, 600);
	frameRate(5);
}
public void draw()
{
	background(0);
	noFill();
	recurse(width/2, height/2, 550);

	recurse(width/4, height/4, 200);
	recurse(width/4, 3*height/4, 200);
	recurse(3*width/4, height/4, 200);
	recurse(3*width/4, 3*height/4, 200);

	recurse(width/2, height/4, 200);
	recurse(width/2, 3*height/4, 200);
	recurse(width/4, height/2, 200);
	recurse(3*width/4, height/2, 200);
}
public void recurse(int x, int y, double rads)
{
	stroke((int)(Math.random()*255)+100, (int)(Math.random()*255)+100, (int)(Math.random()*255)+100);
	ellipse(x, y, (float)rads, (float)rads);
	if(rads > 10) 
	{
		recurse(x, y, rads/1.3);
	}
}