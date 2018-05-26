//Creación de variables
SistemaDeParticula p; 
SistemaDeParticula sdps;

//Añadimos los parametros que iran por defecto
void setup() {
  background(0);
  size(640, 640, P3D); //Posibilidad de 3D
  lights(); //Efectos en caso de querer usar 3D
  frameRate(60);
  sdps = new SistemaDeParticula(new PVector(width/2, height/2)); //Las particulas irán al centro de la ventana
  p = new SistemaDeParticula(new PVector(width/2, height/2)); //Las particulas irán al centro de la ventana
}

void draw() {
  background(0);
  p.addParticula(); //Añadimos infinitas particulas 
  sdps.addParticula();
  p.mostrar(); //Mostramos esas infinitas particulas
  sdps.mostrar();
  
}
