class Particula {

  PVector velocidad, aceleracion;
  PVector origen;
  float vida;

  Particula(PVector origen) {
    this.origen = origen.get();
    this.velocidad = new PVector(random(-1, 1), random(-2, 0)); //Velocidad aleatoria en X y Y
    this.aceleracion = new PVector(0, 0.05);
    this.vida = 255; //Tiempo que tardara una particula 
  }  

  public void correr() {
    actualizar();
    mostrar();
  }

  public void actualizar() {
    velocidad.add(aceleracion); //Se le añado a la velocidad la aceleracion y el origen o la posicion la velocidad 
    origen.add(velocidad);
    vida -= 1.0; //Se le resta 1 a la vida de la particula para que desaparezca
  }

  //Dibujo
  public void mostrar() {
      stroke(random(255), vida*20, vida*20);
      fill(random(255), vida, vida*20);
      ellipse(origen.x, origen.y, 10, 10);
  }

  //Función que determina la vida de la particula 
  public boolean muerte() {
    if (vida < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
