float baseH = 60;

float arm1W = 60;
float arm1D = 10;
float arm1L = 10;

float arm2W = 10;
float arm2D = 10;
float arm2L = 10;

float arm3W = 5;
float arm3D = 5;
float arm3L = 40;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float l4 = 0;

float dif = 1.0;

float rotX, rotY;


void setup(){
  size(1200, 800, P3D);
  
  noStroke();  
}

void draw(){
  
  background(255);
  translate(width/2,height/2);
   scale(-4);
   translate(0,-40,0);
   rotateX(rotX);
   rotateY(-rotY);    
  
  if(keyPressed){
    if(key == 'q'){
      angle0 += dif;
    }
    if(key == 'e'){
      angle0 -= dif;
    }
    if(key == 'a'){
      angle1 += dif;
    }
    if(key == 'd'){
      angle1 -= dif;
    }
    if(key == 'w'){
      angle2 += dif;
    }
    if(key == 's'){
      angle2 -= dif;
    }
    if(keyCode == UP){
      if(l3 < 0){
      l3 += dif;
      }
    }
    
    if(keyCode == DOWN){
      if(l3 > -40){
      l3 -= dif;
      }
    }
    
    if(keyCode == RIGHT){
      if(l4 > -50){
        l4 -= dif*0.3;
      }
    }
    
    if(keyCode == LEFT){
      if(l4 < 0){
        l4 += dif*0.3;
      }
    }
    
    if(key == 'p'){
       angle1 += dif*5;
       angle2 += dif*5;
    }
    
    if(key == 'r'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      l3 = 0;
      l4 = 0;
    }
  }
  
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(150);
  box(10,10,baseH);
  
  rotateZ(radians(angle1));
  translate(25+l4,0,baseH/2+arm1L/2);
  fill(125);
  box(arm1W,arm1D,arm1L);
  
  translate(0,0,0);
  rotateX(radians(angle2));  
  translate(35,0,0);
  fill(175);
  box(arm2W,arm2D,arm2L);
  
  translate(0, 0, l3);
  translate(0, 0, arm3L/2);
  fill(200);
  box(arm3W,arm3D,arm3L);
}

void mouseDragged(){
    rotY -= (mouseX - pmouseX) * 0.01;
    rotX -= (mouseY - pmouseY) * 0.01;
}
