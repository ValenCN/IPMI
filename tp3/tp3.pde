// TP3 Valentina Carancini - COMISIÓN 3
//https://youtu.be/zQRA0i2tFBA

PImage img;
int cantidad = 25;
float espacio = 6;

void setup() {
  size(800, 400);
  img = loadImage("F_51.jpg");
  noFill();
}

void draw() {
  color colorFondo = obtenerColorFondo(mouseX);
  color colorCirculo = obtenerColorCirculo(mouseX);

  //--------- condicional del color----------------------------------
  if (keyPressed) {
    colorFondo = obtenerColorFondo(mouseX);
    colorCirculo = obtenerColorCirculo(mouseX);
  } else {
    colorFondo = color(150, 255, 150);
    colorCirculo = color(255, 0, 0);
  }

  //------ color en fondo, grosor -----------------------
  background(colorFondo);
  stroke(colorCirculo);
  image(img, 0, 0, width/2, height);

  //-------- vairable para limitar el área ----------------------
  float mouseXlimited = constrain(mouseX, width/2, width);

  float Centrox = 600;
  float Centroy = height/2;

  //-------- condicional de mouse -----------------------------------------------------
  if (mousePressed) {
    circulo(cantidad, espacio, mouseXlimited, mouseY);
  } else {
    circulo(cantidad, espacio, Centrox, Centroy);
  }
}
