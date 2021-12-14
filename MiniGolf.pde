Ball ball;
Hole hole;
Sand sand;
PImage G;
float x;
float y;
float ballSpeed = 50;
int Strokes = 0;
public void setup() {
  size(900, 900);
  G = loadImage("Grass.jpg");
  ellipseMode(RADIUS);
  hole = new Hole((int)random(0, 600), (int)random(0, 600));
  ball = new Ball((int)random(0, 600), (int)random(0, 600), 0, 0);
  sand = new Sand((int)random(100, 500), (int)random(100, 500));
}

public void draw() {
  background(G);
  sand.show();
  PowerLine();
  ball.score(hole);
  ball.slowed(sand);
  ball.show();
  ball.move();
  hole.show();
  
  
  textSize(20);
  fill(255);
  text("Strokes: "+Strokes, 5, 20);
}
void PowerLine() {
  //when you click create a line between ball and the mouse
  if (mousePressed == true) {
    //stroke(#FFFFFF);
    line(x, y, mouseX, mouseY);
  }
  x = ball.pos.x;
  y = ball.pos.y;
}

void mouseReleased() {
  //go int the direction you aimed at (increasing bllspead slows the ball down)
  ball.vel.x = (-mouseX + x)/ballSpeed;
  ball.vel.y = (-mouseY + y)/ballSpeed;
  Strokes++;
  System.out.println(Strokes);
}
