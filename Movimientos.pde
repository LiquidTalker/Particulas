
SistemaDeParticula sdps;

void setup() {
  background(255);
  size(640, 640, P3D);
  lights();
  frameRate(60);
  sdps = new SistemaDeParticula(new PVector(width/2, height/2, 128));
}

void draw() {
  sdps.addParticula();
  sdps.mostrar();
}
