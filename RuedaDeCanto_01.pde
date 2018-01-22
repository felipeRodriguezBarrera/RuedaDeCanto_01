PImage atardecer;

/////////////////////////////////////

boolean cheatScreen;

String letterOrder1 = "PalEnfermo,Medicina,";

String letterOrder2 = "PalNovato,AltaCiencia";

String letterOrder3 = "Esto,YMas,EsLaFlorencia,";

String letterOrder4 = "Esto,YMas,EsNuestraGina";


///////////////////////

float anchoVideo = 4320;
float altoVideo = 2432;

///////////////////////

int rate; 
float medicionTinte;
float deltaTinte;

/////////////////

LetraChica letraChicaASCII;
LetraChica letraChicaASCIIv2;
LetraChica letraChicaASCIIv3;

LetraChica02 letraChicaASCII02;
LetraChica03 letraChicaASCII03;


LetraMediana letraMedianaASCII;


/////////////////

boolean grabar = false;
int contadorImagenes;

void setup() 
{
  fullScreen(P2D);
  smooth();
  rate = 14;

  frameRate(rate);

  int count = width * height;

  cheatScreen = false;

  fill(0);
  rect(0, 0, width, height);
  noFill();

  atardecer = loadImage("FelipeRodriguezBarrera.png");

  /////////////////////////////////



  letraChicaASCII = new LetraChica();

  letraChicaASCIIv2 = new LetraChica();
  letraChicaASCIIv3 = new LetraChica();


  letraChicaASCII02 = new LetraChica02();
  letraChicaASCII03 = new LetraChica03();

  letraMedianaASCII = new LetraMediana();


  /////////////////////////////////

  noCursor();
  deltaTinte = random(8000)/8000;

  ///////////////////////////////////////


  letraChicaASCII.setupZero();
  letraChicaASCIIv2.setupZero();
  letraChicaASCIIv3.setupZero();

  letraChicaASCII02.setupZero();
  letraChicaASCII03.setupZero();
}

float alpha, monoCromo;

void draw() 
{

  if (frameCount%2418 == 0)
  {
    contadorImagenes = (int)random(1, 9);

    // cachar que onda el texto

    switch(contadorImagenes)
    {
    case 1: 
      atardecer = loadImage("anochecer.jpg");
      letterOrder1 = "MilesYMilesDeMundos,";
      letterOrder2 = "Flotan,SinVerseOTocarse,";
      letterOrder3 = "Mundos,QueAlMultiplicarse,";
      letterOrder4 = "HeredanCercosProfundos";
      break;

    case 2: 
      atardecer = loadImage("atardecerOscuro.jpg");
      letterOrder1 = "EnLaSombraDelAmor";
      letterOrder2 = "Camina,Lento,LaVida,";
      letterOrder3 = "SonSusLlantosYSusHeridas";
      letterOrder4 = "ElNaufragioDelCantor";
      break;

    case 3: 
      atardecer = loadImage("ensayoTerraza.jpg");
      letterOrder1 = "EnvueltoEnSedaYHarapos,";
      letterOrder2 = "SiendoRey,HeroeOMendigo,";
      letterOrder3 = "Solo,ConCienOContigo,";
      letterOrder4 = "VuelvoSinNadaEnLasManos";
      break;

    case 4: 
      atardecer = loadImage("FelipeRodriguezBarrera.png");
      letterOrder1 = "TenemeEnSuCorazon,";
      letterOrder2 = "QueYoLaTendreEnElMio,";
      letterOrder3 = "NoMeVayaAOlvidar,";
      letterOrder4 = "NiPienseDeQueLaOlvido";
      break;

    case 5: 
      atardecer = loadImage("FelipeRodriguezBarrera02.jpg");
      letterOrder1 = "YAlVerQueNoCazo";
      letterOrder2 = "NiUnaPaloma,";
      letterOrder3 = "MeSientoEnUnaPeña";
      letterOrder4 = "YMePongoALlorar";
      break;

    case 6: 
      atardecer = loadImage("GinaFlorencia.jpg");
      letterOrder1 = "PalEnfermo,Medicina,";
      letterOrder2 = "PalNovato,AltaCiencia";
      letterOrder3 = "Esto,YMas,EsLaFlorencia,";
      letterOrder4 = "Esto,YMas,EsNuestraGina";
      break;

    case 7: 
      atardecer = loadImage("miPieza.jpg");
      letterOrder1 = "Tu,QueTiernoAmorPrometiste,";
      letterOrder2 = "MeJurasteMilDichas,SinFin,";
      letterOrder3 = "LaVozDeOtro,ApenasOiste,";
      letterOrder4 = "TeOlvidasteMeAmabasAMi";
      break;

    case 8: 
      atardecer = loadImage("penumbra.jpg");
       letterOrder1 = "CuandoAlMundoFuiARodar,";
      letterOrder2 = "Dije¡EnNombreSeaDeDios!,";
      letterOrder3 = "YaLaMaireSeAcabo,";
      letterOrder4 = "AhoraHayQueExperimentar";
      break;
    }

    letraChicaASCII.setupZero();
    letraChicaASCIIv2.setupZero();
    letraChicaASCIIv3.setupZero();

    letraChicaASCII02.setupZero();
    letraChicaASCII03.setupZero();
  }

  alpha = 8+8*((1+(sin(((frameCount + deltaTinte)/100)*PI/2)))/2);
  monoCromo = (sin(frameCount*PI/800)+1)*255/2;
  fill(monoCromo , alpha);

  //fill(0, 14);
  rect(0, 0, width, height);
  noFill();


  letraChicaASCII.setupInicial();
  letraChicaASCIIv2.setupInicial();
  letraChicaASCIIv3.setupInicial();

  letraChicaASCII02.setupInicial();
  letraChicaASCII03.setupInicial();

  letraMedianaASCII.setupInicial();

  //////////////////

  letraChicaASCII02.dibujo();
  letraChicaASCII03.dibujo();

  letraChicaASCII02.dibujo();
  letraChicaASCII03.dibujo();

  letraChicaASCII02.dibujo();
  letraChicaASCII03.dibujo();

  letraChicaASCII.dibujo();
  letraChicaASCIIv2.dibujo();
  letraChicaASCIIv3.dibujo();

  letraChicaASCII.dibujo();
  letraChicaASCIIv2.dibujo();
  letraChicaASCIIv3.dibujo();


  letraMedianaASCII.dibujo();



  println("frameCount: "+frameCount+" - frameRate: "+frameRate+" - alpha: "+alpha+" - monoCromo"+monoCromo);




  if (grabar)
  {
    saveFrame("frame/frame.####.tif");
  }

  //if (frameCount > 214)
  //{
  //  exit();
  //}
}

void keyPressed()
{
  if ( key ==  's' || key == 'g')
  {
    grabar = !grabar;
  }
}