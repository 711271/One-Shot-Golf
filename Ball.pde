public class Ball {
  private PVector pos, vel, acc;
  private final int SIZE = 10;

  public Ball(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0, 0);
    acc = new PVector(0,0);
  }

  public void show() {
    fill(255, 255, 255);
    circle(pos.x, pos.y, SIZE);
  }
  
 void mouseReleased() {
   vel = new PVector((300 - mouseX)/66, (300 - mouseY)/66); 
  }



  public void move() {
    vel.add(acc);
    pos.add(vel);
    
  }
}
