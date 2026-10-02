     Die diceyOne;
        void setup()
  {  size (500,500);
    diceyOne = new Die (50,50);

  }
  void draw()
  {
      background(19,106,83);
      
      for(int x = 10; x<500; x+= 60){
        for (int y = 10; y<500; y+=55)
           diceyOne = new Die (x,y);
      
      diceyOne.show();
      }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int mySize, myX, myY;
      
      Die(int x, int y) //constructor
      {
         mySize = 50;
         myX = x;
         myY = y;
      }
      void roll()
      {
               
          rollyRoll = ((int) (Math.random()*7-1));
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
  }
