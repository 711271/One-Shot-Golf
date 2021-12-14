public class Sand {
 private PVector pos;
 public PImage S;
 private final int SIZE = 250;
 
 public Sand(int x, int y) {
   pos = new PVector(x,y);
   S = loadImage("Sand.png");
 }
 public void show() {
  fill(220,192,139);
  imageMode(CENTER);
 // circle(pos.x, pos.y, SIZE);
  image(S, pos.x, pos.y, SIZE, SIZE);
 }
}
