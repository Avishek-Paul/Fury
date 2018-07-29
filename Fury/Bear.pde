class Bear{
  
  int xpos;
  int ypos;
  int direction;
  int size = 75;
  
  Bear(){
    
      direction = int(random(0,4));    
    
      switch(direction){
        case 0: //left
          xpos = 50;
          ypos = height/2;
          break;  
        case 1: //up
          xpos = width/2;
          ypos = 150;
          break;
        case 2: //right
          xpos = width-50;
          ypos = height/2;
          break;       
        case 3: //down
          xpos = width/2;
          ypos = height-150;
          break;
      }
      
    fill(#96281B);
    ellipse(xpos,ypos,size,size);
                
  }
  
  void move(){
      
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
  
  
  void display(){
    fill(#96281B);
    ellipse(xpos,ypos,size,size);
  }
}
  
  
