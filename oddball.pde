class OddballParticle extends Particle 
{
  OddballParticle() {
    size = 15;
    x = width/2;
    y = height/2;
  }

  void move() {
    x+= ((float)Math.random() - 0.5) * speed;
    y+= ((float)Math.random() - 0.5) * speed;
    a = 255;
  }

  void show() {
    fill(r, g, b, a);
    rect(x, y, size, size);
  }
}
