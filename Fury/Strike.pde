class Strike{
  int xpos;
  int ypos;
  int lr_mod;
  int ud_mod;
  int strike_width;
  int strike_height;
  
  PImage strike_img;
  
  Strike(int direction){
    
    switch(direction){
        case 0: //left
          lr_mod = -100;
          ud_mod = 0;
          strike_width = 100;
          strike_height = 25;
          strike_img = loadImage("swing_left.png");
          break;  
        case 1: //up
          lr_mod = 0;
          ud_mod = -100;
          strike_width = 25;
          strike_height = 100;
          strike_img = loadImage("swing_up.png");
          break;
        case 2: //right
          lr_mod = 100;
          ud_mod = 0;
          strike_width = 100;
          strike_height = 25;
          strike_img = loadImage("swing_right.png");
          break;       
        case 3: //down
          lr_mod = 0;
          ud_mod = 100;
          strike_width = 25;
          strike_height = 100;
          strike_img = loadImage("swing_down.png");
          break;
      }
      
    xpos = width/2 + lr_mod;
    ypos = height/2 + ud_mod;
    
    imageMode(CENTER);
    image(strike_img, xpos, ypos);
    
  }
  
}
