class Player{
  boolean dead;
  ArrayList<Bear> bears = new ArrayList<Bear>();

  Player(){
    dead = false;
    fill(#F5D76E);
    ellipse(width/2, height/2, 75, 75);
  }
  
  void swing_left(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2 - 100, height/2, 100, 25, 5);
  }
  
  void swing_right(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2 + 100, height/2, 100, 25, 5);
  }
  
  void swing_up(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2, height/2 - 100, 25, 100, 5);
  }
  
  void swing_down(){
    fill(#D3D3D3);
    rectMode(CENTER);
    rect(width/2, height/2 + 100, 25, 100, 5);
  }
  
  
  void update(){
  }
  
  
  
  
  
}
