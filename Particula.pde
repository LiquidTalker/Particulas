class Particula {

  PVector velocidad, aceleracion;
  PVector origen;
  float vida;

  Particula(PVector origen) {
    this.origen = origen.get();
    this.velocidad = new PVector(random(-1, 1), random(-2, 0));
    this.aceleracion = new PVector(0, 0, 0);
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
    stroke(random(255), vida, vida);
    fill(random(255), vida*20, vida*20);
    ellipse(origen.x, origen.y, 8, 8);
  }

  public boolean muerte() {
    if (vida < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
