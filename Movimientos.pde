
SistemaDeParticula sdps;

void setup() {
  background(255);
  size(600, 600);
  frameRate(60);
   sdps = new SistemaDeParticula(new PVector(width/2, height/2));
}

void draw() {
    sdps.addParticula();
    sdps.mostrar();  
}
