#include <stdio.h>
#include <stdlib.h>

#define MAX_COLORS 16

typedef struct
{
  int red;
  int green;
  int blue;
} Color;

int main()
{
  // Create an array of colors
  Color colors[MAX_COLORS];

  // Populate the array with the colors of nature
  colors[0].red = 220;
  colors[0].green = 214;
  colors[0].blue = 150;

  colors[1].red = 245;
  colors[1].green = 199;
  colors[1].blue = 149;

  colors[2].red = 247;
  colors[2].green = 173;
  colors[2].blue = 111;

  colors[3].red = 210;
  colors[3].green = 190;
  colors[3].blue = 147;

  colors[4].red = 249;
  colors[4].green = 155;
  colors[4].blue = 104;

  colors[5].red = 254;
  colors[5].green = 134;
  colors[5].blue = 79;

  colors[6].red = 227;
  colors[6].green = 148;
  colors[6].blue = 68;

  colors[7].red = 243;
  colors[7].green = 99;
  colors[7].blue = 68;

  colors[8].red = 200;
  colors[8].green = 145;
  colors[8].blue = 81;

  colors[9].red = 203;
  colors[9].green = 119;
  colors[9].blue = 61;

  colors[10].red = 181;
  colors[10].green = 187;
  colors[10].blue = 125;

  colors[11].red = 149;
  colors[11].green = 138;
  colors[11].blue = 117;

  colors[12].red = 135;
  colors[12].green = 172;
  colors[12].blue = 97;

  colors[13].red = 163;
  colors[13].green = 144;
  colors[13].blue = 83;

  colors[14].red = 100;
  colors[14].green = 180;
  colors[14].blue = 135;

  colors[15].red = 108;
  colors[15].green = 129;
  colors[15].blue = 90;

  // Print out the colors
  printf("Nature's Palette: \n");
  int i;
  for(i=0; i<MAX_COLORS; i++)
  {
    printf("(R: %d, G: %d, B: %d)\n", colors[i].red, colors[i].green, colors[i].blue);
  }

  return 0;
}