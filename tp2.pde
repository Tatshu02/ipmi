//Florencia Moran
//legajo 91344/4


PImage naviel;
PImage rashta;
PImage henri;
PImage fondo;
PImage sovieshu;


float f1, r, g;
String estado;
int c;


int y, y2, y3, y4, y5;
void setup() {
  size (640, 480);

  y=500;
  y2=500;
  y3=500;
  y4=500;
  y5=500;
  r=255;
  //g=255;
  f1=255;
  estado= "menu";
  //textAlign(CENTER,CENTER);
 
  naviel= loadImage("naviel.jpg");
  rashta= loadImage("rashta.jpeg");
 
  fondo = loadImage("imagen1.jpeg");
  henri= loadImage("henri.jpg");
  sovieshu= loadImage("sovieshu.jpg");
}
void draw() {
  f1-=3;


  if (estado.equals ("menu")) {
    pushStyle();



    image(fondo, 0, 0, 640, 480);
    fill(151, 192, 210);

    fill(0);
    circle(width/2, height/4*3, 50);
    fill(250);
    text("play", 308, height/4*3);





    popStyle();
  }
  //pantalla 1
  if (estado.equals ("p1")) {
    pushStyle();

    println();
    background(0);
   




    textSize(20);
    fill(250);

    text("La emperatriz divorciada es una novela web surcoreana escrita por Alpha\n Tart. La historia sigue a Navier Ellie Trovi, la emperatriz del Imperio\n Oriental, que es inesperadamente divorciada por su esposo,\n el emperador Sovieshu, para casarse con su amante, Rashta.\n Navier, una mujer fuerte e inteligente, no acepta la humillación y decide\n convertirse en la emperatriz de un país vecino casándose con el rey\n Heinley. La trama sigue su viaje de recuperación, venganza y\n autodescubrimiento mientras navega por las traiciones y alianzas\n en un mundo lleno de intriga política y romance.", 20, y);
    //tiempo
   
    if ( y >= 80 ) {
      y--;
    }
    c++;
    if (c >= 600) {
      estado= "p2";
      y=500;
      c= 0;
      popStyle();
    }
  }
  //pantalla protagonistas
  if (estado.equals ("p2")) {
    pushStyle();
    println();
    background(0, 0, 250);
    image(naviel, 0, 0, 640, 480);
    textSize(20);
    text("Navier Ellie Trovi es una mujer inteligente y astuta, capaz de manejar\n las complejidades de la política y las intrigas de la corte. Su\n fortaleza y resiliencia brillan a través de las traiciones y desafíos\n que enfrenta, siempre manteniendo una actitud de elegancia y dignidad,\n incluso en las situaciones más difíciles. Justa y compasiva,\n Navier demuestra lealtad hacia aquellos que merecen su apoyo, \ncombinando firmeza con empatía. Determinada y decidida, trabaja\n incansablemente para alcanzar sus objetivos, reflejando un \nfuerte sentido de deber y responsabilidad hacia su país y su gente.", 23, y2);
fill(0);
    if ( y2 >= 80 ) {
      y2--;
    }
    c++;
  }
  if (c >= 600) {
    estado= "p3";
    y2=500;
    c= 0;

    popStyle();
  }
  //pantalla 3
  if (estado.equals ("p3")) {
    pushStyle();
    image(rashta, 0, 0, 640, 480);
    textSize(20);
    fill(0);
    text("Rashta, la infame concubina en La Emperatriz Divorciada, es un personaje\n que despierta fuertes emociones. Su historia está plagada de\n errores y decisiones cuestionables. Permíteme resumir algunos de sus\n momentos más polémicos:*Enredarse con el Emperador*: Rashta, una \nexesclava, se convierte en la concubina del Emperador Sovieshu.\n Aunque tentador, su relación con él era un riesgo innecesario.\n*Acercarse a la Emperatriz*: Rashta, ignorando las normas, intenta\n acercarse a Navier, la emperatriz. ¿Quieres ser mi hermana? \nle pregunta ingenuamente. No, gracias.\n*Engañar a Heinley*: Rashta intenta manipular al príncipe Heinley\n con cartas falsas. Su astucia no pasa desapercibida. \n*Generar Rumores Falsos*: Rashta es experta en crear chismes y \nrumores para su beneficio\n.*Arrancar las Plumas del Pájaro*: En un acto cruel, Rashta arranca\n las plumas de un ave, simbolizando su propia caída.\n*Dejar Caer al Bebé*: Rashta descuida a un bebé, mostrando su\n falta de empatía.\n *Crímenes Mayores*: Rashta también está involucrada en secuestros,\n robos, asesinatos. ", 25, y3);
    if ( y3 >= 40 ) {

      y3--;
    }


    c++;
  }
  if (c >= 600) {
    estado= "p4";
    y3=500;
    c= 0;
    popStyle();
  }

  //pantalla 4
  if (estado.equals("p4")) {
    pushStyle();
    background(250);
    image(henri, 0, 0, 640, 480);


    fill(25);
    textSize(20);
    text("henri. la verdad a hecho cosas vastante cuestionables pero la\n personas lo defienden por ser el interes amoroso\n de la prota ", 25, y4);
    if ( y4 >= 40 ) {
      y4--;
    }

   
    c++;
  }
  if  (c >= 600) {
    estado= "p5";
    y4=500;
    c= 0;
    r=250;
  }
  //pantalla 5
  if (estado.equals("p5")) {
    pushStyle();

    image(sovieshu, 0, 0, 640, 480);
    fill(250, 0, 0);
    textSize(20);
    text("el ex marido de la prota que hizo cosas cuestionable pero \ntodos lo odia por ser infiel", 25, y5);
    if ( y5 >= 40 ) {

      y5--;
    }

    c++;
  }
  if  (c >= 600) {
    estado= "fin";
    y5=500;
    c= 0;
    popStyle();
  }

  //pantalla fin
  if (estado.equals("fin")) {

    image(fondo, 0, 0, 640, 480);
    fill(0);
    text("fin", 40, height/2);
    circle(width/2, height/4*3, 50);
  }
 
}



void mousePressed() {
  if (estado.equals("menu")) {
    if (dist(width/2, height/4*3, mouseX, mouseY)<50/2) {
      estado= "p1" ;
    }
  }
  if (estado.equals("fin")) {
    if (dist(width/2, height/4*3, mouseX, mouseY)<50/2) {
      estado= "menu" ;
    }
  }
}
