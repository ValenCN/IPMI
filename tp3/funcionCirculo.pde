void circulo(int cantidad, float espacio, float mouseXlimited, float mouseY) {

  //------------------- calcular cantidad y espacio --------------------------
  for (int i = 0; i < cantidad; i++) {
    float grosor = 0;
    float radio = i * espacio;

    //---------------- calcular grosor --------------------------------------
    for (int j = 0; j < cantidad; j++) {
      float cantidadGrosor = map(i + j, 0, cantidad, 6, 0.1);
      if (cantidadGrosor > grosor) {
        grosor = cantidadGrosor;
      }
    }

    float x = map(i, 0, cantidad, mouseXlimited, 600);
    float y = map(i, 0, cantidad, mouseY, height/2);
    
    strokeWeight(grosor);
    ellipse(x, y, radio * 2, radio * 2);
  }
}
