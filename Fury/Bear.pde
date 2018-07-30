class Bear{
  
  int xpos;
  int ypos;
  int direction;
  int size = 75;
  PImage bear_img;
  boolean dead;
  
  
  Bear(){
    
      dead = false;
      direction = int(random(0,4));    
    
      switch(direction){
        case 0: //left
          xpos = 50;
          ypos = height/2;
          bear_img = loadImage("white_bear_left.png");
          break;  
        case 1: //up
          xpos = width/2;
          ypos = 50;
          bear_img = loadImage("white_bear_up.png");
          break;
        case 2: //right
          xpos = width-50;
          ypos = height/2;
          bear_img = loadImage("white_bear_right.png");
          break;       
        case 3: //down
          xpos = width/2;
          ypos = height-50;
          bear_img = loadImage("white_bear_down.png");
          break;
      }
      
    display();
                
  }
  
  void move(){
      
    if(!dead){
      
      switch(direction){
        case 0: //left
          xpos += 100;
          break;  
        case 1: //up
          ypos += 100;
          break;
        case 2: //right
          xpos -= 100;
          break;       
        case 3: //down
          ypos -= 100;
          break;
      }
      
    }
  }
  
  
  void display(){
    imageMode(CENTER);
    image(bear_img, xpos, ypos);
  }
}
  
  
