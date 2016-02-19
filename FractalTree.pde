private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
  size(640, 480);    
  background(0);
    noLoop();
} 
public void draw() 
{   
  strokeWeight(4);
  //background(0);   
  stroke(176, 104, 21);
  //stroke(0, 100, 0);   
  line(320, 480, 320, 380);   
  //stroke(176, 104, 21);
  //stroke(0, 100, 0);  
  drawBranches(320, 380, 100, 3*Math.PI/2);
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1, angle2;
  int endX1, endX2, endY1, endY2;
  int pink1, pink2;
  
//  noStroke();

for(int i = 0; i < 30; i++){
   
  pink1 = (int)(Math.random()*2);
  pink2 = (int)(Math.random()*2);
  
  if(pink1 == 1 || pink2 == 1){
  fill(204, 0, 102);
  } else {
  
  fill(255, 102, 153);
  }
 
}
 
  angle1 = angle + branchAngle; 
  angle2 = angle - branchAngle;
  branchLength = branchLength * fractionLength;

  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);

  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  

  if (branchLength >= smallestBranch) {
    
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
    
      
 
    ellipse(endX1, endY1, 20, 20);
    ellipse(endX2, endY2, 10, 10);
    //strokeWeight(8);
//    fill(255);  
  //  ellipse(endX2, endY2, 


    

}
}

