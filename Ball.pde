public class Ball {
  private PVector pos, vel, acc;
  private final int SIZE = 10;
  private int SCORE = 0;

  public Ball(int x, int y, int a, int b) {
    pos = new PVector(x, y);
    vel = new PVector(a, b);
    acc = new PVector(0, 0);
  }

  public void show() {
    fill(255, 255, 255);
    circle(pos.x, pos.y, SIZE);
  }

  public void move() {
    vel.add(acc);
    pos.add(vel);
    if ((pos.x-SIZE/2>width)||(pos.x+SIZE/2<0)) {
      vel.x=vel.x*-1;
    }
    if ((pos.y+SIZE/2>height)||(pos.y-SIZE/2<0)) {
      vel.y=vel.y*-1;
    }
  }
  public void score(Hole h) {
    double dist = PVector.sub(this.pos, h.pos).mag();
    if (dist <= this.SIZE / 2 + h.SIZE / 2) { //<>//
      h.pos.x = random(0+SIZE,600-SIZE);
      h.pos.y = random(0+SIZE,600-SIZE);
      SCORE++;
      System.out.println(SCORE);
    }
  }
}
