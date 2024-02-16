class Particle
{
  float x, y, r, g, b, a, angle;
  double speed;
  int size;

  Particle() {
    size = 5;
    angle = (float)(Math.random() * Math.PI * 2);
    float offset = (float)Math.random() * width;
    x = width/2 + cos(angle) * offset;
    y = height/2 + sin(angle) * offset;
    speed = Math.random() * 10;
    r = (float)Math.random() * 255;
    g = (float)Math.random() * 255;
    b = (float)Math.random() * 255;
  }

  void move() {
    x+=cos(angle) * speed;
    y+=sin(angle) * speed;

    if (x > width || x < 0 || y < 0 || y > height) {
      x = width/2;
      y = height/2;
      speed = Math.random() * 10;
      angle = (float)(Math.random() * Math.PI * 2);
    }
  }

  void show() {
    float progress = dist(x, y, width/2, height/2);
    float max = height/2;
    a = map(progress, 0, max, 0, 255);

    fill(r, g, b, a);
    ellipse(x, y, size, size);
  }
}
