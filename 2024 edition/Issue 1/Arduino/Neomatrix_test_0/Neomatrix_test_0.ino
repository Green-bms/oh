
//OH! Video Magazine. Example for NeoPixel Shield based on Adafruit_NeoMatrix
//Released on 15/11/23 by Sergio Ghirardelli

#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>
#include "muMatrix8ptRegular.h"
#include "muHeavy8ptBold.h"

#ifndef PSTR
 #define PSTR // Make Arduino Due happy
#endif

#define PIN 14

// MATRIX DECLARATION:
// Parameter 1 = width of NeoPixel matrix
// Parameter 2 = height of matrix
// Parameter 3 = pin number (most are valid)
// Parameter 4 = matrix layout flags, add together as needed:
//   NEO_MATRIX_TOP, NEO_MATRIX_BOTTOM, NEO_MATRIX_LEFT, NEO_MATRIX_RIGHT:
//     Position of the FIRST LED in the matrix; pick two, e.g.
//     NEO_MATRIX_TOP + NEO_MATRIX_LEFT for the top-left corner.
//   NEO_MATRIX_ROWS, NEO_MATRIX_COLUMNS: LEDs are arranged in horizontal
//     rows or in vertical columns, respectively; pick one or the other.
//   NEO_MATRIX_PROGRESSIVE, NEO_MATRIX_ZIGZAG: all rows/columns proceed
//     in the same order, or alternate lines reverse direction; pick one.
//   See example below for these values in action.
// Parameter 5 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_GRBW    Pixels are wired for GRBW bitstream (RGB+W NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)

  Adafruit_NeoMatrix matrix = Adafruit_NeoMatrix(8, 8, 4, 2, PIN, 
  NEO_MATRIX_TOP     + NEO_MATRIX_LEFT +
  NEO_MATRIX_COLUMNS + NEO_MATRIX_ZIGZAG +
  NEO_TILE_TOP + NEO_TILE_LEFT +
  NEO_TILE_ROWS + NEO_TILE_PROGRESSIVE,
  NEO_GRB            + NEO_KHZ800); 


//Colors declaration
const uint16_t colors[] = {
  matrix.Color(0, 0, 0),      // 0 = Black
  matrix.Color(255, 0, 0),    // 1 = Red
  matrix.Color(0, 255, 0),    // 2 = Lime
  matrix.Color(0, 0, 255),    // 3 = Blue
  matrix.Color(255, 165, 0),  // 4 = Orange
  matrix.Color(255, 255, 0),  // 5 = Yellow
  matrix.Color(128, 0, 0),    // 6 = Maroon
  matrix.Color(128, 0, 128),  // 7 = Purple
  matrix.Color(255, 0, 255),  // 8 = Fuchsia
  matrix.Color(0, 128, 0),    // 9 = Green
  matrix.Color(128, 128, 0),  // 10 = Olive
  matrix.Color(0, 0, 128),    // 11 = Navy
  matrix.Color(0, 128, 128),  // 12 = Teal
  matrix.Color(0, 255, 255),  // 13 = Aqua
  matrix.Color(128, 128, 128),// 14 = Gray
  matrix.Color(192, 192, 192),// 15 = Silver
  matrix.Color(255, 255, 255),  // 16 = White
  };
int count;
int i;
int j;
int color1;
String text1;
int c;
int x;
int y;
int pass;
bool pippo [32][8];
void setup() {
  matrix.begin();
  matrix.setTextWrap(false);
  matrix.setTextSize(1);
  matrix.setBrightness(50);
  matrix.setTextColor(colors[0]);
  matrix.fillScreen(0);
 // matrix.fillRect(0, 0, 8, 8, colors[16]);
  matrix.show();
  count=0;
  i=48;
  c=1;
  for ( x = 0; x <= 31; x++) {
      for ( y = 0; y <= 7; y++) {
          pippo [x][y] = false;
      }
    
  }

x    = matrix.width();
pass = 0;

text1 = "hello world";  
}


void loop() {

//pixel
matrix.drawPixel(0, 3, colors[c]);
matrix.drawPixel(14, 0, colors[c]);
matrix.drawPixel(30, 6, colors[c]);

matrix.show();
c++;
if (c>16) {c=1; }
delay (1000);

//random pixels

/*  int a = random(0, 32);
  int b = random(0, 8);
  int c = random(1, 16);
 // int a_old; 
 // int b_old;  
 // int c_old;

 
  if  (!pippo [a][b]) {
    matrix.drawPixel(a, b, colors[c]);
    pippo [a][b]=true;  
    matrix.show();
    count++;
    delay(20);
  } 
   

  if (count>255) {
    matrix.fillScreen(0);
    count=0;
    for ( x = 0; x <= 31; x++) {
      for ( y = 0; y <= 7; y++) {
          pippo [x][y] = false;
      }
    
  }
 } */
  

 //rectangle

/*  matrix.drawRect(0, 0, 8, 8, colors[5]);
//  matrix.drawRect(8, 0, 8, 8, colors[8]);
//  matrix.drawRect(16, 0, 8, 8, colors[11]);  
//  matrix.drawRect(24, 0, 8, 8, colors[1]);
  
//  matrix.fillRect(0, 0, 8, 8, colors[5]);
//  matrix.fillRect(8, 0, 8, 8, colors[8]);
//  matrix.fillRect(16, 0, 8, 8, colors[11]);  
//  matrix.fillRect(24, 0, 8, 8, colors[1]);

  matrix.show();*/

//circle
/*    matrix.drawCircle(3, 3, 3, colors[4]);
//    matrix.drawCircle(11, 3, 3, colors[7]);
//    matrix.drawCircle(19, 3, 3, colors[10]);
//    matrix.drawCircle(27, 3, 3, colors[14]);
//    matrix.fillCircle(3, 3, 3, colors[4]);
//    matrix.fillCircle(11, 3, 3, colors[7]);
//    matrix.fillCircle(19, 3, 3, colors[10]);
//    matrix.fillCircle(27, 3, 3, colors[14]);
    matrix.show();*/

 //char
/*  matrix.fillScreen(0); 
  matrix.setTextColor(colors[c]); 
//  matrix.print("H");
//  matrix.print("Hello");

  matrix.setCursor(0, 0); 
  matrix.print(char(i));
  matrix.setCursor(8, 0); 
  matrix.print(char(i));
  matrix.setCursor(16, 0); 
  matrix.print(char(i));
  matrix.setCursor(24, 0); 
  matrix.print(char(i));
  
  matrix.show();
  i++;
  c++;
  if (i>125) {i=48; }
  if (c>16) {c=1; }
  delay (500);*/

//scrolling text
/*  matrix.fillScreen(0);
  int lung = text1.length();
  
  matrix.setTextColor(colors[color1]);
  matrix.setCursor(j, 0);
  matrix.print(text1);
  j--;
  if(j < (-68)) {
    
    j = matrix.width();
    color1 = random(1, 16);
    }
 matrix.show();
  delay(150);*/ 



  


  //lettera
  
 /* matrix.setCursor(0, 7); 
  matrix.setTextColor(colors[c]); 
  matrix.print(char(i));
  matrix.show();
  i++;
  c++;
  if (i>125) {i=48; }
  if (c>16) {c=1; }
  delay (500);*/


  
}
