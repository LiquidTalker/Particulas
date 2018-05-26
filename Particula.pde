class Particula {

  PVector velocidad, aceleracion;
  PVector origen;
  float vida;

  Particula(PVector origen) {
    this.origen = origen.get();
    this.velocidad = new PVector(random(-1, 1), random(-2, 0));
    this.aceleracion = new PVector(0, 0.05);
    this.vida = 255;
  }  

  public void correr() {
    actualizar();
    mostrar();
  }

  public void actualizar() {
    velocidad.add(aceleracion);
    origen.add(velocidad);
    vida -= 1.0;
  }

  public void mostrar() {
      stroke(random(255), vida*20, vida*20);
      fill(random(255), vida, vida*20);
      ellipse(origen.x, origen.y, 10, 10);
  }

  public boolean muerte() {
    if (vida < 0.0) {
      return true;
    } else {
      return false;
    }
  }

  /*stroke(random(255), vida, vida);
   fill(random(255), vida*20, vida*20);
   triangle(origen.x, origen.y, origen.z, 8, 8, 8);*/

  //rect(origen.x, origen.y, 10, 10);
  //triangle(origen.x, origen.y, origen.z, 8, 8, 8);

  /*
   Genera una piramide a partir del origen de las particulas
   translate(width/2, height/2, origen.z);
   stroke(0);
   rotateX(PI/2);
   rotateZ(-PI/6);
   noFill();
   
   beginShape();
   vertex(-origen.x, -origen.y, -origen.z);
   vertex( origen.x, -origen.y, -origen.z);
   vertex(   0, 0, origen.z);
   
   vertex( origen.x, -origen.y, -origen.z);
   vertex( origen.x, origen.y, -origen.z);
   vertex(   0, 0, origen.z);
   
   vertex( origen.x, origen.y, -origen.z);
   vertex(-origen.x, origen.y, -origen.z);
   vertex(   0, 0, origen.z);
   
   vertex(-origen.x, origen.y, -origen.z);
   vertex(-origen.x, -origen.y, -origen.z);
   vertex(   0, 0, origen.z);
   endShape();*/

  /*line(origen.x, origen.y, vida/2, vida/2);
   line(-origen.x, -origen.y, vida, vida);
   line(origen.x, -origen.y, vida/2, vida/2);
   line(-origen.x, origen.y, vida, vida);*/
}
