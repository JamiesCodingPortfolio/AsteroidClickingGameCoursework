ArrayList<Asteroid> asteroid = new ArrayList<Asteroid>();
ArrayList<Fast_Asteroid> fast_asteroid = new ArrayList <Fast_Asteroid>();

class Enemy
{
  
  //The X and Y positions are marked with E at the start which corresponds to Enemy so "Enemy X"
  float Ex;
  float Ey;
  //Similar to E the C here stands for Change so "Change in X"
  float Cx = 3;
  float Cy = 3;
  int rotate;
  float timer = random(20,40);
  
  
  void move(){
    
    Ex = Ex - Cx;
    Ey = Ey - Cy;
    
  }
  
  boolean collision(){
      
      if (Ex+117 > 910){ //Left Side - configured so that the right side of the asteroid actually registers a hit
        if (Ex < 1015){ //Right Side
          if(Ey < 580){ //Bottom Side
            if(Ey+119 > 495){ // Top Side
            return true;
          
            }
          }
        }
      return false;
        
      }
      else{
        return false;
      }
      
      
    
  }
  
  
  
  void location(){
    CurrentEnemyX = Ex;
    CurrentEnemyY = Ey;
    
  }
  
  
}

class Asteroid extends Enemy
{
  
  Asteroid(float Ex, float Ey){
    this.Ex = Ex;
    this.Ey = Ey;
    Cx = (((Ex - ((width/2)-51))/60)/timer);
    Cy = (((Ey - ((height/2)-51))/60)/timer);
    
  }
  void render(){
   
    image(asteroidImg,Ex,Ey);
    
  }
  
  void identifier(){
    
    identifier = 1;
    
  }
  
  void update(){
    
    move();
    render();
    location();
    identifier();
  } 
  
}
class Fast_Asteroid extends Enemy{
  
  Fast_Asteroid(float Ex, float Ey){
    this.Ex = Ex;
    this.Ey = Ey;
    Cx = 3*(((Ex - ((width/2)-51))/60)/timer);
    Cy = 3*(((Ey - ((height/2)-51))/60)/timer);
  }
  
  void render(){
    tint(130,0,0);
    image(asteroidImg,Ex,Ey);
    noTint();
  }
  
  void identifier(){
    
    identifier = 2;
    
  }
  
  void update(){  
    move();
    render();
    location();
    identifier();
  }


}
