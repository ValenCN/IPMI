PImage img;
void setup(){
size (800,400);
img = loadImage("Imagen de WhatsApp15.14.10_ba5ca61b.jpg");
background (232,237,237);
image (img, 0,0,400,400);

pushMatrix();
translate (200, 0);

//-----pelo--------------------------
fill (126,52,37);
noStroke();
arc (400,200,290,290,PI,TWO_PI);
rect (255,200,290,290);
fill (98,38,26);
rect (300,200,200,200);

noStroke();
fill(142,86,72);
rect (480,200,30,160);
//reflejos:
stroke (142,86,72);
strokeWeight (3);
noFill();
line (281,131,309,96);
line (292,132,310,109);
line (302,133,310,124);


//---------------orejas-------------------
fill (227,202,174);
noStroke();
arc (310,205,60,50,HALF_PI,3*HALF_PI);
arc (490,205,60,50,-HALF_PI,HALF_PI);

//------cabeza,cuello,cuerpo------------------
//cabeza:
fill (245,225,200); 
noStroke ();
ellipse (400,200,200,200);
ellipse (500,500,300,200);
//cuerpo:
fill (85,14,0);
bezier(230,400,330,300,470,300,570,400);
//cuello:
fill (245,225,200);  
rect (360,267,90,90);
fill (227,202,174);
rect (360,292,90,65);
fill (227,202,174);
bezier(360,357,370,370,430,370,450,357);
fill (193,165,148);
bezier (360,291,380,320,430,320,450,286);
fill (245,225,200); 
bezier (360,291,390,296,420,296,450,286);

//--------------pelo.2--------------------
fill (126,52,37);
bezier (299,179,330,180,388,110,391,100);
bezier (498,181,490,60,530,98,430,104);
bezier (498,181,481,150,456,156,430,104);
bezier (299,179,330,180,388,110,391,100);
bezier (302,182,305,127,350,84,391,100);

noFill();
stroke (126,52,37);
strokeWeight (3);
bezier(408,99,390,142,356,169,346,173);

noStroke();
fill(142,86,72);
rect (480,270,30,160);

//---------nariz------------------------
stroke (227,202,174);
strokeWeight (4);
line (393,234,406,234);
stroke (201,177,150);
//stroke (214,192,166);
strokeWeight (3);
noFill();
arc (400,230,15,5,0,PI);


//-----ojos---------------------------
fill (255);
noStroke();
ellipse (355,195,40,30);
ellipse (445,195,40,30);
fill (220);
arc (355,195,40,30,PI,TWO_PI);
arc (445,195,40,30,PI,TWO_PI);
noFill ();
strokeWeight (2);
stroke (0);
arc (355,195,40,30,PI,TWO_PI);
arc (445,195,40,30,PI,TWO_PI);
line (334,191,330,190);
line (465,192,470,190);

//pupilas:
fill (72,65,57);
noStroke ();
ellipse (358,195,25,23);
ellipse (443,195,25,23);
fill (0);
ellipse (358,195,15,13);
ellipse (443,195,15,13);
fill(255);
ellipse (352,189,5,5);
ellipse (448,189,5,5);


//-----cejas--------------------------
stroke (93,75,66);
strokeWeight (3);
line (340,162,370,160);
line (430,160,460,162);

//--------------boca--------------------
noFill();
stroke (160,102,103);
strokeWeight (2);
bezier(370,250,380,260,420,260,430,250);


stroke (227,202,174);
strokeWeight (4);
line (393,265,406,265);

//--------------anteojos---------------------
stroke(120);
strokeWeight(3);
fill(80,100,120,50);
ellipse(345,200,80,80);
ellipse(455,200,80,80);
line(385, 200, 415, 200);

//-------aritos----------------------
stroke (240);
strokeWeight (2);
line (300,221,300,240);
arc (300,244,5,5,HALF_PI,3*HALF_PI);
strokeWeight (5);
point (300,235);

strokeWeight (2);
line (500,221,500,240);
arc (500,244,5,5,-HALF_PI,HALF_PI);
strokeWeight (5);
point (500,235);
}

void draw(){
println ("X:");
println (mouseX);
println ("Y:");
println (mouseY);
}
