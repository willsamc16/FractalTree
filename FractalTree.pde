private double fractionLength = .8; 
private int smallestBranch =3; 
private double branchAngle = .2; 
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(255,255,0);   
	line(320,580,320,280);   
  
	drawBranches(320,380,100,3*Math.PI/2,640);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int thickness) 
{   
  double angle0 = angle;
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double angle3 = angle - 2*branchAngle;
  double angle4 = angle + 2*branchAngle;
  
  int endX0 = (int)(branchLength*Math.cos(angle0) + x );
  int endY0 = (int)(branchLength*Math.sin(angle0) + y);
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
 if(branchLength>smallestBranch){
    drawBranches(endX0,endY0,branchLength/2,angle0,thickness/2);
   drawBranches(endX1,endY1,branchLength/2,angle1+PI/3,thickness/2);
   drawBranches(endX2,endY2,branchLength/2,angle2-PI/3,thickness/2);
   drawBranches(endX1,endY1,branchLength/2,angle3+PI/4,thickness/2);
   drawBranches(endX2,endY2,branchLength/2,angle4-PI/3,thickness/2);
 
 }
 
} 
