public class Sand {
 private PVector pos;
 private final int SIZE = 100;
 
 public Sand(int x, int y) {
   pos = new PVector(x,y);
 }
 public void show() {
  fill(220,192,139);
  circle(pos.x, pos.y, SIZE);
 }
}
