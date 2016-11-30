/*
* Authors: Jose Martinez and An Tran
* Program name: The Change of Time
* Description: Changes the scenery from morning to night
* when the mouse moves from left to right.
* You can also make the image color change 
* when you press certain buttons.
* The two trees appear randomly on the grass
* each time the program runs.
* The following flexible elements were used:
* Defining  and using your own variables appropriately
*  -Used variable to alter the RGB values and tree placements
* Using random() to generate and use random numbers
*  -Random placement of trees
* Using "if" statements
*  -Used to interact with keyboard and mouse
* Having an especially interesting,  pleasing,  and/or sophisticated animation
*  -User can change colors to color of their desire
*/

int r = 0; //variable for adding red
int g = 0; //variable for adding green
int b = 0; //variable for adding blue
int t = 0; //variable for subtracting red
int h = 0; //variable for subtracting green
int n = 0; //variable for subtracting blue
float randomr = random(200, 430); //variable for tree1 placement
float random2a = random(200, 430); //variable for tree2 placement


void setup(){
  size(500, 500); //window size
  println("Press r, t, g, h, b, or n to change the image color.");
  println(" r for more red, t for less red.");
  println(" g for more green, h for less green.");
  println(" b for more blue, n for less blue.");
 
}

void draw(){

  //Sky
  //Changes background based on mouse position
  if(mouseX >= width/2){ // For right half of screen
  background(300-mouseX/2, 300-mouseX/2, 400-mouseX/2); //day to night
  }else{ if(mouseX <= width/2); //For left half of screen
  background(75+mouseX/2, 75+mouseX/2, 100+mouseX/2); //night to day
  }
  
  //Landscape
  noStroke();
  fill(43 + r - t, 234 + g - h, 19 + b - n); //grass green
  rect(0, 250, width, 100); //grass
  
  //Tree on hill
  fill(178 + r - t, 94 + g - h, 4 + b - n); //tree bark brown
  rect(147, 194, 10, 40); //tree trunk
  fill(58 + r - t, 170 + g - h, 36 + b - n); // leaf green
  ellipse(152, 180, 30, 80); //leaves
  
  //Trees on ground
  //tree1
  fill(178 + r - t, 94 + g - h, 4 + b - n); //tree bark brown
  rect(randomr, 210, 10, 40); //tree trunk
  fill(58 + r - t, 170 + g - h, 36 + b - n); // leaf green
  ellipse(randomr + 5, 200, 30, 80); //leaves
  //tree2
  fill(178 + r - t, 94 + g - h, 4 + b - n); //tree bark brown
  rect(random2a, 210, 10, 40); //tree trunk
  fill(58 + r - t, 170 + g - h, 36 + b - n); // leaf green
  ellipse(random2a + 5, 200, 30, 80); //leaves
  
  //Hill
  fill(43 + r - t, 234 + g - h, 19 + b - n); //grass green
  arc(150, 270, 80, 75, PI, TWO_PI); //hill
 
  
  //Sun/Moon
  fill(253+mouseX, 184+mouseX, -120+mouseX); //sun yellow to moon white
  noStroke(); //no outline
  ellipseMode(CENTER);
  ellipse(mouseX , 100, 50, 50); //sun/moon
  
  //Window
  strokeWeight(75);//provides outline for window frame
  noFill();
  stroke(193 + r - t, 117 + g - h, 18 + b - n);//dark brown
  rect(25, 0,  450, 300);//window frame
  
  //Floor
  noStroke();
  fill(250 + r - t, 180 + g - h, 88 + b - n);//light brown
  rectMode(CORNER);
  rect(0, 325, width, 175);//floor
  
   //Lamp
  strokeWeight(1);
  stroke(0);//black
  line(400, 350,  400, 425);//stand
  noStroke();
  fill(255);//white
  rect(375, 320, 50, 30);//lamp shade
  
  //Turns the lightbulb on and off
   if(mouseX >= width/2){//for right half of screen
  fill(255, 255, 0, -250+mouseX);//lightbulb becomes more visible
  }else{ if(mouseX <= width/2);//for left half of screen
  fill(255, 255, 0, 255-mouseX);//lightbulb becomes less visible
  }
  ellipse(400, 335, 25, 15);//lightbulb
  
  //Turns the lighting effect on and off
  if(mouseX >= width/2){ //for right half of screen
  fill(255, 255, 0, -400+mouseX); //lighting effect becomes more visible
  }else{ if(mouseX <= width/2); //for left half of screen
  fill(255, 255, 0, 100-mouseX); //lighting effect becomes less visible
  }
  ellipse(400, 335, 100, 100);//lighting effect
  
  //Bed
  noStroke(); //no outline
  fill(150 + r - t, 150 + g - h, 150 + b - n); //dark gray 
  rect(75, 375, 200, 50);//front
  fill(175 + r - t, 175 + g - h, 175 + b - n); //gray
  quad(275, 375,  275, 425,  325, 390,  325, 350);//side 
  fill(200 + r - t, 200 + g - h, 200 + b - n); //light gray
  quad(75, 375,  125, 350,  325, 350,  275, 375);//top
  
  //Pillow
  fill(255); //white
  rotate(-.115); //turns pillow at an angle
  ellipse(80, 370, 50, 30); //pillow

}


//Corresponds to keyboard letters
void keyPressed(){
  if(key == 'r') //r keyboard button
  r = r + 10; //adds 10 to red RGB value per press
  if(key == 't') //t keyboard button
  t = t + 10; //subtracts 10 to red RGB value per press
  if(key == 'g') //g keyboard button
  g = g +10; //adds 10 to green RGB value per press
  if(key == 'h') //h keyboard button
  h = h + 10; //subtracts 10 to green RGB value per press
  if(key == 'b') //b keyboard button
  b = b + 10; //adds 10 to blue RGB value per press
  if(key == 'n') //n keyboard button
  n = n + 10; //subtracts 10 to blue RGB value per press
}
