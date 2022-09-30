int total = 0;
int count1 = 0;
int count2 = 0;
int count3 = 0;
int count4 = 0;
int count5 = 0;
int count6 = 0;

void setup()
{
  noLoop();
  size(500,600);
  background(185, 201, 215);
  fill(255,255,255);
  noStroke();
  rect(0, 500, 600, 100);
}
void draw()
{
  total = 0;
  count1 = 0;
  count2 = 0;
  count3 = 0;
  count4 = 0;
  count5 = 0;
  count6 = 0;
  for(int j = 0; j < 8; j++) {
    for(int i = 0; i < 8; i++) {
      noStroke();
      fill(255, (int)(Math.random()*50)+150, (int)(Math.random()*13)+240);
      Die z = new Die(15+i*60, 10+j*60);
      z.show();
      z.roll();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int dNum, dX, dY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    dX= x;
    dY = y;
  }
  void roll()
  {
    dNum = (int)(Math.random()*6)+1;
    fill(0,0,0);
    if (dNum == 1) {
      ellipse(dX + 25, dY + 25,5,5);
      total = total + 1;
      count1 = count1 + 1;
    }
    if (dNum == 2) {
      ellipse(dX + 20, dY + 25, 5, 5);
      ellipse(dX + 30, dY + 25, 5, 5);
      total = total + 2;
      count2 = count2 + 1;
    }
    if (dNum == 3) {
      ellipse(dX + 25, dY + 20, 5, 5);
      ellipse(dX + 20, dY + 30, 5, 5);
      ellipse(dX + 30, dY + 30, 5, 5);
      total = total + 3;
      count3 = count3 + 1;
    }
    if (dNum == 4) {
      ellipse(dX + 20, dY + 20, 5, 5);
      ellipse(dX + 30, dY + 20, 5, 5);
      ellipse(dX + 20, dY + 30, 5, 5);
      ellipse(dX + 30, dY + 30, 5, 5);
      total = total + 4;
      count4 = count4 + 1;
    }
    if (dNum == 5) {
      ellipse(dX + 25, dY + 15, 5, 5);
      ellipse(dX + 20, dY + 25, 5, 5);
      ellipse(dX + 30, dY + 25, 5, 5);
      ellipse(dX + 20, dY + 35, 5, 5);
      ellipse(dX + 30, dY + 35, 5, 5);
      total = total + 5;
      count5 = count5 + 1;
    }
    if (dNum == 6) {
      ellipse(dX + 20, dY + 15, 5, 5);
      ellipse(dX + 30, dY + 15, 5, 5);
      ellipse(dX + 20, dY + 25, 5, 5);
      ellipse(dX + 30, dY + 25, 5, 5);
      ellipse(dX + 20, dY + 35, 5, 5);
      ellipse(dX + 30, dY + 35, 5, 5);
      total = total + 6;
      count6 = count6 + 1;
    }
  }
  void show()
  {
    rect(dX,dY,50,50,15);
    fill(255);
    rect(0, 500, 600, 100);
    fill(0);
    textSize(15);
    textAlign(CENTER);
    text("Total: " + total, 250, 550);
    text("Counts 1|" +  count1 + "  2|" + count2 + "  3|" + count3 + "  4|" + count4 + "  5|" + count5 
    + "  6|" + count6, 250, 570);
  }
}

void keyPressed() {
  redraw();
}
