//Executes main menu screen, used upon startup and if player chooses to exit to the menu
class MenuA {


  void main() {


    fill(0);
    background(200);
    text("Current Mouse Position: " + x + ", " + y, 10, 30);
    textFont(font, 28);
    if (keyPressed) {
      if (key == 's' || key == 'S') {
        exit();
      }
    } else {
    }
    //Commands below add to usability and gives the user the perception that they're actually selecting something
    //EXIT Cursor
    if (x > (Sx-125) && y > 925 && x < (Sx-25) && y < 975) {
      cursor(HAND);
    }
    //NEW GAME Cursor
    else if (x > 25 && y > 200 && x < 225 && y < 250) {
      cursor(HAND);
    }
    //LOAD GAME Cursor
    else if (x > 25 && y > 300 && x < 225 && y < 350) {
      cursor(HAND);
    }
    //SETTINGS Cursor
    else if (x > 25 && y > 400 && x < 225 && y < 450) {
      cursor(HAND);
    }
    //Triggers mouse to be a normal arrow
    else {
      cursor(ARROW);
    }
    //Buttons placed after here to keep colour consistent
    fill(220, 220, 220);
    //EXIT button
    rect(Sx-125, 925, 100, 50);
    //NEW GAME button
    rect(25, 200, 200, 50);
    //LOAD GAME button
    rect(25, 300, 200, 50);
    //SETTINGS button
    rect(25, 400, 200, 50);
    //TEXT for boxes comes here and is kept together to keep colour consistent
    fill(255, 0, 0);
    textFont(font,60);
    
    text("Current High Score: " + currenthighscore, 25,140);
    text("Score updates after program restarts", 25, 1040);
    textFont(font,28);
    text("Exit", (Sx-95), 960);
    text("New Game", 65, 235);
    text("Load Game", 62.5, 335);
    text("Settings", 80, 435);
  }
}
class MenuB {

  void Clicks() {

    //EXIT Clickable
    if (x > (Sx-125) && y > 925 && x < (Sx-25) && y < 975) {
      exit();
    }
    //NEW GAME Clickable
    else if (x > 25 && y > 200 && x < 225 && y < 250) {
      CST = 3;
    }
    //LOAD GAME Clickable
    else if (x > 25 && y > 300 && x < 225 && y < 350) {
    }
    //SETTINGS Clickable
    else if (x > 25 && y > 400 && x < 225 && y < 450) {
      CST = 2;
    } 
    else {}
  }
}
