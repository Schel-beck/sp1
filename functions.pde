void drawWhiteBoxes (int xCord, int yCord, int Width, int Lenght) {
  for (int i = 0; i < 4; i++) {
    spacing = 45 * i;
    rect(xCord, yCord + spacing, Width, Lenght);
  }
}
void colorBoxes (int xCord, int yCord, int Width) {
  for (int i = 0; i < 4; i++) {
    spacing = 45 * i;
    if (yCord == upperWhiteBoxY) {
      fill(24, 237, 242);
    } else if (yCord == lowerWhiteBoxY) {
      fill(242, 232, 24);
    }
    rect(xCord, yCord + spacing, Width, whiteBoxLenght);
  }
}
void displayGroupText (String gruppe, int xCord, int yCord) {
  PFont myFont;
  myFont = createFont("Arial fed", 20);
  textFont(myFont);
  if (yCord == upperWhiteBoxY) {
    fill(24, 237, 242);
  } else if (yCord == lowerWhiteBoxY) {
    fill(242, 232, 24);
  }
  text(gruppe, xCord + whiteBoxWidth /4  + 20, yCord - 5);
  fill(0);
}

void displayNames() {

  PFont myFont;
  myFont = createFont("Arial fed", 28);
  textFont(myFont);
  String[] groups = loadStrings("lande.txt");

  for (int i = 0; i < 4; i++) {
    spacing = 35 +  + 45 * i;
    text(groups[i], leftWhiteBoxX + 30, upperWhiteBoxY + spacing);
  }
  for (int i = 0; i < 4; i++) {
    spacing = 35 +  45 * i;
    text(groups[i+4], leftWhiteBoxX + 30, lowerWhiteBoxY + spacing);
  }
  for (int i = 0; i < 4; i++) {
    spacing = 35 + 45 * i ;
    text(groups[i+8], rightWhiteBoxX + 30, upperWhiteBoxY + spacing);
  }
  for (int i = 0; i < 4; i++) {
    spacing = 35 + 45 * i;
    text(groups[i+12], rightWhiteBoxX + 30, lowerWhiteBoxY + spacing);
  }
}

void loadImages() {
  String[] picGroups = {"Russia.png", "SaudiArabia.png", "Egypt.png", "Uruguay.png",
    "Portugal.png", "Spain.png", "Morocco.png", "Iran.png", "France.png", "Australia.png",
    "Peru.png", "Denmark.png", "Argentina.png", "Iceland.png", "Croatia.png", "Nigeria.png"};
  //laver et for loop for hver gruppe
  for (int i = 0; i < 4; i++) {
    spacing = 45 * i;
    PImage  img1;
    img1 = loadImage(picGroups[i]);
    img1.resize(80, 40);
    image(img1, 20, upperWhiteBoxY + spacing);
  }
  for (int i = 0; i < 4; i++) {
    spacing = 45 * i;
    PImage  img1;
    img1 = loadImage(picGroups[i+4]);
    img1.resize(80, 40);
    image(img1, 20, lowerWhiteBoxY + spacing);
  }
  for (int i = 0; i < 4; i++) {
    spacing = 45 * i;
    PImage  img1;
    img1 = loadImage(picGroups[i+8]);
    img1.resize(80, 40);
    image(img1, 510, upperWhiteBoxY + spacing);
  }
  for (int i = 0; i < 4; i++) {
    spacing = 45 * i;
    PImage  img1;
    img1 = loadImage(picGroups[i+12]);
    img1.resize(80, 40);
    image(img1, 510, lowerWhiteBoxY + spacing);
  }
}

void drawMiddleLine() {
  stroke(255);
  strokeWeight(3);
  line(leftColorBoxX + 20, 420, leftColorBoxX + 20, 0);
}


void fillBackground() {
  background(45, 45, 45);
  noStroke();
  //mørke blå 'background'
  fill(20, 20, 70);
  rect(20, 0, 960, 420);
  fill(255);
}

void draw16Boxes() {
  drawWhiteBoxes(leftWhiteBoxX, upperWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
  drawWhiteBoxes(rightWhiteBoxX, upperWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
  drawWhiteBoxes(rightWhiteBoxX, lowerWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
  drawWhiteBoxes(leftWhiteBoxX, lowerWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
  colorBoxes(leftColorBoxX, upperWhiteBoxY, colorBoxWidth);
  colorBoxes(rightColorBoxX, upperWhiteBoxY, colorBoxWidth);
  colorBoxes(leftColorBoxX, lowerWhiteBoxY, colorBoxWidth);
  colorBoxes(rightColorBoxX, lowerWhiteBoxY, colorBoxWidth);
}


void display4GroupTexts() {
  displayGroupText("GROUP A", leftWhiteBoxX, upperWhiteBoxY );
  displayGroupText("GROUP C", rightWhiteBoxX, upperWhiteBoxY );
  displayGroupText("GROUP B", leftWhiteBoxX, lowerWhiteBoxY );
  displayGroupText("GROUP D", rightWhiteBoxX, lowerWhiteBoxY );
}

void SP1() {
  //overordnet funktion som  viser hvad programet gør
  fillBackground();
  draw16Boxes();
  drawMiddleLine();
  display4GroupTexts();
  //Sætter lande navnene ind i de hvidebokse
  displayNames();
  loadImages();
}
