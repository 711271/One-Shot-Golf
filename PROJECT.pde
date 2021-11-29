Ball ball;
Hole hole;
float x = 300;
float y = 300;
public void setup() {
  size(600, 600);
  ellipseMode(RADIUS);
  hole = new Hole((int)random(0, 600), (int)random(0, 600));
  ball = new Ball((int)random(0, 600), (int)random(0, 600));
}

public void draw() {
  background(0, 255, 0);
  PowerLine();
  ball.show();
    hole.show();
  }
  void PowerLine() {
    if (mousePressed == true) {
   //stroke(#FFFFFF);
   line(x, y, mouseX, mouseY);
    }
    x = ball.pos.x;
    y = ball.pos.y;
  }
  
  void mouseReleased() {
    ball.acc.x = (x - mouseX)/66;
    ball.acc.y = (y - mouseY)/66;
  }
