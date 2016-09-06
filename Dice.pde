void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	for(int x = 30; x < 400; x = x +50){
	Die bob = new Die(x,150);
	bob.roll();
	bob.show();
	}
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int value;
	int myX;
	int myY;
	
	Die(int x, int y) //constructor
	{
		value = (int)(Math.random()*6)+1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50,10);
		fill(0);
		text(""+value,myX+30,myY+30);
	}
}
