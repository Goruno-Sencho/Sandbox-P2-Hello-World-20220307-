//Global Variables
int x = width*1/4, y = height*1/4, rectWidth = width*1/2, rectHeight = height*1/2;
int backgroundBlue;
int strokeRest=1;
int thin=width*1/50, thick=2*thin;
color strokeColour, fillColour;
color yellow=#F8FC03, purple=#FA00F6, whiteReset=#FFFFFF, blackReset=#000000;
// Colour design must limit blue as much as possible ... notice purple
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096 ; //No blue light for the color shade
Boolean nightMode=false; //Daytime is false
//
void setup() 
{
  //size(900, 650); //Display Geometry (Oriantations): Square, Landscape
  fullScreen(); //displayWidth, displayHeight 
println("Canvas Size", width, height);
println("Display", "width;", displayWidth, "height: ", displayHeight);
}//End setup
//
void draw() 
{
// Background as Gray scale, 0-255 (notice 256 #'s)
background(47);
// New Background fFunction "covers" old grey scale background()
// Background as colour, RGB, random(a,b)
// Night Mode means background cannot have blue // change random for night mode
//
if (nightMode=true) //Night Mode Choices
{
  backgroundBlue=0;
  strokeColour= yellowNightMode;
  fillColour= purpleNightMode;
} else
{
  backgroundBlue = int(random(255) );
  strokeColour= yellow;
  fillColour= purple;
  println("here", backgroundBlue);
} //End of Night Mode
//
background( color(random(0, 255),random(255),random(255), backgroundBlue) );
strokeWeight(thick);
stroke(strokeColour); // yellow, yellowNightMode
fill(fillColour); // purple, purpleNightMode
rect(x, y, rectWidth, rectHeight);
//rest to defaults
fill(whiteReset);
stroke(blackReset);
strokeWeight(strokeRest);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed


/*


// End of Program
*/
