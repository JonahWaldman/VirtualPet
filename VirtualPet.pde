
void setup(){import processing.serial.*;
import cc.arduino.*;
Arduino arduino;


  size(200, 200);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work

}
void draw(){
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);

  background(255, 255, 255);



float spotXloc1 = random(75, 140);
float spotYloc1 = random(100, 130);
float spotXloc2 = random(75, 140);
float spotYloc2 = random(100, 130);
float spotXloc3 = random(75, 140);
float spotYloc3 = random(100, 130);
float spotXloc4 = random(75, 140);
float spotYloc4 = random(100, 130);
float spotXloc5 = random(75, 140);
float spotYloc5 = random(100, 130);







stroke(1);
background(0, 0, 70);
float colorSpotRed = 0;
float colorSpotGreen =0;
float colorSpotBlue = 0;
//Grass
fill(24, 131, 35);
rect(0, 140, 200, 80);

//Cow
fill(230, 230, 230);
ellipse(120, 120, 120, 60);
//head
fill(230, 230, 230);
rect(30, 80, 50, 30);
//Legs
fill(230, 230, 230);
rect(80, 140, 8, 30);
rect(100, 140, 10, 40);
rect(135, 140, 8, 30);
rect(150, 140, 10, 40);
//feet
noStroke();
fill(0, 0, 0);
ellipse(82, 170, 15, 10);
ellipse(137, 170, 15, 10);
ellipse(103, 180, 15, 10);
ellipse(153, 180, 15, 10);
//eye
stroke(1);
fill(0, 0, 0);
ellipse(40, 90, 10, 10);
//utter
fill(255, 121, 177);
rect(112, 140, 22, 20);
ellipse(114, 159, 4, 6);
ellipse(118, 159, 4, 6);
ellipse(122, 159, 4, 6);
ellipse(126, 159, 4, 6);
ellipse(130, 159, 4, 6);
ellipse(134, 159, 4, 6);
//smile
fill(255, 121, 177);
arc(40,107,20,10,10,18);

//When mouse is pressed/clicked, the color of the dots change.

if (mousePressed ) {
  colorSpotRed += random(0, 255);
  colorSpotGreen += random(0, 255);
  colorSpotBlue += random(0, 255);
}
fill(colorSpotRed, colorSpotGreen, colorSpotBlue);
ellipse(120, 120, 20, 15);
//Smaller Spots
rect (spotXloc1, spotYloc1, 10, 5);
rect (spotXloc2, spotYloc2, 15, 5);
rect (spotXloc3, spotYloc3, 10, 10);
rect (spotXloc4, spotYloc4, 10, 5);
rect (spotXloc5, spotYloc5, 10, 5);




if (spotXloc1 > 160)
  spotXloc1 += -3;
else spotXloc1 += random(-3, 3);
if (spotXloc1 < 70)
  spotXloc1 += 5;

if (spotXloc2 > 140)
  spotXloc2 += -3;
else spotXloc2 += random(-3, 3);
if (spotXloc2 < 70)
  spotXloc1 += 5;

if (spotXloc3 > 140)
  spotXloc3 += -3;
else spotXloc3 += random(-3, 3);
if (spotXloc3 < 70)
  spotXloc3 += 5;

if (spotXloc4 > 140)
  spotXloc4 += -3;
else spotXloc4 += random(-3, 3);
if (spotXloc4 < 70)
  spotXloc4 += 5;

if (spotXloc5 > 140)
  spotXloc5 += -3;
else spotXloc5 += random(-3, 3);
if (spotXloc5 < 70)
  spotXloc5 += 5;






}

