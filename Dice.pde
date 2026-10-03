  int[] dice = {1,2,3,4,5,6};
  int sum;
  
  void setup()
  {  size (500,530);
      noLoop(); 
  }
  
  void draw()
  {
    
      background(19,106,83);
      
      sum = 0;
      for(int x = 17; x<450; x+= 60) {
        for (int y = 25; y<450; y+=60) {
           Die diceyOne = new Die (x,y);
           diceyOne.show();
      sum = sum + diceyOne.rollyRoll;
        }
     }
     fill (255,255,255);
     text("Total: " + sum, 210,520);

  }
  
  void mousePressed()
  {
      redraw();
      
    
  }
  
  class Die //models one single dice cube
  {
      int mySize, myX, myY, rollyRoll;
      
      Die(int x, int y) //constructor
      {
         mySize = 50;
         myX = x;
         myY = y;
         rollyRoll = ((int)(Math.random()*6)+1); 
      }
      
      void roll()
      {
          rollyRoll = ((int) (Math.random()*6)+1);
    
      }
      
      
      void show()
      {
          noStroke();
          fill(252,240,207);
          
          // 1 dot
        if (rollyRoll == 1) {
          rect(myX, myY, mySize, mySize);
          fill(0,0,0);
          ellipse(myX+25,myY+25,10,10); 
        }
       //2 dots
         else if (rollyRoll ==2){
          rect(myX, myY, mySize, mySize);
          fill(0,0,0);
          ellipse(myX+13,myY+35,10,10);
          ellipse(myX+36,myY+12,10,10);
         }
         
       // 3 dots
          else if (rollyRoll ==3){
          rect(myX, myY, mySize, mySize);
          fill(0,0,0);
          ellipse(myX+13,myY+35,10,10);
          ellipse(myX+24,myY+24,10,10);
          ellipse(myX+36,myY+12,10,10);
          }
          
        // 4 dots
          else if(rollyRoll == 4){
          rect(myX, myY, mySize, mySize);
          fill(0,0,0);
          ellipse(myX+13,myY+35,10,10);
          ellipse(myX+13,myY+12,10,10);
          ellipse(myX+36,myY+12,10,10);
          ellipse(myX+36,myY+35, 10,10);
          }
          
        // 5 dots
          else if (rollyRoll == 5){
          rect(myX, myY, mySize, mySize);
          fill(0,0,0);
          ellipse(myX+13,myY+35,10,10);
          ellipse(myX+13,myY+12,10,10);
          ellipse(myX+36,myY+12,10,10);
          ellipse(myX+36,myY+35, 10,10);
          ellipse(myX+25,myY+25,10,10);
          }
          
        // 6 dots
          else if (rollyRoll == 6){
          rect(myX, myY, mySize, mySize);
          fill(0,0,0);
          ellipse(myX+13,myY+40,10,10);
          ellipse(myX+13,myY+12,10,10);
          ellipse(myX+36,myY+12,10,10);
          ellipse(myX+36,myY+40, 10,10);
          ellipse(myX+13,myY+25,10,10);
          ellipse(myX+36,myY+25,10,10);
          }
      }

  }
