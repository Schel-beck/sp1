/* TO DO list
- skyyger
- String funktioner
- tykkere text for group text
*/
void setup() {
size(990, 430); background(45,45,45); noStroke(); 
//mørke blå 'background'
fill(20, 20, 70); rect(20,0,960,420); fill(255);

whiteBoxes(leftWhiteBoxX, upperWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
whiteBoxes(rightWhiteBoxX, upperWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
whiteBoxes(rightWhiteBoxX, lowerWhiteBoxY, whiteBoxWidth, whiteBoxLenght);
whiteBoxes(leftWhiteBoxX, lowerWhiteBoxY, whiteBoxWidth, whiteBoxLenght);

colorBoxes(leftColorBoxX,upperWhiteBoxY, colorBoxWidth);
colorBoxes(rightColorBoxX,upperWhiteBoxY, colorBoxWidth);
colorBoxes(leftColorBoxX,lowerWhiteBoxY, colorBoxWidth);
colorBoxes(rightColorBoxX,lowerWhiteBoxY, colorBoxWidth);

//middle line
stroke(255); strokeWeight(3); line(leftColorBoxX + 20, 420, leftColorBoxX + 20, 0);
 
gruppeText("GROUP A",leftWhiteBoxX, upperWhiteBoxY );
gruppeText("GROUP C",rightWhiteBoxX, upperWhiteBoxY );
gruppeText("GROUP B",leftWhiteBoxX, lowerWhiteBoxY );
gruppeText("GROUP D",rightWhiteBoxX, lowerWhiteBoxY );

//Sætter lande navnene ind i de hvidebokse
textSize(30); String[] groups = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URAGUAY",
"PORTUGAL", "SPAIN", "MOROCCO", "IRAN", "FRANCE", "AUSTRALIA", "PERU", "DENMARK",
"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};
for(int i = 0; i < 4; i++) { spacing = 35 +  + 45 * i;
text(groups[i], leftWhiteBoxX + 30, upperWhiteBoxY + spacing);}
for(int i = 0; i < 4; i++) { spacing = 35 +  45 * i;
text(groups[i+4], leftWhiteBoxX + 30, lowerWhiteBoxY + spacing);}
for(int i = 0; i < 4; i++) { spacing = 35 + 45 * i ; 
text(groups[i+8], rightWhiteBoxX + 30, upperWhiteBoxY + spacing);}
for(int i = 0; i < 4; i++) { spacing = 35 + 45 * i;
text(groups[i+12], rightWhiteBoxX + 30, lowerWhiteBoxY + spacing);}

//loadImages
String[] picGroups = {"Russia.png", "SaudiArabia.png", "Egypt.png", "Uruguay.png", 
"Portugal.png","Spain.png", "Morocco.png","Iran.png","France.png","Australia.png",
"Peru.png","Denmark.png","Argentina.png","Iceland.png","Croatia.png","Nigeria.png"};
for (int i = 0; i < 4; i++) { spacing = 45 * i;
PImage  img1; img1 = loadImage(picGroups[i]); img1.resize(80, 40);
image(img1, 20, upperWhiteBoxY + spacing);}
for (int i = 0; i < 4; i++) { spacing = 45 * i;
PImage  img1; img1 = loadImage(picGroups[i+4]); img1.resize(80, 40);
image(img1, 20, lowerWhiteBoxY + spacing);}
for (int i = 0; i < 4; i++) { spacing = 45 * i;
PImage  img1; img1 = loadImage(picGroups[i+8]); img1.resize(80, 40);
image(img1, 510, upperWhiteBoxY + spacing);}
for (int i = 0; i < 4; i++) { spacing = 45 * i;
PImage  img1; img1 = loadImage(picGroups[i+12]); img1.resize(80, 40);
image(img1, 510, lowerWhiteBoxY + spacing);} }
