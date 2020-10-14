class Instructions {

  Instructions() {
  }

  void Page1() {
    background(100, 100, 100);
    fill(250, 250, 250);
    textSize(45);
    text("Monstrous aliens are descending on Earth", 40, 300);
    text("You have to protect your home", 130, 400);
    textSize(30);
    text("(click the arrow to continue)", 270, 500);
  }
  void Page2() {
    background(100, 100, 100);
    textSize(45);
    fill(250, 250, 250);
    text("Use the 'space' key to shoot.", 200, 200);
    text("Use your mouse to move from side to side.", 50, 300);
    textSize(54);
    text("Don't let the aliens touch the ground!", 5, 500);
    textSize(30);
    text("(click the arrow to continue)", 330, 600);
  }

  void Page3 () {
    background(100, 100, 100);
    textSize(54);
    fill(250, 250, 250);
    text("Earn 1 point for every alien killed ", 70, 200);
    text("but lose 3 points every time an alien", 25, 300);
    text(" reaches the ground.", 200, 400);
    textSize(30);
    text("(click the arrow to continue)", 270, 500);
  }
  void Page4 () {
    background(100, 100, 100);
    textSize(55);
    fill(250, 250, 250);
    text("If your score hits 0, GAME OVER", 80, 200);
    text("Lets start with a practice", 170, 350);
    textSize(30);
    text("(click start to practice)", 320, 600);
  }
  void StartGame() {
    background(100, 100, 100);
    textSize(45);
    fill(250, 250, 250);
    text("Quick! More Aliens are coming,", 170, 150);
    text("Kill 50 aliens to win", 275, 250);
    text("But remember, you lose 3 points,", 100, 350);
    text("every time an alien reaches the ground", 70, 450);
    textSize(30);
    text("Ready for the final game?", 330, 550);
    text("(click start if you are ready)", 320, 600);
  }
}
