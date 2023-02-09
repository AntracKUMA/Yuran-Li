void xyzAxis(float len){
  // x axis
  fill(255,0,0);
  pushMatrix();
  translate(len/2,0,0);
  box(len,1,1);
  popMatrix();
  
  // y axis
  fill(0,255,0);
  pushMatrix();
  translate(0,len/2,0);
  box(1,len,1);
  popMatrix();
  
  // z axis
  fill(0,0,255);
  pushMatrix();
  translate(0,0,len/2);
  box(1,1,len);
  popMatrix();
}
