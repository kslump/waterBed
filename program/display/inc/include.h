#ifndef __INCLUDE_H
#define __INCLUDE_H

#include <sysconf.h>
#include <system.h>
#include <stm32.h>

#define TFTD20          gpioASet(1)
#define TFTD18          gpioASet(2)
#define TFTD16          gpioASet(3)
#define TFTD14          gpioASet(4)
#define TFTD12          gpioASet(5)
#define TFTD10          gpioASet(6)
#define TFTD08          gpioASet(7)
#define TFTD11          gpioASet(8)
#define TFTD13          gpioASet(9)
#define TFTD15          gpioASet(10)
#define TFTD17          gpioASet(11)
#define TFTD19          gpioASet(12)
#define TFTD06          gpioBSet(0)
#define TFTD04          gpioBSet(1)
#define TFTD02          gpioBSet(2)
#define TFTD00          gpioBSet(10)
#define TFTD01          gpioBSet(11)
#define TFTD03          gpioBSet(12)
#define TFTD05          gpioBSet(13)
#define TFTD07          gpioBSet(14)
#define TFTD09          gpioBSet(15)

#define ITFTD14         gpioAGet(4)
#define ITFTD12         gpioAGet(5)
#define ITFTD10         gpioAGet(6)
#define ITFTD08         gpioAGet(7)
#define ITFTD11         gpioAGet(8)
#define ITFTD13         gpioAGet(9)
#define ITFTD15         gpioAGet(10)
#define ITFTD06         gpioBGet(0)
#define ITFTD04         gpioBGet(1)
#define ITFTD02         gpioBGet(2)
#define ITFTD00         gpioBGet(10)
#define ITFTD01         gpioBGet(11)
#define ITFTD03         gpioBGet(12)
#define ITFTD05         gpioBGet(13)
#define ITFTD07         gpioBGet(14)
#define ITFTD09         gpioBGet(15)

#define LEDRED          gpioBSet(7)

#define TFTRST          TFTD16
#define TFTRD           TFTD17
#define TFTWR           TFTD18
#define TFTDC           TFTD19
#define TFTnCS          TFTD20

typedef struct {
    uint16_t startx;
    uint16_t starty;
    uint16_t xsize;
    uint16_t ysize;
} TftRect;

void tftBusInit(void);
void tftInit(void);
void tftRectFill(TftRect *rect, uint16_t color);
void tftSetPos(uint16_t x, uint16_t y);
uint16_t tftReadMem(void);
void tftWriteMem(uint16_t color);
void tftReadId(uint8_t cmd);
void tftSetWindow(TftRect *rect);
void tftCharDraw(uint8_t c, uint16_t x, uint16_t y, uint16_t fg, uint16_t bg);
void tftBmpDraw(const uint8_t *bmp, uint16_t x, uint16_t y);

#define RGB(R,G,B)  (((R & 0xf8) << 8) | ((G & 0xfc) << 3) | ((B & 0xf8) >> 3))
#define COLOR_WHITE     RGB(255, 255, 255)
#define COLOR_BLACK     RGB(  0,   0,   0)
#define COLOR_GREEN     RGB(  0, 255,   0)
#define COLOR_RED       RGB(255,   0,   0)
#define COLOR_BLUE      RGB(  0,   0, 255)
#define COLOR_ICONSEL   RGB(153, 217, 234)
#define COLOR_TEXTFG1   RGB( 64,  64, 255)
#define COLOR_TEXTFG2   RGB(255,  64,  64)
#define COLOR_TEXTBG    RGB(192, 192, 192)
#define COLOR_TEXTBG2   RGB( 64, 255,  64)
#define COLOR_DIGITFG   RGB( 16, 255, 255)
#define COLOR_DIGITBG   RGB( 32,  32,  32)
#define COLOR_DESKTOP   RGB(255, 255, 255)
#define COLOR_CONFFG    RGB(255, 201, 14)
#define COLOR_CONFBG    RGB( 64,  64, 64)

EXTERN uint16_t tftId1;
EXTERN uint16_t tftId2;
EXTERN uint16_t tftId3;

extern const uint8_t bmpGokon[];

#endif /* __INCLUDE_H */
