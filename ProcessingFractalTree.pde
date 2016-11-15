void setup() {
  fullScreen(); 
  tree = new FractalTree();
  stroke(255);
}

FractalTree tree;

void draw() {
  background(0);

  tree.trunk();
}