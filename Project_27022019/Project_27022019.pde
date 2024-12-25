import controlP5.*;

ControlP5 cp5;

String CodeName = "HESAP MAKINESI V0.1";
String Name = "Muhammet UCAR";

float kutu1 = 0;
float kutu2 = 0;
float toplama = 0;
float cikarma = 0;
float bolme = 0;
float carpma = 0;
float ao = 0;
float at = 0;

//-------------------------------------------------------------------

void setup ()
{
  PFont font = createFont("arial", 18);
  size(600, 600);
  background(125);
  rect(20, 260, 200, 40);
  text(CodeName, 450, 550);
  text(Name, 450, 570);
  textSize(20);
  text("SONUÇ",20,320);

  //Textfield_Button-------------------------------------------------------------------

  cp5 = new ControlP5(this);

  cp5.addTextfield("SAYI_1")
    .setPosition(20, 100)
    .setSize(200, 40)
    .setFont(font)
    .setFocus(true)
    .setColor(color(225))
    ;

  cp5.addTextfield("SAYI_2")
    .setPosition(20, 180)
    .setSize(200, 40)
    .setFont(font)
    .setFocus(true)
    .setColor(color(225))
    ;

  cp5.addBang("TOPLA")
    .setPosition(340, 100)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;    

  cp5.addBang("CIKART")
    .setPosition(340, 180)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("BOL")
    .setPosition(440, 100)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("CARP")
    .setPosition(440, 180)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("ARITMETIK_ORTA")
    .setPosition(340, 260)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("ARDISIK_TOPLA")
    .setPosition(340, 340)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("TEMIZLE")
    .setPosition(340, 420)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;
}

//-------------------------------------------------------------------

void draw()
{
  kutu1 = float(cp5.get(Textfield.class, "SAYI_1").getText());
  kutu2 = float(cp5.get(Textfield.class, "SAYI_2").getText());
}

//Buton_Temizlik-------------------------------------------------------------------
public void TEMIZLE()
{
  cp5.get(Textfield.class, "SAYI_1").clear();
  cp5.get(Textfield.class, "SAYI_2").clear();
  fill(255);
  rect(20, 260, 200, 40);
}

//Buton_Toplama-------------------------------------------------------------------

public void TOPLA()
{
  fill(0, 102, 153);
  text(Topla(kutu1, kutu2), 30, 285);
}

//Buton CIKART-------------------------------------------------------------------

public void CIKART()
{
  fill(0, 102, 153);
  text(Cikar(kutu1, kutu2), 30, 285);     
 // redraw();
}

//Buton BOL-------------------------------------------------------------------

public void BOL()
{
  fill(0, 102, 153);
  text(Bol(kutu1, kutu2), 30, 285);     
}

//Buton CARP-------------------------------------------------------------------

public void CARP()
{
  fill(0, 102, 153);
  text(Carp(kutu1, kutu2), 30, 285);     
 }

//Buton ARITMETIK_ORTA-------------------------------------------------------------------

public void ARITMETIK_ORTA()
{
  fill(0, 102, 153);
  text(AO(kutu1, kutu2), 20, 280);     
 }

//Buton ARDISIK_TOPLA-------------------------------------------------------------------

public void ARDISIK_TOPLA()
{
  fill(0, 102, 153);
  text(AT(kutu1, kutu2), 20, 280);     
  }

//Ana_Islemler-------------------------------------------------------------------

float Topla(float kutu1, float kutu2)
{
  toplama = kutu1 + kutu2;
  return toplama;
}

float Cikar(float kutu1, float kutu2)
{
  cikarma = kutu1 - kutu2;
  return cikarma;
}

float Bol(float kutu1, float kutu2)
{
  bolme = kutu1 / kutu2;
  return bolme;
}

float Carp(float kutu1, float kutu2)
{
  carpma = kutu1 * kutu2;
  return carpma;
}

float AO(float kutu1, float kutu2)
{
  ao = (kutu1 + kutu2) / 2;
  return ao;
}

float AT(float kutu1, float kutu2)
{
  at = kutu1 * (kutu1-1) / 2;
  return at;
}
