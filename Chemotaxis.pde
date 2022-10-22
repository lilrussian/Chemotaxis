int away = -1;
 Bacteria [] bob;
 void setup()  
 {  
   noStroke();
   background(0);  
   size(600, 600);
   bob = new Bacteria [400];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
     }
 }  
 void draw()  
 {    
   background(0);
  for(int i =0; i<bob.length; i++){
    bob[i].walk();
    bob[i].show();
  }
 }  

 class Bacteria
 {
   int myX, myY, myColor, size;
   Bacteria(){
     myX = (int)(Math.random()*600);
     myY = (int)(Math.random()*600);
     myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
     size = (int)(Math.random()*30)+10;
     //size = 30;
 }

 void walk(){
   
if (away == -1){
  if(mouseX > myX){
    myX = myX + (int)(Math.random()*10)-2;
  }
  if(mouseX < myX){
    myX = myX + (int)(Math.random()*10)-6;
  }
  if(mouseY < myY){
    myY = myY + (int)(Math.random()*10)-6;
  }
  if(mouseY > myY){
    myY = myY + (int)(Math.random()*10)-2;
  }
}  
if (away == 1){
  if(mouseX > myX){
    myX = myX - (int)(Math.random()*10)+2;
  }
  if(mouseX < myX){
    myX = myX - (int)(Math.random()*10)+6;
  }
  if(mouseY < myY){
    myY = myY - (int)(Math.random()*10)+6;
  }
  if(mouseY > myY){
    myY = myY - (int)(Math.random()*10)+2;
  }
}


 }
 void show(){
  fill(myColor);
  ellipse(myX, myY, size,size);
 }
 }
 
 void mousePressed(){
   away = away*-1;
 }
