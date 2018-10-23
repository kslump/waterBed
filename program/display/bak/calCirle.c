#include <stdio.h>
#include <math.h>

#define PI 3.14159265
#define DV 100
#define XPP (2.0 / 400)
#define YPP (3.0 / 400)
#define R 100.0 /* 单位为mm */

double xcoord[DV + 1];
double ycoord[DV + 1];
int dx[DV];
int dy[DV];

int main(int argc, char const *argv[]) {
  int cnt;

  for (int i = 0; i < DV; i++) {
    xcoord[i] = R * cos(2 * PI / DV * i);
    ycoord[i] = R * sin(2 * PI / DV * i);
  }
  xcoord[DV] = xcoord[0];
  ycoord[DV] = ycoord[0];

  for (int i = 0; i < DV; i++) {
    dx[i] = (xcoord[i + 1] - xcoord[i]) * 100 / XPP;
    dy[i] = (ycoord[i + 1] - ycoord[i]) * 100 / YPP;
  }

  for (int i = 0; i < DV; i++) {
    printf("%7d, ", dx[i]);
    if (++cnt % 10 == 0) printf("\n");
  }

  printf("\n");

  for (int i = 0; i < DV; i++) {
    printf("%7d, ", dy[i]);
    if (++cnt % 10 == 0) printf("\n");
  }

  return 0;
}
