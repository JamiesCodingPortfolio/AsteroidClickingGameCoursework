PImage crosshairImg;
int PEdXR;
int PEdXL;
int PEdyD;
int PEdYU;
class crosshair{
  
  int Px;
  int Py;
  int EdXR = Px + 5;
  int EdXL = Px - 5;
  int EdYD = Py + 5;
  int EdYU = Py - 5;
  crosshair(int Px,int Py){
    
    this.Px = Px;
    this.Py = Py;
    
  }
  
  void render(int Px, int Py){
    
    image(crosshairImg,Px,Py); //100 pixels by 100 pixels
    
  }
  
  boolean fire(int Px, int Py){
    int EdXR = Px + 5;
    int EdXL = Px - 5;
    int EdYD = Py + 5;
    int EdYU = Py - 5;
    if(abs(CurrentEnemyX) <= (EdXR)){ 
      if(abs(CurrentEnemyX+177) >= (EdXL)){
        if(abs(CurrentEnemyY) <= (EdYD)){
          if(abs(CurrentEnemyY+119) >= (EdYU)){
            return true;
            
          }
          
        }
        
      }
      return false;
    }
    return false;
    
  }
  void location(){
    //P stands for Public, E stands for Enemy, D stands for Death
    PEdXR = EdXR;
    PEdXL = EdXL;
    PEdyD = EdYD;
    PEdYU = EdYU;
  }
  
  
}
