public class Ball {
  private PVector pos, vel, acc;
  private final int SIZE = 10;

  public Ball(PVector pos) {
    this.pos = pos;
    vel = new PVector(10, 0);
    acc = new PVector(0, 0);
  }

  public void show() {
    fill(255, 255, 255);
    circle(pos.x, pos.y, SIZE);
  }

  public void move() {
    vel.add(acc);
    pos.add(vel);
  }
}
