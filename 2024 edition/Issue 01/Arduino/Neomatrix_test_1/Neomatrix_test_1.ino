
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

static const uint8_t PROGMEM
    mono_bmp[][8] =
    {
  {   // 0: checkered 1
      B10101010,
      B01010101,
      B10101010,
      B01010101,
      B10101010,
      B01010101,
      B10101010,
      B01010101,
      },

  {   // 1: checkered 2
      B01010101,
      B10101010,
      B01010101,
      B10101010,
      B01010101,
      B10101010,
      B01010101,
      B10101010,
      },

  {   // 2: smiley
      B00111100,
      B01000010,
      B10100101,
      B10000001,
      B10100101,
      B10011001,
      B01000010,
      B00111100 },

  {   // 3: neutral
      B00111100,
      B01000010,
      B10100101,
      B10000001,
      B10111101,
      B10000001,
      B01000010,
      B00111100 },

  {   // 4; frowny
      B00111100,
      B01000010,
      B10100101,
      B10000001,
      B10011001,
      B10100101,
      B01000010,
      B00111100 },

{   // 5; empty heart
      B00000000,
      B01000100,
      B10101010,
      B10010010,
      B10000010,
      B01000100,
      B00101000,
      B00010000 },

{   // 6; filled heart
      B00000000,
      B01000100,
      B11101110,
      B11111110,
      B11111110,
      B01111100,
      B00111000,
      B00010000 },

 {   // 7; dog
      B00100000,
      B11100000,
      B11100001,
      B00111110,
      B00111110,
      B00111110,
      B00100010,
      B01100110 },

 {   // 8; bird
      B01110000,
      B11010000,
      B01110000,
      B01111000,
      B01111111,
      B01111110,
      B01111000,
      B00100000 },

 {   // 9; plug
      B00101000,
      B00101000,
      B01111100,
      B01000100,
      B01000100,
      B01000100,
      B00111000,
      B00010000 },

  {   // 10; locked
      B00001100,
      B00010010,
      B00010010,
      B00111111,
      B00100001,
      B00100001,
      B00100001,
      B00111111 },

 {   // 11; unlocked
      B01100000,
      B10010000,
      B10010000,
      B00111111,
      B00100001,
      B00100001,
      B00100001,
      B00111111 },
      
 {   // 12; cat
      B10001000,
      B11111000,
      B10101000,
      B01110001,
      B00100001,
      B01111001,
      B01111101,
      B10111110 },

 {   // 13; clock
      B00111100,
      B01000010,
      B10010001,
      B10010001,
      B10011101,
      B10000001,
      B01000010,
      B00111100 },

  {   // 14; scissors
      B00000000,
      B01000001,
      B10100010,
      B01110100,
      B00011000,
      B01110100,
      B10100010,
      B01000001 },

 {   // 15; save
      B01111110,
      B10100101,
      B10011001,
      B10000001,
      B10111101,
      B10100101,
      B10100101,
      B11111111 },

{   // 16; home
      B00000000,
      B00011000,
      B00111100,
      B01111110,
      B11111111,
      B01111110,
      B01100110,
      B01100110 },

{   // 17; fleur
      B01010100,
      B11111110,
      B11111110,
      B11111110,
      B01111100,
      B00010000,
      B00011000,
      B00010000 },

 {   // 18; car
      B00000000,
      B00111100,
      B01000010,
      B01000010,
      B11111111,
      B10011001,
      B11111111,
      B01000010 },

 {   // 19; musical notes
      B00000001,
      B00001111,
      B00111001,
      B00100001,
      B00100111,
      B00100111,
      B11100011,
      B01100000 },

 {   // 20; bed
      B00000000,
      B10000000,
      B10000000,
      B10000001,
      B11111111,
      B11111111,
      B11111111,
      B10000001 },

{   // 21; umbrella
      B00111000,
      B01111100,
      B11111110,
      B11111110,
      B00010000,
      B00010000,
      B10010000,
      B01100000 },

{   // 22; battery
      B00000000,
      B11111100,
      B11000010,
      B11100011,
      B11110011,
      B11111010,
      B11111100,
      B00000000 },

{   // 23; on_off
      B00010000,
      B01010100,
      B10010010,
      B10000010,
      B10000010,
      B01000100,
      B00111000,
      B00000000 },

{   // 24; up arrow
      B00010000,
      B00111000,
      B01111100,
      B11111110,
      B00111000,
      B00111000,
      B00111000,
      B00111000 },

{   // 25; down arrow
      B00111000,
      B00111000,
      B00111000,
      B00111000,
      B11111110,
      B01111100,
      B00111000,
      B00010000 },

{   // 26; right arrow
      B00001000,
      B00001100,
      B11111110,
      B11111111,
      B11111110,
      B00001100,
      B00001000,
      B00000000 },

{   // 27; left arrow
      B00010000,
      B00110000,
      B01111111,
      B11111111,
      B01111111,
      B00110000,
      B00010000,
      B00000000 },

{   // 28; female
      B00111000,
      B01000100,
      B01000100,
      B01000100,
      B00111000,
      B00010000,
      B00111000,
      B00010000 },

{   // 29; male
      B00001110,
      B00000110,
      B01111010,
      B10001000,
      B10001000,
      B10001000,
      B10001000,
      B01110000 },

    };

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
  matrix.setBrightness(255);
  matrix.setTextColor(colors[1]);
  matrix.fillScreen(0);
 // matrix.fillRect(0, 0, 32, 8, colors[16]);
  matrix.show();

}


void loop() {
/*matrix.fillScreen(0);
matrix.drawBitmap(0, 0, mono_bmp[i], 8, 8, colors[1]);
matrix.drawBitmap(8, 0, mono_bmp[i], 8, 8, colors[2]);
matrix.drawBitmap(16, 0, mono_bmp[i], 8, 8, colors[3]);
matrix.drawBitmap(24, 0, mono_bmp[i], 8, 8, colors[5]);

//  matrix.drawBitmap(0, 0, mono_bmp[i], 8, 8, colors[c]);
  matrix.show();
  i++;
  c++;
  if (i>29) {i=0; }
  if (c>16) {c=1; }
  delay (1000);*/
  
  
}
