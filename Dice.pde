void setup()
{
	noLoop();
	size(400,400);
}
int sum = 0;
void draw()
{
	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	sum = 0;
	for(int x = 30; x < 350; x = x +100)
	{
		
		for(int y = 30; y < 350; y = y +100)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
			sum = sum + bob.value;
		}
	}
	textSize(25);
	text("Sum: "+sum, 150, 315);
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

	void show() {
		
		fill(255);
		rect(myX,myY,50,50,7);
		fill(0);
		
}
	
	void roll(){

	if (value == 1){
		fill(0);
		ellipse(myX+26, myY+25, 7, 7);
	}

	if (value == 2){
		fill(0);
		ellipse(myX+15, myY+15, 7, 7);
		ellipse(myX+35, myY+35, 7, 7);
	}

	if  (value == 3){
		fill(0);
		ellipse(myX+12, myY+12, 7, 7);
		ellipse(myX+26, myY+26, 7, 7);
		ellipse(myX+40, myY+39, 7, 7);
	}

	if (value == 4){
		ellipse(myX+15, myY+15, 7, 7);
		ellipse(myX+15, myY+35, 7, 7);
		ellipse(myX+35, myY+35, 7, 7);
		ellipse(myX+35, myY+15, 7, 7);		
	}

	if (value == 5){
		ellipse(myX+15, myY+15, 7, 7);
		ellipse(myX+15, myY+35, 7, 7);
		ellipse(myX+35, myY+35, 7, 7);
		ellipse(myX+35, myY+15, 7, 7);	
		ellipse(myX+26, myY+25, 7, 7);		
	}

	if (value == 6){
		ellipse(myX+15, myY+12, 7, 7);
		ellipse(myX+15, myY+38, 7, 7);
		ellipse(myX+35, myY+38, 7, 7);
		ellipse(myX+35, myY+12, 7, 7);	
		ellipse(myX+15, myY+25, 7, 7);
		ellipse(myX+35, myY+25, 7, 7);
	}
}
}







