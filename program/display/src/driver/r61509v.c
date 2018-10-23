#include <include.h>

void tftPinRead(void) {
  stmGpioAL.p04 = INPUT_PULL;  // 14
  stmGpioAL.p05 = INPUT_PULL;  // 12
  stmGpioAL.p06 = INPUT_PULL;  // 10
  stmGpioAL.p07 = INPUT_PULL;  // 8
  stmGpioAH.p08 = INPUT_PULL;  // 11
  stmGpioAH.p09 = INPUT_PULL;  // 13
  stmGpioAH.p10 = INPUT_PULL;  // 15
  stmGpioBL.p00 = INPUT_PULL;  // 6
  stmGpioBL.p01 = INPUT_PULL;  // 4
  stmGpioBL.p02 = INPUT_PULL;  // 2
  stmGpioBH.p10 = INPUT_PULL;  // 0
  stmGpioBH.p11 = INPUT_PULL;  // 1
  stmGpioBH.p12 = INPUT_PULL;  // 3
  stmGpioBH.p13 = INPUT_PULL;  // 5
  stmGpioBH.p14 = INPUT_PULL;  // 7
  stmGpioBH.p15 = INPUT_PULL;  // 9

  TFTD00 = 1;
  TFTD01 = 1;
  TFTD02 = 1;
  TFTD03 = 1;
  TFTD04 = 1;
  TFTD05 = 1;
  TFTD06 = 1;
  TFTD07 = 1;
  TFTD08 = 1;
  TFTD09 = 1;
  TFTD10 = 1;
  TFTD11 = 1;
  TFTD12 = 1;
  TFTD13 = 1;
  TFTD14 = 1;
  TFTD15 = 1;
}

void tftPinWrite(void) {
  stmGpioAL.p04 = OUTPUT_GPPPMAX;  // 14
  stmGpioAL.p05 = OUTPUT_GPPPMAX;  // 12
  stmGpioAL.p06 = OUTPUT_GPPPMAX;  // 10
  stmGpioAL.p07 = OUTPUT_GPPPMAX;  // 8
  stmGpioAH.p08 = OUTPUT_GPPPMAX;  // 11
  stmGpioAH.p09 = OUTPUT_GPPPMAX;  // 13
  stmGpioAH.p10 = OUTPUT_GPPPMAX;  // 15
  stmGpioBL.p00 = OUTPUT_GPPPMAX;  // 6
  stmGpioBL.p01 = OUTPUT_GPPPMAX;  // 4
  stmGpioBL.p02 = OUTPUT_GPPPMAX;  // 2
  stmGpioBH.p10 = OUTPUT_GPPPMAX;  // 0
  stmGpioBH.p11 = OUTPUT_GPPPMAX;  // 1
  stmGpioBH.p12 = OUTPUT_GPPPMAX;  // 3
  stmGpioBH.p13 = OUTPUT_GPPPMAX;  // 5
  stmGpioBH.p14 = OUTPUT_GPPPMAX;  // 7
  stmGpioBH.p15 = OUTPUT_GPPPMAX;  // 9
}

static void tftWrite(uint16_t dat) {
  TFTnCS = 0;
  TFTD00 = (dat & 0x8000) >> 15;
  TFTD01 = (dat & 0x4000) >> 14;
  TFTD02 = (dat & 0x2000) >> 13;
  TFTD03 = (dat & 0x1000) >> 12;
  TFTD04 = (dat & 0x0800) >> 11;
  TFTD05 = (dat & 0x0400) >> 10;
  TFTD06 = (dat & 0x0200) >> 9;
  TFTD07 = (dat & 0x0100) >> 8;
  TFTD08 = (dat & 0x0080) >> 7;
  TFTD09 = (dat & 0x0040) >> 6;
  TFTD10 = (dat & 0x0020) >> 5;
  TFTD11 = (dat & 0x0010) >> 4;
  TFTD12 = (dat & 0x0008) >> 3;
  TFTD13 = (dat & 0x0004) >> 2;
  TFTD14 = (dat & 0x0002) >> 1;
  TFTD15 = (dat & 0x0001) >> 0;
  TFTWR = 0;
  TFTWR = 1;
  TFTnCS = 1;
}

static uint16_t tftRead(void) {
  uint32_t ia, ib;
  uint16_t dat = 0;

  tftPinRead();
  TFTDC = 1;
  TFTnCS = 0;
  TFTRD = 0;
  // delay(5);
  ia = kreg32(STM_GPIOA_IDR);
  ib = kreg32(STM_GPIOB_IDR);
  if (ia & (1 << 10)) dat |= (1 << 0);
  if (ia & (1 << 4)) dat |= (1 << 1);
  if (ia & (1 << 9)) dat |= (1 << 2);
  if (ia & (1 << 5)) dat |= (1 << 3);
  if (ia & (1 << 8)) dat |= (1 << 4);
  if (ia & (1 << 6)) dat |= (1 << 5);
  if (ib & (1 << 15)) dat |= (1 << 6);
  if (ia & (1 << 7)) dat |= (1 << 7);
  if (ib & (1 << 14)) dat |= (1 << 8);
  if (ib & (1 << 0)) dat |= (1 << 9);
  if (ib & (1 << 13)) dat |= (1 << 10);
  if (ib & (1 << 1)) dat |= (1 << 11);
  if (ib & (1 << 12)) dat |= (1 << 12);
  if (ib & (1 << 2)) dat |= (1 << 13);
  if (ib & (1 << 11)) dat |= (1 << 14);
  if (ib & (1 << 10)) dat |= (1 << 15);
  TFTRD = 1;
  delay(2);
  tftPinWrite();
  TFTnCS = 1;

  return dat;
}

static void tftRegWrite(uint16_t reg) {
  TFTDC = 0;
  tftWrite(reg);
}

static void tftDatWrite(uint16_t dat) {
  TFTDC = 1;
  tftWrite(dat);
}

/*
// 横屏
void tftSetPos(uint16_t x, uint16_t y)
{
    tftRegWrite(0x2A);
    tftDatWrite(x >> 8); tftDatWrite(x & 0xff);
    tftDatWrite(0x01); tftDatWrite(0xDF);
    tftRegWrite(0x2B);
    tftDatWrite(y >> 8); tftDatWrite(y & 0xff);
    tftDatWrite(0x01); tftDatWrite(0x3F);
}
*/

// 竖屏
void tftSetPos(uint16_t x, uint16_t y) {
  tftRegWrite(0x2A);
  tftDatWrite(x >> 8);
  tftDatWrite(x & 0xff);
  tftDatWrite(0x01);
  tftDatWrite(0x3F);
  tftRegWrite(0x2B);
  tftDatWrite(y >> 8);
  tftDatWrite(y & 0xff);
  tftDatWrite(0x01);
  tftDatWrite(0xDF);
}

void tftSetWindow(TftRect *rect) {
  uint16_t sx, sy, ex, ey;

  sx = rect->startx;
  sy = rect->starty;
  ex = sx + rect->xsize - 1;
  ey = sy + rect->ysize - 1;

  tftRegWrite(0x2A);
  tftDatWrite(sx >> 8);
  tftDatWrite(sx & 0xff);
  tftDatWrite(ex >> 8);
  tftDatWrite(ex & 0xff);
  tftRegWrite(0x2B);
  tftDatWrite(sy >> 8);
  tftDatWrite(sy & 0xff);
  tftDatWrite(ey >> 8);
  tftDatWrite(ey & 0xff);
}

void lcdClear(uint16_t color) {
  tftSetPos(0, 0);
  tftRegWrite(0x2c);
  for (int i = 0; i < 153600; i++) tftDatWrite(color);
}

void lcdClear2(void) {
  tftSetPos(0, 0);
  tftRegWrite(0x2c);
  for (int i = 0; i < 153600 / 4; i++) tftDatWrite(RGB(255, 0, 0));
  for (int i = 0; i < 153600 / 4; i++) tftDatWrite(RGB(0, 255, 0));
  for (int i = 0; i < 153600 / 4; i++) tftDatWrite(RGB(0, 0, 255));
  for (int i = 0; i < 153600 / 4; i++) tftDatWrite(RGB(0, 255, 255));
}

void tftInit(void) {
  // 液晶复位
  TFTRST = 1;
  kthreadSleep(10);
  TFTRST = 0;
  kthreadSleep(10);
  TFTRST = 1;
  kthreadSleep(120);

  // 软复位
  tftRegWrite(0x01);
  kthreadSleep(120);

  // 反色显示
  tftRegWrite(0x21);
  // 设置行列顺序
  tftRegWrite(0x36);
  // tftDatWrite(0xFC);  // 横屏
  tftDatWrite(0x4C);  // 竖屏
  // 设置像素格式为16位
  tftRegWrite(0x3A);
  tftDatWrite(0x55);
  // 设置坐标范围
  tftSetPos(0, 0);

  /*
      tftRegWrite(0xB4);
      tftDatWrite(0x02);

      tftRegWrite(0xB6);
      tftDatWrite(0x02);
      tftDatWrite(0x02);
      tftDatWrite(0x3b);

      // 面板驱动设置
      tftRegWrite(0xC0);
      tftDatWrite(0x17);
      tftDatWrite(0x15);

      tftRegWrite(0xC1);
      tftDatWrite(0x41);

      tftRegWrite(0xC5);
      tftDatWrite(0x00);

      tftRegWrite(0x4d);
      tftDatWrite(0x80);
  */

  // 退出睡眠模式并开显示
  tftRegWrite(0x11);
  kthreadSleep(120);
  tftRegWrite(0x29);

  // 清屏
  lcdClear(0xFFFF);
}

uint16_t tftReadMem(void) {
  uint16_t dat;

  tftRegWrite(0x2e);
  tftRead();
  dat = tftRead();

  return dat;
}

void tftWriteMem(uint16_t color) {
  tftRegWrite(0x2c);
  tftDatWrite(color);
}

void tftReadId(uint8_t cmd) {
  tftRegWrite(cmd);
  tftRead();  // dummy read
  tftId1 = tftRead();
  tftId1 <<= 8;
  tftId1 |= tftRead();
  tftId2 = tftRead();
  tftId2 <<= 8;
  tftId2 |= tftRead();
  tftId3 = tftRead();
}

extern const uint8_t fontDigit24x31[];

void tftCharDraw(uint8_t c, uint16_t x, uint16_t y, uint16_t fg, uint16_t bg) {
  TftRect rect;
  uint8_t *ptr, dat;
  uint16_t color;
  int bytes;

  bytes = 24 * 31 >> 3;
  rect.startx = x;
  rect.starty = y;
  rect.xsize = 24;
  rect.ysize = 31;
  tftSetWindow(&rect);

  tftRegWrite(0x2c);

  ptr = (uint8_t *)fontDigit24x31;
  ptr += c * bytes;
  for (int i = 0; i < bytes; i++) {
    dat = *ptr++;
    for (int b = 0; b < 8; b++) {
      if ((dat & 0x80) != 0)
        color = fg;
      else
        color = bg;
      tftDatWrite(color);
      dat <<= 1;
    }
  }
}

void tftBmpDraw(const uint8_t *bmp, uint16_t x, uint16_t y) {
  TftRect rect;
  uint16_t dat;

  rect.startx = x;
  rect.starty = y;
  rect.xsize = 136;
  rect.ysize = 204;
  tftSetWindow(&rect);
  tftRegWrite(0x2c);

  for (int x = 0; x < 136 * 204; x++) {
    dat = (bmp[2 * x] << 8) | bmp[2 * x + 1];
    tftDatWrite(dat);
  }
}
