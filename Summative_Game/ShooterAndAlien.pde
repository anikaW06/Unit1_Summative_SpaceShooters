class ShooterAndAlien {
  int AlienCount = 5;        
  int[] Ypos = new int [AlienCount];
  int[] Xpos = new int [AlienCount];
  PImage alien;
  PImage shooter;
  PImage sky;
  PImage trophy;
  int bulletY = 600;
  int score = 5;            //starting score


  ShooterAndAlien ()
  {
    for (int i=0; i < AlienCount; i = i + 1 )
    {
      Xpos[i] = (int) random (0, 900);
    }
    for (int i=0; i < AlienCount; i = i + 1 )
    {
      Ypos[i] = (int) random (0, 750);
    }
    alien= loadImage("alien.png");
    alien.resize(200, 200);
    shooter= loadImage("shooter.png");
    shooter.resize(200, 200);
    trophy= loadImage("trophy.png");
    trophy.resize(400, 500);
    sky= loadImage("sky.png");
    sky.resize(width, width);
  }


  void FallDown ()                      //Fall down for practice game
  {
    for (int i=0; i < AlienCount; i = i + 1 )
    {

      Ypos[i] = Ypos[i] + 2;      //alien speed
      if (Ypos [i] > 750) 
      {
        Xpos[i] = (int) random (0, 900);
        Ypos[i] = -50;             //if hits bottom, respawn
        score=score-3;              //How many points lost
      }
      float D = dist(mouseX, bulletY, Xpos[i], Ypos[i]); //alien and bullet collide
      if (keyPressed) {
        if (D < 30 + 150) { //where does the bullet have to hit the alien
          score +=1;
          Ypos[i]=-100;   //send aliens to the top
          Xpos[i] = (int) random (0, 900); //random alien X
          bulletY = 600;
        }
      }
    }
  }
  void FallDownFaster() //for final game, aliens fall faster
  {
    for (int i=0; i < AlienCount; i = i + 1 )
    {
      Ypos[i] = Ypos[i] + 5; //speed of aliens
      if (Ypos [i] > 750) 
      {
        Xpos[i] = (int) random (0, 900);
        Ypos[i] = -50;             //if hits bottom, respawn
        score=score-3;              //How many points lost
      }
      float D = dist(mouseX, bulletY, Xpos[i], Ypos[i]); //alien and bullet collide
      if (keyPressed) {
        if (D < 50 + 150) { //where does the bullet have to hit the alien
          score +=1;
          Ypos[i]=-100;
          Xpos[i] = (int) random (0, 900); //random alien X
          bulletY = 600;
        }
      }
    }
  }
  void Draw()
  {

    for (int i=0; i < AlienCount; i = i + 1 )
    {
      image(alien, Xpos[i], Ypos[i]);          //alien
    }
    image(shooter, mouseX - 100, 580); //draw shooter
    fill(250, 250, 250);               //Draw score
    rect(0, 0, 110, 30);
    fill(0, 0, 0);
    textSize(25);
    text("Score:" +score, 1, 25);
  }
  void Shoot() {              //bullet
    fill(200, 200, 100);
    rect(mouseX, bulletY, 10, 50);
    bulletY= bulletY - 20;    //bullet speed
  }

  void GameOver() {          //game over
    if (score <=0) {
      background(0, 0, 0);
      image(sky, 0, 0);
      textSize(170);
      fill(237, 10, 10);
      text("GAME OVER", 0, 400);
      GameOver.play();
    }
  }
  void Winner() {
    if (score>= 0) { 
      background(0, 0, 0);
      image(sky, 0, 0);
      textSize(120);
      fill(250, 250, 250);
      text("Congratulations!!!", 0, 200);
      image(trophy, 300, 300);
      Winner.play();
    }
  }
  void ScoreStart() {
    score = 7;                            //Set score to 5 when final game starts
  }
}
