
float s = 0.0;

void setup(){
  size(600, 500);
  //scale(0.1);
  frameRate(30);
}


void draw() {
  
  background(31, 47, 86);
  
  fill(9, 75, 10);
  noStroke();
  rect(0, 45, 600, 500);
  
  fill(35);
  quad(0, 45, 20, 45, 650, 500, 0, 500); //road
  translate(0, 35);
  s = s + 0.1;
  scale(0.1);  //starts the scene with a small car
  scale(s);
  
  if (s > 33){
    s = 0.1;
  } 
 
  println(s);
  print("Press H for headlights");
  
  fill(214, 49, 4);
  strokeWeight(3);
  beginShape();
  vertex(100, 400);
  vertex(100, 240);
  vertex(130, 240);
  vertex(200, 100);
  vertex(400, 100);
  vertex(470, 240);
  vertex(500, 240);
  vertex(500, 400);
  endShape(CLOSE);

  fill(0);
  quad(140, 240, 210, 112, 390, 112, 460, 240);

  fill(10);
  strokeWeight(3);
  beginShape();
  curveVertex(150, 282);
  curveVertex(180, 279);
  curveVertex(450, 282);
  curveVertex(450, 340);
  curveVertex(150, 340);
  curveVertex(150, 282);
  curveVertex(450, 282);
  endShape(CLOSE);
  
  strokeWeight(3);
  fill(65);
  rect(95, 360, 410, 40);     //bumber
  fill(245);
  
  fill(0);
  rect(110, 400, 70, 50);
  rect(420, 400, 70, 50);
  
  if (keyPressed) {              //animate headlights to turn on
    if (key == 'h') {
    fill(254, 243, 57);
  }
  } else {
    fill(245);
  }

  //fill(245);
  ellipse(155, 310, 50, 50);       //left headlights    //yellow fill, 254, 243, 57
  ellipse(208, 310, 50, 50);

  ellipse(392, 310, 50, 50);       //right headlights
  ellipse(445, 310, 50, 50);



}

