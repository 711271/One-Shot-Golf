Ball[] balls = new Ball[50];
int ballsHit = 0;
Hole hole;

public void setup() {
  size(1000, 800);
  noStroke();
  ellipseMode(RADIUS);
  hole = new Hole((int)random(100, 900), (int)random(100, 700));
}

public void draw() {
  background(0, 255, 0);
   for (int i = 0; i < balls.length; i++) {
     if (balls[i] != null){
  balls[i].show(); // needs to show before mouse pressed
     }
   }
  if (mousePressed)hitBall();
    hole.show();
  for (int i = 0; i < balls.length; i++) {
    if (balls[i] != null) {
    balls[i].move();
    }
  }
}

public void hitBall() {
  Ball ball = new Ball(new PVector(mouseX, mouseY));
  balls[ballsHit] = ball;
  ballsHit++;
}
