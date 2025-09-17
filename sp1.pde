/* TO DO list
- skyyger
*/
void setup() {
size(990, 430); fillBackground();

drawWhiteBoxes(leftWhiteBoxX, upperWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
drawWhiteBoxes(rightWhiteBoxX, upperWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
drawWhiteBoxes(rightWhiteBoxX, lowerWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
drawWhiteBoxes(leftWhiteBoxX, lowerWhiteBoxY, whiteBoxWidth, whiteBoxLenght);

colorBoxes(leftColorBoxX,upperWhiteBoxY, colorBoxWidth);
colorBoxes(rightColorBoxX,upperWhiteBoxY, colorBoxWidth);
colorBoxes(leftColorBoxX,lowerWhiteBoxY, colorBoxWidth);
colorBoxes(rightColorBoxX,lowerWhiteBoxY, colorBoxWidth);

drawMiddleLine();
 
displayGroupText("GROUP A",leftWhiteBoxX, upperWhiteBoxY );
displayGroupText("GROUP C",rightWhiteBoxX, upperWhiteBoxY );
displayGroupText("GROUP B",leftWhiteBoxX, lowerWhiteBoxY );
displayGroupText("GROUP D",rightWhiteBoxX, lowerWhiteBoxY );

//Sætter lande navnene ind i de hvidebokse
displayNames();

loadImages();
}
