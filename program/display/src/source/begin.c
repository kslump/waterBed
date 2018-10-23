#define SYSEXT
#include <include.h>

void swoPutChar(uint8_t ch) {
#define ITM_PORT08(n) (*((volatile unsigned char *)(0xE0000000 + 4 * n)))
#define ITM_PORT16(n) (*((volatile unsigned short *)(0xE0000000 + 4 * n)))
#define ITM_PORT32(n) (*((volatile unsigned long *)(0xE0000000 + 4 * n)))
#define DEMCR (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA (*((volatile unsigned long *)(0x01000000)))

  if (DEMCR & TRCENA) {
    while (ITM_PORT32(0) == 0) continue;
    ITM_PORT08(0) = ch;
  }
}

void swoPutString(uint8_t *str) {
  uint8_t ch;
  while ((ch = *str++) != 0) swoPutChar(ch);
}

uint8_t hex2char(uint16_t hex) {
  uint8_t c;
  if (hex < 10) {
    c = '0' + hex;
  } else {
    c = 'A' + (hex - 10);
  }
  return c;
}

void hex2str(uint16_t hex) {
  uint8_t buf[8];
  buf[0] = hex2char((hex & 0xf000) >> 12);
  buf[1] = hex2char((hex & 0x0f00) >> 8);
  buf[2] = hex2char((hex & 0x00f0) >> 4);
  buf[3] = hex2char((hex & 0x000f) >> 0);
  buf[4] = ':';
  buf[5] = ' ';
  buf[6] = 0;
  swoPutString(buf);
}

void newLine(void) {
  uint8_t buf[4];
  buf[0] = '\n';
  buf[1] = 0;
  swoPutString(buf);
}

static uint8_t commands[] = {
    0x04, 0x05, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
    0x45, 0x52, 0x54, 0x56, 0x5f, 0x68, 0xda, 0xdb, 0xdc,
};

void main(void) {
  static uint8_t cmd = 0;

  tftInit();

  // kthreadInit(procThread1, 1, &stackThread1[STKSIZE_DEFT]);
  // kthreadInit(procThread4, 4, &stackThread4[STKSIZE_DEFT]);

  // tftCharDraw(2, 200, 160, RGB(255,0,0), RGB(0,0,0));
  tftBmpDraw(bmpGokon, 16, 16);
  tftBmpDraw(bmpGokon, 168, 16);
  tftBmpDraw(bmpGokon, 16, 260);
  tftBmpDraw(bmpGokon, 168, 260);

  while (1) {
    tftReadId(commands[cmd]);
    hex2str(commands[cmd]);
    hex2str(tftId1);
    hex2str(tftId2);
    hex2str(tftId3);
    newLine();
    if (++cmd >= 18) cmd = 0;
    kthreadSleep(1000);
  }
}

void pinInit(void) {
  stmGpioAL.p00 = INPUT_PULL;  // 22

  stmGpioAL.p01 = OUTPUT_GPPPMAX;  // 20
  stmGpioAL.p02 = OUTPUT_GPPPMAX;  // 18
  stmGpioAL.p03 = OUTPUT_GPPPMAX;  // 16
  stmGpioAL.p04 = OUTPUT_GPPPMAX;  // 14
  stmGpioAL.p05 = OUTPUT_GPPPMAX;  // 12
  stmGpioAL.p06 = OUTPUT_GPPPMAX;  // 10
  stmGpioAL.p07 = OUTPUT_GPPPMAX;  // 8

  stmGpioAH.p08 = OUTPUT_GPPPMAX;  // 11
  stmGpioAH.p09 = OUTPUT_GPPPMAX;  // 13
  stmGpioAH.p10 = OUTPUT_GPPPMAX;  // 15
  stmGpioAH.p11 = OUTPUT_GPPPMAX;  // 17
  stmGpioAH.p12 = OUTPUT_GPPPMAX;  // 19
  stmGpioAH.p15 = INPUT_PULL;
  gpioASet(15) = 1;

  stmGpioBL.p00 = OUTPUT_GPPPMAX;  // 6
  stmGpioBL.p01 = OUTPUT_GPPPMAX;  // 4
  stmGpioBL.p02 = OUTPUT_GPPPMAX;  // 2
  stmGpioBL.p03 = INPUT_PULL;
  gpioBSet(3) = 1;
  stmGpioBL.p04 = INPUT_PULL;
  gpioBSet(4) = 1;

  stmGpioBL.p05 = INPUT_PULL;      // 21
  stmGpioBL.p06 = INPUT_PULL;      // 23
  stmGpioBL.p07 = OUTPUT_GPPPMAX;  // LED

  stmGpioBH.p08 = INPUT_PULL;
  gpioBSet(8) = 0;
  stmGpioBH.p09 = INPUT_PULL;
  gpioBSet(9) = 0;

  stmGpioBH.p10 = OUTPUT_GPPPMAX;  // 0
  stmGpioBH.p11 = OUTPUT_GPPPMAX;  // 1
  stmGpioBH.p12 = OUTPUT_GPPPMAX;  // 3
  stmGpioBH.p13 = OUTPUT_GPPPMAX;  // 5
  stmGpioBH.p14 = OUTPUT_GPPPMAX;  // 7
  stmGpioBH.p15 = OUTPUT_GPPPMAX;  // 9

  stmGpioCH.p13 = INPUT_PULL;
  gpioCSet(13) = 0;
  stmGpioCH.p14 = INPUT_PULL;
  gpioCSet(14) = 0;
  stmGpioCH.p15 = INPUT_PULL;
  gpioCSet(15) = 0;
  stmGpioDL.p00 = INPUT_PULL;
  gpioDSet(0) = 0;
  stmGpioDL.p01 = INPUT_PULL;
  gpioDSet(1) = 0;

  TFTD00 = 0;
  TFTD01 = 0;
  TFTD02 = 0;
  TFTD03 = 0;
  TFTD04 = 0;
  TFTD05 = 0;
  TFTD06 = 0;
  TFTD07 = 0;
  TFTD08 = 0;
  TFTD09 = 0;
  TFTD10 = 0;
  TFTD11 = 0;
  TFTD12 = 0;
  TFTD13 = 0;
  TFTD14 = 0;
  TFTD15 = 0;

  TFTRST = 1;
  TFTRD = 1;
  TFTWR = 1;
  TFTDC = 1;
  TFTnCS = 1;
}
