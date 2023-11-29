String [] scores1;
int [] scores;
int newscore;
String scoresstring;
class High_Score{
  
  void Score(int Score){
    
    scores1 = loadStrings("highscores.txt");
    scores = int(scores1);
    
    for (int i = 0; i < scores.length; i++){
      
      if (Score - scores[i] > 0){
        newscore = Score;
      }
      else{}
      
    }
    scoresstring = str(newscore);
    String [] Score2 = new String[1];
    Score2[0] = scoresstring;
    saveStrings("/data/highscores.txt", Score2);
    
  }
}
