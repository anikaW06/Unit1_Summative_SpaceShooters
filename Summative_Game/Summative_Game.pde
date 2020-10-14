import ddf.minim.*;
Minim minim;
AudioPlayer Shoot;
AudioPlayer GameOver;
AudioPlayer Winner;

Button next = new Button();
Instructions text = new Instructions();
ShooterAndAlien game;
int Scene = 0;
boolean Fired = false;

PImage trophy;
PImage sky;

void setup ()
{
  size(1000, 800);
  sky=loadImage("sky.png");
  sky.resize(width, width);
  game = new ShooterAndAlien();
  minim = new Minim(this);
  Shoot = minim.loadFile("Shoot.mp3");
  minim = new Minim(this);
  GameOver = minim.loadFile("GameOver.mp3");
  minim = new Minim(this);
  Winner = minim.loadFile("Winner.mp3");
}

void draw () 
{
  if (Scene ==0) //First Page of Instruction
  {
    text.Page1();
    next.Draw();
  }
  if (Scene ==1) //Second Page of instructions
  {
    text.Page2();
    next.Draw();
  }
  if (Scene ==2) //Third Page of instructions
  {
    text.Page3();
    next.Draw();
  }
  if (Scene ==3) //Final page of instructions
  {
    text.Page4();
    next.Start();
  }
  if (Scene ==4) //Practice Game
  {
    image(sky, 0, 0);
    game.Draw();
    game.FallDown(); // aliens fall down
    next.Game(); // to go to main game
    if (Fired == true) {
      Shoot.play();
      if (keyPressed) {
        game.Shoot();
      }
    }
  }
  if (Scene ==5) //Pre-game reminder
  {
    text.StartGame();
    next.Start();
    game.ScoreStart();
  }
  if (Scene==6)
  {
    image(sky, 0, 0);
    if (game.score >= 0) {
      game.Draw();
      game.FallDownFaster(); // aliens fall down faster for final game 
      if (Fired == true) {
        Shoot.play();
        if (keyPressed) {
          game.Shoot();
        }
      }
    }
    if (game.score < 1) {
      game.GameOver(); // If score < 1, write game over on screen
    }
    if (game.score >= 50) {
      game.Winner(); //game won
      game.score =500;
    }
  }
}

void keyPressed()
{
  Shoot.rewind();   // rewind audio to play again
  Fired = true;
}
void mouseReleased()  //Button
{
  if (mouseX > 800)
  {
    {
      if (mouseY > 730)
      {
        Scene = Scene + 1;
      }
    }
  }
}
