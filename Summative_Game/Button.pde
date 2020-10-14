class Button {

  Button() {
  }

  void Draw() {
    fill(200, 200, 200);
    rect(850, 730, 150, 70);
    fill(0, 0, 0);
    rect(860, 755, 80, 20);
    triangle(920, 740, 920, 790, 990, 765);
  }

  void Start() {
    rect(850, 730, 150, 70);
    fill(10, 10, 10);
    text("Start", 880, 775);
  }
  void Game() {
    fill(250, 250, 250);
    rect(900, 760, 100, 40);
    fill(10, 10, 10);
    text("Next", 920, 795);
  }
}
