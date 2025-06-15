//------------------------- color fondo -------------------------------------------------
color obtenerColorFondo(float mouseX) {
  color azulOscuro = color(10, 30, 80);
  color rojoOscuro = color(80, 10, 10);

  float transición = map(mouseX, width/2, width, 0, 1);
  transición = constrain(transición, 0, 1);

  return lerpColor(azulOscuro, rojoOscuro, transición);
}

//-------- color del grosor ------------------------------------------
color obtenerColorCirculo(float mouseX) {
  color azulClaro = color(100, 150, 255);
  color rojoClaro = color(255, 100, 100);

  float transición = map(mouseX, width/2, width, 0, 1);
  transición = constrain(transición, 0, 1);

  return lerpColor(azulClaro, rojoClaro, transición);
}
