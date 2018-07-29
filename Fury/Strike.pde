class Strike{
  int xpos;
  int ypos;
  int lr_mod;
  int ud_mod;
  int strike_width;
  int strike_height;
  
  Strike(int direction){
    
    switch(direction){
        case 0: //left
          lr_mod = -100;
          ud_mod = 0;
          strike_width = 100;
          strike_height = 25;
          break;  
        case 1: //up
          lr_mod = 0;
          ud_mod = -100;
          strike_width = 25;
          strike_height = 100;
          break;
        case 2: //right
          lr_mod = 100;
          ud_mod = 0;
          strike_width = 100;
          strike_height = 25;
          break;       
        case 3: //down
          lr_mod = 0;
          ud_mod = 100;
          strike_width = 25;
          strike_height = 100;
          break;
      }
      
    xpos = width/2 + lr_mod;
    ypos = height/2 + ud_mod;
    
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(xpos, ypos, strike_width, strike_height, 5);    
    
  }
  
}
