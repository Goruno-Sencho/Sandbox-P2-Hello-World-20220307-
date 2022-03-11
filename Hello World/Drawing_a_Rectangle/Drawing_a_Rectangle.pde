//size(900, 650); //Display Geometry (Oriantations): Square, Landscape
fullScreen(); //displayWidth, displayHeight 
println("Canvas Size", width, height);
println("Display", "width;", displayWidth, "height: ", displayHeight);
int x = width*1/4, y = height*1/4, rectWidth = width*1/2, rectHeight = height*1/2;
// Background as Gray scale, 0-255 (notice 256 #'s)
background(47);
// Background as colour, RGB, random(a,b)
background( color(random(0, 255),random(255),random(255)) );
rect(x, y, rectWidth, rectHeight);
