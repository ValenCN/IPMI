void setup(){
  size (800,400);
background (232,237,237);

//-----pelo--------------------------
fill (121,62,62);
noStroke();
arc (400,200,300,300,PI,TWO_PI);
rect (250,200,300,300);

//------cabeza,cuello------------------
fill (245,225,200); 
noStroke ();
ellipse (400,200,200,200);
rect (360,267,90,90);

//------boca----------------------------
fill (198,132,132);
arc (400,245,60,50,0,PI);

//---------nariz------------------------
stroke (214,192,166);
strokeWeight (2);
line (395,225,405,225);

//-----ojos---------------------------
fill (255);
ellipse (355,195,40,30);
ellipse (445,195,40,30);


//-----cejas--------------------------
stroke (93,75,66);
strokeWeight (3);
line (340,160,370,160);
line (430,160,460,160);
}

void draw(){
println ("X:");
println (mouseX);
println ("Y:");
println (mouseY);
}
