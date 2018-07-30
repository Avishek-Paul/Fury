class Bear{
  
  int xpos;
  int ypos;
  int direction;
  int size = 75;
  boolean dead;
  
  Bear(){
    
      dead = false;
      direction = int(random(0,4));    
    
      switch(direction){
        case 0: //left
          xpos = 50;
          ypos = height/2;
          break;  
        case 1: //up
          xpos = width/2;
          ypos = 50;
          break;
        case 2: //right
          xpos = width-50;
          ypos = height/2;
          break;       
        case 3: //down
          xpos = width/2;
          ypos = height-50;
          break;
      }
      
    fill(#595959);
    ellipse(xpos,ypos,size,size);
                
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
    fill(#595959);
    ellipse(xpos,ypos,size,size);
  }
}
  
  
