Figura Poe;
Figura King;
Figura Lovecraft;
Figura Wilde;
Figura Stoker;
Figura Lumley;
Figura Campbell;
Figura Straub;
ArrayList<Figura> Figuras;

//Triangulo, Cuadrado, Rectangulo, Circulo, Pentagono, Hexagono, Heptagono, Octagono

void setup()
{
  size(500,590);
  Poe = new Triangulo(50,80,120,120,120);
  King = new Cuadrado (90);
  Lovecraft = new Rectangulo (140,80);
  Wilde = new Circulo (PI, 120);
  Stoker = new Pentagono (50,40);
  Lumley = new Hexagono (60,40);
  Campbell = new Heptagono (50,30);
  Straub = new Octagono (50,30);
    
  Figuras = new ArrayList<Figura> ();
  Figuras.add(Poe);
  Figuras.add(King);
  Figuras.add(Lovecraft);
  Figuras.add(Wilde);
  Figuras.add(Stoker);
  Figuras.add(Lumley);
  Figuras.add(Campbell);
  Figuras.add(Straub);
}

void draw()
{
  background (#007781);
  println(Poe.perimetro());
  println(King.perimetro());
  println(Lovecraft.perimetro());
  println(Wilde.perimetro());
  println(Stoker.perimetro());
  println(Lumley.perimetro());
  println(Campbell.perimetro());
  println(Straub.perimetro());
 
}


interface Figura
{
  float perimetro();
  float area (); 
}

class Triangulo implements Figura
{
  float b,h,l1,l2,l3;
  int x1=100,y1=150;
  int x2=100,y2=150;
  Triangulo(float b_, float h_, float l1_, float l2_, float l3_){
    b = b_;
    h = h_;
    l1 = l1_;
    l2 = l2_;
    l3 = l3_;
    
  }
  
  float perimetro()
  {
    beginShape();
    fill (#31AAB4);
    noStroke ();
    vertex(x1,y1);
    vertex(x1+b,y1-l1);
    vertex(x1+l1,y1);
    vertex(x1,y1);
    endShape();
    return l1 + l2 + l3;
  }
  
  float area()
  {
    return b*h;
  }
  
}

class Cuadrado implements Figura
{
  int l;
  int x=300,y=150;
  
  Cuadrado (int l_)
  {
    l = l_;
  }
  float perimetro ()
  {
   beginShape();
   fill(#2ACBD8);
   noStroke();
   vertex(x,y);
   vertex(x+l,y);
   vertex(x+l,y-l);
   vertex(x,y-l);
   vertex(x,y);
   endShape();
  return l*4;
}

float area ()
{
  return l*l;
 }
}

class Rectangulo implements Figura
{
  int r1,r2;
  int x=100,y=200;
  Rectangulo (int r1_, int r2_){
  r1 = r1_;
  r2 = r2_;
  }
  float perimetro()
  {
   beginShape();
   fill (#4390F7);
   noStroke ();
   vertex(x,y);
   vertex(x+r1,y);
   vertex(x+r1,y+r2);
   vertex(x,y+r2);
   vertex(x,y);
   endShape();
    return r1*2 + r2*2;
  }
  
  float area()
  {
    return r1*r2;
  }
}

class Circulo implements Figura
{
  float PI;
  int c2;
  int x=350,y=230;
  Circulo (float PI_, int c2_)
  {
  PI = PI_;
  c2 = c2_;
  }
  float perimetro()
  {
    ellipse(x,y,c2,c2);
    fill (#6FD0FF);
    noStroke ();
    return 2*PI*(c2);
  }
  
  float area()
  {
    return  PI*(c2^2);
  }
}


class Pentagono implements Figura
{
  int p1,p2;
  int x=150,y=415;
  Pentagono (int p1_, int p2_)
  {
  p1 = p1_;
  p2 = p2_;
  }
  float perimetro()
  {
    beginShape();
    fill (#60DEDA);
    noStroke();
    vertex(x,y);
    vertex(x+p1,y);
    vertex(x+p1+16,y-48);
    vertex(x+25,y-77);
    vertex(x-16,y-48);
    vertex(x,y);
    endShape();
    return p1*5;
  }
  
  float area()
  {
    return p1*5 * (p2);
  }
}

class Hexagono implements Figura
{
  int h1,h2;
  int x=320,y=420;
  Hexagono (int h1_, int h2_){
  h1 = h1_;
  h2 = h2_;
  }
  float perimetro(){
     beginShape();
     fill (#3ACAD6);
     noStroke();
    vertex(x,y);
    vertex(x+h1,y);
    vertex(x+25+h1,y-43);
    vertex(x+h1,y-87);
    vertex(x,y-87);
    vertex(x-25,y-43);
    vertex(x,y);
    endShape();
    return h1*6;
  }
  
  float area(){
    return h1*6 * (h2);
  }
}

class Heptagono implements Figura{
  int e1,e2;
  int x=150,y=570;
 Heptagono (int e1_, int e2_){
 e1 = e1_;
  e2 = e2_;
  }
  float perimetro()
  {
   
   beginShape();
   fill (#67D8AA);
   noStroke();
   vertex(x,y);
   vertex(x+e1,y);
   vertex(x+e1+32,y-40);
   vertex(x+e1+25,y-90);
   vertex(x+25,y-115);
   vertex(x-22,y-90);
   vertex(x-32,y-40);
   vertex(x,y);
   endShape();
   return e1*7;
  }
  
  float area(){

    return e1*7 * (e2);
  }
}

class Octagono implements Figura{
  int o1,o2;
  int x=340,y=580;
 Octagono (int o1_, int o2_)
 {
 o1 = o1_;
  o2 = o2_;
  }
  float perimetro()
  {
   beginShape();
   fill(#17C9FC);
   noStroke ();
   vertex(x,y);
  vertex(x+o1,y);
  vertex(x+o1+35.35,y-35.35);
  vertex(x+o1+35.35,y-o2-70.7);
  vertex(x+o1,y-106.5-o2);
  vertex(x,y-o2-106.5);
  vertex(x-35.35,y-o2-70.7);
  vertex(x-35.35,y-35.35);
  vertex(x,y);
  
    endShape();
    return o1*8;
  }
  
  float area(){
    return o1*8 * (o2);
  }
}