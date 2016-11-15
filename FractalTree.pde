public class FractalTree {
  int counter;
  float angle;

  FractalTree() {
    counter = 0;
  }

  private void drawTree(float x1, float y1, float theta, int angleChange, int depth) {
    angle = theta;
    if (depth == 0) 
      return;

    float x2 = x1 + cos(radians(theta)) * depth * 8;
    float y2 = y1 + sin(radians(theta)) * depth * 8;
    line(x1, y1, x2, y2);

    drawTree(x2, y2, theta - angleChange, angleChange, depth - 1);
    drawTree(x2, y2, theta + angleChange, angleChange, depth - 1);
  }

  public void trunk() {
    drawTree(width * 0.5f, height, -90, counter + 9, counter);
    if (counter < 11 && frameCount % 200 == 0)
      counter ++;
  }
}