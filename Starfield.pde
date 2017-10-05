//your code here
Particle[] bob;
void setup()
{
	//your code here
size(500,500);
 bob = new Particle[500];
 for(int i = 0; i < bob.length; i++){
   bob[i] = new NormalParticle();
 
 }
 bob[1] = new OddballParticle();
 bob[2] = new JumboParticle();
}
//NormalParticle bob = new NormalParticle();

void draw()
{
  background(0);
	//your code here
for(int i = 0; i < bob.length; i++){
bob[i].move();
bob[i].show();
}
}
class NormalParticle implements Particle
{
  int Color;
  double Speed,Angle, x,y;
  NormalParticle(){
  x = 250;
  y = 250;
  Color = (int)(Math.random()*256);
  Angle = (Math.random()*6)-3;
  Speed = 2;
  }
 public void move(){
  x = x + (java.lang.Math.cos(Angle) * Speed);
  y = y + (java.lang.Math.sin(Angle) * Speed);
  if((x >500) || (x < 0)){
  x = 250;
  }
    if((y >500) || (y < 0)){
  y = 250;
  }
  }
  public void show(){
    fill(255);
  ellipse((int)x,(int)y, 5,5);
  }
	//your code here
}
interface Particle
{
	//your code here
public void move();
public void show();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
int myX, myY, Color;
OddballParticle(){
myX = 250;
myY = 250;
Color = (int)(Math.random()*255);
}
public void show(){
  fill(#7EFAF9);
  rect(myX,myY, 15,15);
}
public void move(){
myX = myX + ((int)(Math.random()*5)-2);
myY = myY + ((int)(Math.random()*5)-2);
}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
public void show(){
    fill(255);
  ellipse((int)x,(int)y, 16,16);
}
}