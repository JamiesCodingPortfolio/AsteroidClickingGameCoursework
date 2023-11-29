int fsyes;
void Settings(){
  //To ensure the program does not break
  if (fsyes == 0){
    tickTrue = 0;
  }
  else{
    tickTrue = 1;
  }
  
  
  fill(0);
  background(200); 
  text("Current Mouse Position: " + x + ", " + y, 10, 50);
  textFont(font, 44);
  
  
  //Fullscreen Clickbox
  image(FullscreenImg, ((Sx/2)-200), (Sy/10));
  fill(220,220,220);
  
  
  
  //Main menu box
  rect(50, (Sy-200), 250, 100);
  //Save box
  rect(((Sx/2)-160), (Sy-200), 320, 100);
  //Text for boxes comes here to keep colour consistent
  fill(250,0,0);
  text(("Save"), ((Sx/2)-40), (Sy-135));
  text(("Main Menu"), 70, (Sy-135));
  
  if (tickTrue == 1){
    image(tick,((Sx/2)+135),179);
  }
   //Perception that it can be clicked
   
   if(x > ((Sx/2)-150) && y > ((Sy/2)-350) && x < ((Sx/2)+155) && y < ((Sy/2)-295)){
     cursor(HAND);
   
   }
   if (x > 50 && y > (Sy-200) && x < 300 && y < (Sy-100)){
     cursor(HAND);
     
   }
   if (x > ((Sx/2)-150) && y > ((Sy/2)-350) && x < ((Sx/2)+155) && y < ((Sy/2)-295)){
     cursor(HAND);
     
   }
   
   else{
     cursor(ARROW);
   }
}

//
void SettingsClicks(){
  
  if (tickTrue == 0){
    
    if (x > ((Sx/2)-150) && y > ((Sy/2)-350) && x < ((Sx/2)+155) && y < ((Sy/2)-295)){
      tickTrue = 1;
      fsyes = 1;
    }
    
  }
  
  else{
    if (x > ((Sx/2)-150) && y > ((Sy/2)-350) && x < ((Sx/2)+155) && y < ((Sy/2)-295)){
      tickTrue = 0;
      fsyes = 0;
    }
    
  }
  if (x > 50 && y > (Sy-200) && x < 300 && y < (Sy-100)){
    CST = 1;
  }
  println("Current fsyes = " + fsyes);
  
}

void SettingsHover(){
  
  //Fl Here stands for First Load a.k.a when settings is first launched, FS stands for fullscreen to keep track of which files are used for animations, also applies to
  while(Fl < 1){
    
    println("Fullscreen Text Animation Loaded");
    Fs1 = loadImage("Fullscreen-2.png");
    Fs2 = loadImage("Fullscreen-3.png");
    Fs3 = loadImage("Fullscreen-4.png");
    Fs4 = loadImage("Fullscreen-5.png");
    Fs5 = loadImage("Fullscreen-6.png");
    Fl++;
    
  }
  if (x > ((Sx/2)-150) && y > ((Sy/2)-350) && x < ((Sx/2)+155) && y < ((Sy/2)-295)){
    int time = 0;
    if (time == 0){
      FullscreenImg = Fs1;
    }
    else if (time == 24){
      FullscreenImg = Fs2;
    }
    else if (time == 48){
      FullscreenImg = Fs3;
    }
    else if (time == 72){
      FullscreenImg = Fs4;
    }
    else if (time == 96){
      FullscreenImg = Fs5;
    }
    else if (time == 108){
      time = 0;
    }
    else{
      time++;
    }
  }
  else{
    FullscreenImg = Fs0;
  }
  FullscreenImg.resize((1600/4),(900/4));
}
