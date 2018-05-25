class SistemaDeParticula {

  ArrayList<Particula> particulas;
  PVector origen;

  SistemaDeParticula(PVector origen) {
    this.origen = origen.get();
    particulas = new ArrayList<Particula>();
  }

  public void addParticula() {
    particulas.add(new Particula(origen));
  }

  public void mostrar() {
    for (int i = particulas.size()-1; i >= 0; i--) {
      Particula p = particulas.get(i);
      p.correr();
      if (p.muerte()) {
        particulas.remove(i);
      }
    }
  }
}
