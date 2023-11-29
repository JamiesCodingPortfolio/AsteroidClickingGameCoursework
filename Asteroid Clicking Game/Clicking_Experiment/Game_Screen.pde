class ScreenA{
  
  
  void create_screen_1(){
    
    background(200);
    fill(220);
    text("Current Mouse Position: " + x + ", " + y, 10, 30);
    rect(((Sx/2)-300), (Sy-920), 600, 100);
    rect(((Sx/2)-300), (Sy-720), 600, 100);
    rect(((Sx/2)-300), (Sy-520), 600, 100);
    rect(((Sx/2)-300), (Sy-320), 600, 100);
  }
  
  void difficulty_selection(){
    textFont(font,64);
    fill(0,255,0);
    text("Easy", (Sx/2-50),(Sy-850));
    fill(255,165,0);
    text("Medium", (Sx/2-100),(Sy-650));
    fill(255,0,0);
    text("Hard", (Sx/2-60),(Sy-450));
    fill(139,0,0);
    text("Very Hard", (Sx/2-130),(Sy-250));
    textFont(font,28);
    fill(0);
  }
  
}

class ScreenB{
  
  void screen_1_clicks(){
    
    //DG Stands for difficulty of game
    //CG stands for current game level
    
    if (x > (Sx/2)-300 && y > (Sy-(920)) && x <(Sx/2)+300 && y <(Sy-(820))){
      DG = 1;
      CG = 2;
      println("CG Recognised: " + DG);
    }
    else if (x > (Sx/2)-300 && y > (Sy-(720)) && x <(Sx/2)+300 && y <(Sy-(620))){
      DG = 2;
      CG = 2;
      println("CG Recognised: " + DG);
    }
    else if (x > (Sx/2)-300 && y > (Sy-(520)) && x <(Sx/2)+300 && y <(Sy-(420))){
      DG = 3;
      CG = 2;
      println("CG Recognised: " + DG);
    }
    else if (x > (Sx/2)-300 && y > (Sy-(320)) && x <(Sx/2)+300 && y <(Sy-(220))){
      DG = 4;
      CG = 2;
      println("CG Recognised: " + DG);
    }
    
  }
  
}

class Game{
  
  
  void Current_Game(){
    background(backgroundImg);
    fill(255,255,255);
    text("Current Mouse Position: " + x + ", " + y, 10, 30);
    fill(0);
  }
  void Enemy_Spawn(){
    while(Fl2 < 1){
      noCursor();
      gameover = 0;
      counter = 0;
      amount = DG*20;
      nextround = 1;
      while(counter <= (DG*20)){
        float RRx;
        float RRy;
        if (counter%2 == 0){
          RRx = random(-width,width*2.5);
          RRy = random(height,height*3);
        }
        else{
          RRx = random(-width,width*2.5);
          RRy = random(-height,-height*3);
        }
        asteroid.add(new Asteroid(RRx,RRy));
        counter++;
      }
      Fl2++;
    }
    boolean hitRegistered = false;
    for (int i = 0; i < asteroid.size()-1; i++){
    asteroid.get(i).update();
    if(hitRegistered == false){
      if (Crosshair[0].fire(x,y) == true && mousePressed == true){
        if (identifier == 1){
          asteroid.remove(i);
        }
        score++;
        hitRegistered = true;
      }
    }
    if ((asteroid.get(i).collision() == true)){
      
      gameover = 1;
      
    }
    
    
  }
  for (int i = 0; i < fast_asteroid.size()-1; i++){
    fast_asteroid.get(i).update();
    if (hitRegistered == false){
      if (Crosshair[0].fire(x,y) == true && mousePressed == true){
        if (identifier == 2){
          fast_asteroid.remove(i);
      }
      
      score = score + 5;
      hitRegistered = true;
    }
  }
  if ((fast_asteroid.get(i).collision() == true)){
      
      gameover = 1;
      
    }
  }
  
  if (asteroid.size()-1 == 0){
    enemiestoadd = enemiestoadd + 5;
    displayroundcompletion = 300;
    newamount = amount + enemiestoadd;
    float Nx = 0;
    float Ny = 0;
    int counter = 0;
    int specialasteroidamount = round(newamount/20);
    println(newamount);
    println(specialasteroidamount);
    while (counter < newamount){
      
      if (counter%2 == 0){
        Nx = random(-width,width*2.5);
        Ny = random(height,height*3);
      }
      else{
        Nx = random(-width,width*2.5);
        Ny = random(-height,-height*3);
      }
    asteroid.add(new Asteroid(Nx,Ny));
    
    
    counter++;
    }
    counter = 0;
    while (counter < specialasteroidamount){
      if (counter%2 == 0){
      Nx = random(-width,width*2.5);
      Ny = random(height,height*3);
      }
      else{
      Nx = random(-width,width*2.5);
      Ny = random(-height,-height*3);
      }
      fast_asteroid.add(new Fast_Asteroid(Nx,Ny));
      counter++;
    }
    
    nextround++;
    println((asteroid.size()-1) + " Asteroids created");
    
  }
  if (displayroundcompletion <= 720 && displayroundcompletion > 0){
    fill(255,165,0);
    text("Round Complete",width/2-130,60);
    displayroundcompletion--;
  }

  Crosshair[0].render(x-50, y-50);
  fill(255,165,0);
  text("Current Mouse Position: " + x + ", " + y, 10, 30);
  text("Current Score: " + score, 10, 60);
  text("Round: " + nextround, width/2-85, 30);
  text("Asteroids Remaining: " + (asteroid.size()-1),10,90);
  text("Special Asteroids Remaining: " + (fast_asteroid.size()-1),10,120);
  if (gameover == 1){
    for (int i = 0; i < station.length; i++){
        station[i] = null;
        while(Fl3 < 1){
        finalscore = score;
        waittime = 1440;
        ScoreRecorder.Score(score);
        Fl3++;
        }
    }
    if (waittime <= 1440 && waittime > 0){
      //image(explosionImg[frameCount%11],((Sx/2)-51),((Sy/2)-51));
      textFont(font,200);
      text("Game Over",width/2-500,height/2);
      println("Game Over!");
      textFont(font,100);
      text("Returning to main menu in " + round(waittime/144) + " seconds",width/2-725,height/2+100);
      text("Your Score has been saved", width/2-600,height/2+200);
      textFont(font,28);
      cursor();
      waittime--;
    }
    else{
      CST = 1;
    }
  }
  }
    //IngameTime = IngameTime + 144;
    //IngameTime = (IngameTime) - (fps);
    //println(IngameTime);
    //Math.wait(10);
    //println(waiting);
  }
