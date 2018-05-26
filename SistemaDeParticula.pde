class SistemaDeParticula {

  ArrayList<Particula> particulas;
  PVector origen;

  SistemaDeParticula(PVector origen) {
    this.origen = origen.get();  //El origen será en el centro de la ventana
    particulas = new ArrayList<Particula>();
  }

  public void addParticula() {
    particulas.add(new Particula(origen)); //Añadimos las particulas en el origen anteriormente mencionado
  }

  //Muestra las particulas 
  public void mostrar() {
    for (int i = particulas.size()-1; i >= 0; i--) {
      Particula p = particulas.get(i);
      p.correr(); //Ejecuta el metodo que mostrará las particulas y las que determina su ciclo
      if (p.muerte()) { //Si las particulas cumplen su ciclo, desaparecen 
        particulas.remove(i);
      }
    }
  }
}
