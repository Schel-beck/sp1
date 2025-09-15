
void whiteBoxes (int xCord, int yCord, int Width, int Lenght) {
  for (int i = 0; i < 4; i++) {
  spacing = 45 * i;
  rect(xCord, yCord + spacing, Width, Lenght);}
}
void colorBoxes (int xCord, int yCord, int Width) {
  for (int i = 0; i < 4; i++) { spacing = 45 * i;
    if (yCord == upperWhiteBoxY)  {
    fill(24, 237, 242); }
    else if(yCord == lowerWhiteBoxY) {
     fill(242, 232, 24); 
    }
  rect(xCord, yCord + spacing, Width, whiteBoxLenght);}
}
void gruppeText (String gruppe, int xCord, int yCord) {
 textSize(20);
  if (yCord == upperWhiteBoxY)  {
    fill(24, 237, 242); }
    else if(yCord == lowerWhiteBoxY) {
     fill(242, 232, 24); 
    }
     text(gruppe, xCord + whiteBoxWidth /4  + 20, yCord - 5);
     fill(0);
}
