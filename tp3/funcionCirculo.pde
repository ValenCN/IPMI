void circulo (int cantidad, float espacio, float mouseXlimited, float mouseY) {

  for (int i = 0; i < cantidad; i++) {
    float radio = i * espacio;

    strokeWeight(map(i, 0, cantidad, 6, 0.1));
    
    float x = map(i, 0, cantidad, mouseXlimited, 600);
    float y = map(i, 0, cantidad, mouseY, height/2);

    ellipse(x, y, radio * 2, radio * 2);
  }
}
