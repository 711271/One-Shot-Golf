public class Hole {
  private PVector pos;
  private final int SIZE = 15;

  public Hole(int x, int y) {
    pos = new PVector(x, y);
  }

  public void show() {
    fill(75, 50, 23);
    circle(pos.x, pos.y, SIZE);
  }
}
