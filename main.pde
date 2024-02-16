int initial = 300;
ArrayList <Particle> particles;

void setup() {
  size(750, 750);
  background(0);
  particles = new ArrayList<Particle>();
  for (int i = 0; i < initial; i++) {
    particles.add(new Particle());
  }
  particles.add(new OddballParticle());
}


void draw() {
  background(0);
  for (Particle current : particles) {
    current.move();
    current.show();
  }
}
