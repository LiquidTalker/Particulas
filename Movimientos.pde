SistemaDeParticula p;
SistemaDeParticula sdps;

void setup() {
  background(0);
  size(640, 640, P3D);
  lights();
  frameRate(60);
  sdps = new SistemaDeParticula(new PVector(width/2, height/2));
  p = new SistemaDeParticula(new PVector(width/2, height/2));
}

void draw() {
  background(0);
  p.addParticula();
  sdps.addParticula();
  p.mostrar();
  sdps.mostrar();
  
}
