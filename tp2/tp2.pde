// TP2
// Valentina Carancini - Legajo 118358/8
// Comisión 3

float posY = 0;
PImage img0, img1, img2, img3, img4, img5;
int pantalla = 0;
int frameInicio;
String textoautora = "Mariela Yeregui es artista visual, educadora y académica. Su obra incluye instalaciones, net.art, intervenciones en espacios públicos, videoesculturas y robótica y ha sido sido expuesta en numerosos museos y festivales de arte en América Latina, Estados Unidos y Europa.";
float opacidad = 0;
float opacidadBoton = 0;
boolean aparecer = true;
String textoobra = "Un conjunto de esferas de acrílico, de 25 cm. de diámetro, ruedan libremente en el suelo, por medio de dispositivos mecánicos.";
String textoobra2 = "El encuentro de cualquier obstáculo (espectador, otra esfera o límites físicos) provoca el cambio de dirección y el cambio de luz.";
float posY2 = 480;
float posX=640;
float posXb;
float posXc;
float posXd;
String textoobra3 = "Está esfera, construída en acrílico transparente –lo que hace visible al robot interno-, posee LEDs blancos y un láser de línea rojo.";
String textoobra4 = "La luz de la misma es invasiva y se expande al espacio. El láser proyecta líneas en las paredes.";
String textoobra5 = "Esta esfera representa el elemento diferencial: la minoría que pugna por romper los estándares y la lógica global.";
String textoobra6 = "Proxemia fue presentada por primera vez en el Espacio Fundación Telefónica en 2005, como parte de la exposición de las obras ganadoras del Premio Arte y Nuevas Tecnologías, organizado conjuntamente con el Museo de Arte Moderno de Buenos Aires.";
String textoobra7 = "Sólo una esfera, en cambio, presenta un comportamiento distintivo";
float tamTexto = 6;
float distancia = dist(300, 300, mouseX, mouseY);
PFont miFuente, miFuenteBlack, miFuenteBold;

void setup() {
  size (640, 480);
  frameRate(30);
  img0= loadImage ("Imagen de WhatsApp 2025-05-13 a las 10.31.17_a85ed62a.jpg");
  img1= loadImage ("Imagen de WhatsApp 2025-05-13 a las 10.31.15_02d450ea.jpg");
  img2= loadImage ("Imagen de WhatsApp 2025-05-13 a las 10.31.18_a4af3fa6.jpg");
  img3= loadImage ("Imagen de WhatsApp 2025-05-13 a las 10.31.16_a81015d3.jpg");
  img4= loadImage ("image-1012.png");
  img5= loadImage ("Imagen de WhatsApp 2025-05-13 a las 10.31.17_14e607b1.jpg");
  miFuente = createFont ("PlayfairDisplay-Regular.ttf", 12);
  miFuenteBlack = createFont ("PlayfairDisplay-Black.ttf", 12);
  miFuenteBold = createFont ("PlayfairDisplay-Bold.ttf", 12);
  frameInicio = frameCount;
  posXb = -100;
  posXc = -100;
  posXd = 640 + 200;
}

void draw() {

  //---- pantalla titulo ----------------------------------------------------------------------
  if (pantalla == 0) {
    image(img5, 0, 0, width, height);
    fill (152, 154, 255);
    textFont (miFuenteBold);
    textSize (60);
    textAlign (LEFT);
    text ("Proxemia", 30, 90);
    textFont (miFuenteBlack);
    textSize (70);
    text ("Mariela Yeregui", 30, 200);

    float distancia = dist(80, 400, mouseX, mouseY);
    if ( distancia < 40 ) {
      fill(39, 88, 255);
      ellipse (80, 400, 80, 80);
    } else {
      fill (152, 154, 255);
    }
    ellipse (80, 400, 80, 80);
    fill (0);
    textSize (13);
    textAlign (CENTER);
    textFont (miFuenteBold);
    text ("EMPEZAR", 80, 402);
  }
  //-------------- 1. pantalla autora -------------------------------------------------------------
  else if (pantalla == 1) {
    image(img4, 0, 0, width, height);
    fill (28, 75, 255);
    textAlign (LEFT);
    textFont (miFuenteBlack);
    textSize (70);
    text ("Mariela Yeregui", 30, 95);

    if (aparecer) {
      opacidad = lerp (opacidad, 255, 0.03);
    } else {
      opacidad = lerp (opacidad, 0, 0.03);
    }

    fill(255, opacidad);
    textAlign(LEFT);
    textFont (miFuente);
    textSize (20);
    text (textoautora, 30, 120, 500, 200);

    if (frameCount - frameInicio > 390) {
      pantalla = 2;
      posY = 0;
      frameInicio = frameCount;
    }
    // ----------- 2. Pantalla descripción obra ---------------------------------------------------
  } else if (pantalla == 2) {
    image(img3, 0, 0, width, height);

    posY = posY + 3;
    if (posY > 55) posY=55;
    textAlign(CENTER);
    textSize(15);
    fill(255);
    text(textoobra, 170, posY, 278, 234);

    if (frameCount - frameInicio > 60)
      if (posY2 > 350)
        posY2 -= 3;
    if (posY2 < 350) posY2 = 350;
    textAlign(CENTER);
    textSize(15);
    fill(255);
    text(textoobra2, 170, posY2, 278, 234);

    if (frameCount - frameInicio > 380) {
      pantalla = 3;
      posY = 0;
      frameInicio = frameCount;
    }
  }
  // -------------------- 3. Pantalla descripcion obra 2 -------------------------------------------
  else if (pantalla == 3) {
    image(img1, 0, 0, width, height);
    posX -=5.5;
    textFont (miFuenteBold);
    textSize (30);
    fill (152, 154, 255);
    text (textoobra7, posX, 40);
    if (posX + textWidth(textoobra7) < 0) {
      posX=640;
    }

    if (frameCount - frameInicio > 200) {
      pantalla = 4;
      frameInicio = frameCount;
    }
  }
  // ------------------ 4. Pantalla obra 3 -------------------------------------------------------
  else if (pantalla == 4) {
    image (img2, 0, 0, width, height);

    //----- texto izquierda ---------------
    if (posXb < 40) {
      posXb+=5;
    }
    textFont (miFuente);
    textSize (15);
    textAlign (LEFT);
    fill (255);
    text (textoobra3, posXb, 40, 200, 200);

    if (frameCount - frameInicio > 80) {
      if (posXc < 40) {
        posXc+=5;
      }
      textFont (miFuente);
      textSize (15);
      textAlign (LEFT);
      fill (255);
      text (textoobra4, posXc, 155, 200, 200);
    }

    //---- texto derecha --------------------------

    if (frameCount - frameInicio > 110) {
      if (posXd > 330) {
        posXd -= 5;
      }
      fill (255);
      textFont (miFuenteBold);
      textSize (20);
      textAlign (RIGHT);
      text(textoobra5, posXd, 310, 280, 280);
    }

    if (frameCount - frameInicio > 560) {
      pantalla = 5;
      frameInicio = frameCount;
      opacidad=0;
      aparecer=true;
    }
  }
  // --------------------- 5. Pantalla de cierre --------------------------------------------------
  else if (pantalla == 5) {
    image (img0, 0, 0, width, height);

    // --------- texto-------------------------------------------------
    if (posXb < 30) {
      posXb+=4;
    }
    if (aparecer) {
      opacidad = lerp (opacidad, 255, 0.03);
    } else {
      opacidad = lerp (opacidad, 0, 0.03);
    }
    fill (255, opacidad);
    textFont (miFuente);
    textAlign (LEFT);
    textSize (20);
    text (textoobra6, posXb, 120, 500, 200);

    fill (181, 198, 216);
    textAlign (LEFT);
    textFont (miFuenteBlack);
    textSize (70);
    text ("Proxemia", 30, 85);

    //-------- boton "volver a empezar" -----------------------
    if (frameCount - frameInicio > 30) {
      if (aparecer) {
        opacidadBoton = lerp (opacidadBoton, 255, 0.03);
      } else {
        opacidad = lerp (opacidadBoton, 0, 0.03);
      }
      float distancia = dist(560, 400, mouseX, mouseY);
      if ( distancia < 40 ) {
        fill(39, 88, 255, opacidadBoton);
        ellipse(560, 400, 80, 80);
      } else {
        fill (152, 154, 255, opacidadBoton);
      }
      ellipse(560, 400, 80, 80);

      fill (0, opacidadBoton);
      textSize (10);
      textAlign (CENTER);
      textFont (miFuenteBold);
      text ("VOLVER A", 560, 395);
      text ("EMPEZAR", 560, 410);
    }
  }
  println ("X:");
  println (mouseX);
  println ("Y:");
  println (mouseY);
}

void mousePressed() {

  // ----------empezar-------------------------------------
  if ( pantalla == 0) {
    float distancia = dist(80, 400, mouseX, mouseY);
    if ( distancia < 40 )
      pantalla = 1;
  }
  frameInicio = frameCount;
  // -------volver a empezar-----------------------------------
  if (pantalla == 5) {
    float distancia = dist(560, 400, mouseX, mouseY);
    if ( distancia < 40 ) {
      pantalla = 0;
      frameInicio = frameCount;
      posY = 0;
      posY2 = 480;
      posX = 640;
      posXb = -100;
      posXc = -100;
      posXd = 640 + 200;
      opacidad = 0;
      aparecer = true;
      opacidadBoton = 0;
    }
  }
}

void keyPressed() {

  //---  Saltar pantallas con cualquier tecla --------------------
  if (pantalla >= 1 && pantalla <= 5) {
    pantalla++;
    frameInicio = frameCount;
  }
}
