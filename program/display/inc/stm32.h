#ifndef __STM32_H
#define __STM32_H

// NVIC
#define NVIC_SYSTICK_CSR        (UINT32_C(0xE000E010))
#define NVIC_SYSTICK_RELOAD     (UINT32_C(0xE000E014))
#define NVIC_SYSTICK_CURRENT    (UINT32_C(0xE000E018))
#define NVIC_SYSTICK_CAL        (UINT32_C(0xE000E01C))
#define NVIC_IRQ_SETEN          (UINT32_C(0xE000E100))
#define NVIC_IRQ_CLREN          (UINT32_C(0xE000E180))
#define NVIC_IRQ_SETPEND        (UINT32_C(0xE000E200))
#define NVIC_IRQ_CLRPEND        (UINT32_C(0xE000E280))
#define NVIC_IRQ_ACTIVE         (UINT32_C(0xE000E300))
#define NVIC_IRQ_PRIO           (UINT32_C(0xE000E400))
#define NVIC_CPUID              (UINT32_C(0xE000ED00))
#define NVIC_ICSR               (UINT32_C(0xE000ED04))
#define NVIC_VTOR               (UINT32_C(0xE000ED08))
#define NVIC_AIRCR              (UINT32_C(0xE000ED0C))
#define NVIC_SYSCR              (UINT32_C(0xE000ED10))
#define NVIC_CR                 (UINT32_C(0xE000ED14))
#define NVIC_PRIO_MEMMANAGE     (UINT32_C(0xE000ED18))
#define NVIC_PRIO_BUSFAULT      (UINT32_C(0xE000ED19))
#define NVIC_PRIO_USAGEFAULT    (UINT32_C(0xE000ED1A))
#define NVIC_PRIO_SVCALL        (UINT32_C(0xE000ED1F))
#define NVIC_PRIO_DEBUGMON      (UINT32_C(0xE000ED20))
#define NVIC_PRIO_PENDSV        (UINT32_C(0xE000ED22))
#define NVIC_PRIO_SYSTICK       (UINT32_C(0xE000ED23))
#define NVIC_SHCSR              (UINT32_C(0xE000ED24))
#define NVIC_MFSR               (UINT32_C(0xE000ED28))
#define NVIC_BFSR               (UINT32_C(0xE000ED29))
#define NVIC_UFSR               (UINT32_C(0xE000ED2A))
#define NVIC_HFSR               (UINT32_C(0xE000ED2C))
#define NVIC_DFSR               (UINT32_C(0xE000ED30))
#define NVIC_MMAR               (UINT32_C(0xE000ED34))
#define NVIC_BFAR               (UINT32_C(0xE000ED38))
#define NVIC_AFAR               (UINT32_C(0xE000ED3C))
#define NVIC_STIR               (UINT32_C(0xE000EF00))

// FLASH
typedef volatile struct {
    uint32_t latency : 3;
    uint32_t hlfcya  : 1;
    uint32_t prftbe  : 1;
    uint32_t prftbs  : 1;
    uint32_t         : 26;
} __flashAcr;

typedef volatile struct {
    uint32_t bsy      : 1;
    uint32_t          : 1;
    uint32_t pgerr    : 1;
    uint32_t          : 1;
    uint32_t wrprterr : 1;
    uint32_t eop      : 1;
    uint32_t          : 26;
} __flashSr;

typedef volatile struct {
    uint32_t pg     : 1;
    uint32_t per    : 1;
    uint32_t mer    : 1;
    uint32_t        : 1;
    uint32_t optpg  : 1;
    uint32_t opter  : 1;
    uint32_t strt   : 1;
    uint32_t lock   : 1;
    uint32_t        : 1;
    uint32_t optwre : 1;
    uint32_t errie  : 1;
    uint32_t        : 1;
    uint32_t eopie  : 1;
    uint32_t        : 19;
} __flashCr;

typedef volatile struct {
    uint32_t opterr    : 1;
    uint32_t rdprt     : 1;
    uint32_t wdgsw     : 1;
    uint32_t nrststop  : 1;
    uint32_t nrststdby : 1;
    uint32_t           : 27;
} __flashObr;

#define stmFlashAcr     (*((__flashAcr *)(UINT32_C(0x40022000))))
#define stmFlashSr      (*((__flashSr  *)(UINT32_C(0x4002200C))))
#define stmFlashCr      (*((__flashCr  *)(UINT32_C(0x40022010))))
#define stmFlashObr     (*((__flashObr *)(UINT32_C(0x4002201C))))

#define STM_FLASH_KEYR      (UINT32_C(0x40022004))
#define STM_FLASH_OPTKEYR   (UINT32_C(0x40022008))
#define STM_FLASH_SR        (UINT32_C(0x4002200C))
#define STM_FLASH_CR        (UINT32_C(0x40022010))
#define STM_FLASH_AR        (UINT32_C(0x40022014))
#define STM_FLASH_WRPR      (UINT32_C(0x40022020))

// PWR
typedef volatile struct {
    uint32_t lpds : 1;
    uint32_t pdds : 1;
    uint32_t cwuf : 1;
    uint32_t csbf : 1;
    uint32_t pvde : 1;
    uint32_t pls  : 3;
    uint32_t dbp  : 1;
    uint32_t      : 23;
} __pwrCr;

typedef volatile struct {
    uint32_t wup  : 1;
    uint32_t sbf  : 1;
    uint32_t pvdo : 1;
    uint32_t      : 5;
    uint32_t ewup : 1;
    uint32_t      : 23;
} __pwrCsr;

#define stmPwrCr     (*((__pwrCr  *)(UINT32_C(0x40007000))))
#define stmPwrCsr    (*((__pwrCsr *)(UINT32_C(0x40007004))))

// BKP
typedef volatile struct {
    uint16_t cal  : 7;
    uint16_t cco  : 1;
    uint16_t asoe : 1;
    uint16_t asos : 1;
    uint16_t      : 6;
} __bkpRtcCr;

typedef volatile struct {
    uint16_t tpe  : 1;
    uint16_t tpal : 1;
    uint16_t      : 14;
} __bkpCr;

typedef volatile struct {
    uint16_t cte  : 1;
    uint16_t cti  : 1;
    uint16_t tpie : 1;
    uint16_t      : 5;
    uint16_t tef  : 1;
    uint16_t tif  : 1;
    uint16_t      : 6;
} __bkpCsr;

#define stmBkpRtcCr (*((__bkpRtcCr *)(UINT32_C(0x40006C2C))))
#define stmBkpCr    (*((__bkpCr    *)(UINT32_C(0x40006C30))))
#define stmBkpCsr   (*((__bkpCsr   *)(UINT32_C(0x40006C34))))

#define STM_BKP_DR_BASE1    (UINT32_C(0x40006C04))
#define STM_BKP_DR_BASE2    (UINT32_C(0x40006C40))

// RCC
typedef volatile struct {
    uint32_t hsion   : 1;
    uint32_t hsirdy  : 1;
    uint32_t         : 1;
    uint32_t hsitrim : 5;
    uint32_t hsical  : 8;
    uint32_t hseon   : 1;
    uint32_t hserdy  : 1;
    uint32_t hsebyp  : 1;
    uint32_t csson   : 1;
    uint32_t         : 4;
    uint32_t pllon   : 1;
    uint32_t pllrdy  : 1;
    uint32_t         : 6;
} __rccCr;

typedef volatile struct {
    uint32_t sw       : 2;
    uint32_t sws      : 2;
    uint32_t hpre     : 4;
    uint32_t ppre1    : 3;
    uint32_t ppre2    : 3;
    uint32_t adcpre   : 2;
    uint32_t pllsrc   : 1;
    uint32_t pllxtpre : 1;
    uint32_t pllmul   : 4;
    uint32_t usbpre   : 1;
    uint32_t          : 1;
    uint32_t mco      : 3;
    uint32_t          : 5;
} __rccCfgr;

typedef volatile struct {
    uint32_t lsirdyf  : 1;
    uint32_t lserdyf  : 1;
    uint32_t hsirdyf  : 1;
    uint32_t hserdyf  : 1;
    uint32_t pllrdyf  : 1;
    uint32_t          : 2;
    uint32_t cssf     : 1;
    uint32_t lsirdyie : 1;
    uint32_t lserdyie : 1;
    uint32_t hsirdyie : 1;
    uint32_t hserdyie : 1;
    uint32_t pllrdyie : 1;
    uint32_t          : 3;
    uint32_t lsirdyc  : 1;
    uint32_t lserdyc  : 1;
    uint32_t hsirdyc  : 1;
    uint32_t hserdyc  : 1;
    uint32_t pllrdyc  : 1;
    uint32_t          : 2;
    uint32_t cssc     : 1;
    uint32_t          : 8;
} __rccCir;

typedef volatile struct {
    uint32_t afio   : 1;
    uint32_t        : 1;
    uint32_t gpioa  : 1;
    uint32_t gpiob  : 1;
    uint32_t gpioc  : 1;
    uint32_t gpiod  : 1;
    uint32_t gpioe  : 1;
    uint32_t gpiof  : 1;
    uint32_t gpiog  : 1;
    uint32_t adc1   : 1;
    uint32_t adc2   : 1;
    uint32_t tim1   : 1;
    uint32_t spi1   : 1;
    uint32_t tim8   : 1;
    uint32_t usart1 : 1;
    uint32_t adc3   : 1;
    uint32_t        : 3;
    uint32_t tim9   : 1;
    uint32_t tim10  : 1;
    uint32_t tim11  : 1;
    uint32_t        : 10;
} __rccApb2;

typedef volatile struct {
    uint32_t tim2   : 1;
    uint32_t tim3   : 1;
    uint32_t tim4   : 1;
    uint32_t tim5   : 1;
    uint32_t tim6   : 1;
    uint32_t tim7   : 1;
    uint32_t tim12  : 1;
    uint32_t tim13  : 1;
    uint32_t tim14  : 1;
    uint32_t        : 2;
    uint32_t wwdg   : 1;
    uint32_t        : 2;
    uint32_t spi2   : 1;
    uint32_t spi3   : 1;
    uint32_t        : 1;
    uint32_t usart2 : 1;
    uint32_t usart3 : 1;
    uint32_t uart4  : 1;
    uint32_t uart5  : 1;
    uint32_t i2c1   : 1;
    uint32_t i2c2   : 1;
    uint32_t usb    : 1;
    uint32_t        : 1;
    uint32_t can    : 1;
    uint32_t        : 1;
    uint32_t bkp    : 1;
    uint32_t pwr    : 1;
    uint32_t dac    : 1;
    uint32_t        : 2;
} __rccApb1;

typedef volatile struct {
    uint32_t dma1  : 1;
    uint32_t dma2  : 1;
    uint32_t sram  : 1;
    uint32_t       : 1;
    uint32_t flitf : 1;
    uint32_t       : 1;
    uint32_t crc   : 1;
    uint32_t       : 1;
    uint32_t fsmc  : 1;
    uint32_t       : 1;
    uint32_t sdio  : 1;
    uint32_t       : 21;
} __rccAhb;

typedef volatile struct {
    uint32_t lseon  : 1;
    uint32_t lserdy : 1;
    uint32_t lsebyp : 1;
    uint32_t        : 5;
    uint32_t rtcsel : 2;
    uint32_t        : 5;
    uint32_t rtcen  : 1;
    uint32_t bdrst  : 1;
    uint32_t        : 15;
} __rccBdcr;

typedef volatile struct {
    uint32_t lsion    : 1;
    uint32_t lsirdy   : 1;
    uint32_t          : 22;
    uint32_t rmvf     : 1;
    uint32_t          : 1;
    uint32_t pinrstf  : 1;
    uint32_t porrstf  : 1;
    uint32_t sftrstf  : 1;
    uint32_t iwdgrstf : 1;
    uint32_t wwdgrstf : 1;
    uint32_t lpwrrstf : 1;
} __rccCsr;

#define stmRccCr       (*((__rccCr   *)(UINT32_C(0x40021000))))
#define stmRccCfgr     (*((__rccCfgr *)(UINT32_C(0x40021004))))
#define stmRccCir      (*((__rccCir  *)(UINT32_C(0x40021008))))
#define stmRccApb2Rstr (*((__rccApb2 *)(UINT32_C(0x4002100C))))
#define stmRccApb1Rstr (*((__rccApb1 *)(UINT32_C(0x40021010))))
#define stmRccAhbEnr   (*((__rccAhb  *)(UINT32_C(0x40021014))))
#define stmRccApb2Enr  (*((__rccApb2 *)(UINT32_C(0x40021018))))
#define stmRccApb1Enr  (*((__rccApb1 *)(UINT32_C(0x4002101C))))
#define stmRccBdcr     (*((__rccBdcr *)(UINT32_C(0x40021020))))
#define stmRccCsr      (*((__rccCsr  *)(UINT32_C(0x40021024))))

// AFIO
typedef volatile struct {
    uint32_t pin  : 4;
    uint32_t port : 3;
    uint32_t evoe : 1;
    uint32_t      : 24;
} __afioEvcr;

typedef volatile struct {
    uint32_t spi1   : 1;
    uint32_t i2c1   : 1;
    uint32_t usart1 : 1;
    uint32_t usart2 : 1;
    uint32_t usart3 : 2;
    uint32_t tim1   : 2;
    uint32_t tim2   : 2;
    uint32_t tim3   : 2;
    uint32_t tim4   : 1;
    uint32_t can    : 2;
    uint32_t pd01   : 1;
    uint32_t tim5c4 : 1;
    uint32_t        : 7;
    uint32_t swjcfg : 3;
    uint32_t        : 5;
} __afioMapr;

typedef volatile struct {
    uint32_t exti0 : 4;
    uint32_t exti1 : 4;
    uint32_t exti2 : 4;
    uint32_t exti3 : 4;
    uint32_t       : 16;
} __afioExtiCr1;

typedef volatile struct {
    uint32_t exti4 : 4;
    uint32_t exti5 : 4;
    uint32_t exti6 : 4;
    uint32_t exti7 : 4;
    uint32_t       : 16;
} __afioExtiCr2;

typedef volatile struct {
    uint32_t exti8  : 4;
    uint32_t exti9  : 4;
    uint32_t exti10 : 4;
    uint32_t exti11 : 4;
    uint32_t       : 16;
} __afioExtiCr3;

typedef volatile struct {
    uint32_t exti12 : 4;
    uint32_t exti13 : 4;
    uint32_t exti14 : 4;
    uint32_t exti15 : 4;
    uint32_t       : 16;
} __afioExtiCr4;

typedef volatile struct {
    uint32_t          : 5;
    uint32_t tim9     : 1;
    uint32_t tim10    : 1;
    uint32_t tim11    : 1;
    uint32_t tim13    : 1;
    uint32_t tim14    : 1;
    uint32_t fsmcnadv : 1;
    uint32_t          : 21;
} __afioMapr2;

#define stmAfioEvcr     (*((__afioEvcr    *)(UINT32_C(0x40010000))))
#define stmAfioMapr     (*((__afioMapr    *)(UINT32_C(0x40010004))))
#define stmAfioExtiCr1  (*((__afioExtiCr1 *)(UINT32_C(0x40010008))))
#define stmAfioExtiCr2  (*((__afioExtiCr2 *)(UINT32_C(0x4001000C))))
#define stmAfioExtiCr3  (*((__afioExtiCr3 *)(UINT32_C(0x40010010))))
#define stmAfioExtiCr4  (*((__afioExtiCr4 *)(UINT32_C(0x40010014))))
#define stmAfioMapr2    (*((__afioMapr2   *)(UINT32_C(0x4001001C))))

// GPIO
typedef volatile struct {
    uint32_t p00 : 4;
    uint32_t p01 : 4;
    uint32_t p02 : 4;
    uint32_t p03 : 4;
    uint32_t p04 : 4;
    uint32_t p05 : 4;
    uint32_t p06 : 4;
    uint32_t p07 : 4;
} __gpioCrL;

typedef volatile struct {
    uint32_t p08 : 4;
    uint32_t p09 : 4;
    uint32_t p10 : 4;
    uint32_t p11 : 4;
    uint32_t p12 : 4;
    uint32_t p13 : 4;
    uint32_t p14 : 4;
    uint32_t p15 : 4;
} __gpioCrH;

#define stmGpioAL   (*((__gpioCrL *)(UINT32_C(0x40010800))))
#define stmGpioBL   (*((__gpioCrL *)(UINT32_C(0x40010C00))))
#define stmGpioCL   (*((__gpioCrL *)(UINT32_C(0x40011000))))
#define stmGpioDL   (*((__gpioCrL *)(UINT32_C(0x40011400))))
#define stmGpioEL   (*((__gpioCrL *)(UINT32_C(0x40011800))))
#define stmGpioFL   (*((__gpioCrL *)(UINT32_C(0x40011C00))))
#define stmGpioGL   (*((__gpioCrL *)(UINT32_C(0x40012000))))
#define stmGpioAH   (*((__gpioCrH *)(UINT32_C(0x40010804))))
#define stmGpioBH   (*((__gpioCrH *)(UINT32_C(0x40010C04))))
#define stmGpioCH   (*((__gpioCrH *)(UINT32_C(0x40011004))))
#define stmGpioDH   (*((__gpioCrH *)(UINT32_C(0x40011404))))
#define stmGpioEH   (*((__gpioCrH *)(UINT32_C(0x40011804))))
#define stmGpioFH   (*((__gpioCrH *)(UINT32_C(0x40011C04))))
#define stmGpioGH   (*((__gpioCrH *)(UINT32_C(0x40012004))))

#define STM_GPIOA_IDR    (UINT32_C(0x40010808))
#define STM_GPIOA_ODR    (UINT32_C(0x4001080C))
#define STM_GPIOA_BSRR   (UINT32_C(0x40010810))
#define STM_GPIOA_BRR    (UINT32_C(0x40010814))
#define STM_GPIOA_LCKR   (UINT32_C(0x40010818))
#define STM_GPIOB_IDR    (UINT32_C(0x40010C08))
#define STM_GPIOB_ODR    (UINT32_C(0x40010C0C))
#define STM_GPIOB_BSRR   (UINT32_C(0x40010C10))
#define STM_GPIOB_BRR    (UINT32_C(0x40010C14))
#define STM_GPIOB_LCKR   (UINT32_C(0x40010C18))
#define STM_GPIOC_IDR    (UINT32_C(0x40011008))
#define STM_GPIOC_ODR    (UINT32_C(0x4001100C))
#define STM_GPIOC_BSRR   (UINT32_C(0x40011010))
#define STM_GPIOC_BRR    (UINT32_C(0x40011014))
#define STM_GPIOC_LCKR   (UINT32_C(0x40011018))
#define STM_GPIOD_IDR    (UINT32_C(0x40011408))
#define STM_GPIOD_ODR    (UINT32_C(0x4001140C))
#define STM_GPIOD_BSRR   (UINT32_C(0x40011410))
#define STM_GPIOD_BRR    (UINT32_C(0x40011414))
#define STM_GPIOD_LCKR   (UINT32_C(0x40011418))
#define STM_GPIOE_IDR    (UINT32_C(0x40011808))
#define STM_GPIOE_ODR    (UINT32_C(0x4001180C))
#define STM_GPIOE_BSRR   (UINT32_C(0x40011810))
#define STM_GPIOE_BRR    (UINT32_C(0x40011814))
#define STM_GPIOE_LCKR   (UINT32_C(0x40011818))
#define STM_GPIOF_IDR    (UINT32_C(0x40011C08))
#define STM_GPIOF_ODR    (UINT32_C(0x40011C0C))
#define STM_GPIOF_BSRR   (UINT32_C(0x40011C10))
#define STM_GPIOF_BRR    (UINT32_C(0x40011C14))
#define STM_GPIOF_LCKR   (UINT32_C(0x40011C18))
#define STM_GPIOG_IDR    (UINT32_C(0x40012008))
#define STM_GPIOG_ODR    (UINT32_C(0x4001200C))
#define STM_GPIOG_BSRR   (UINT32_C(0x40012010))
#define STM_GPIOG_BRR    (UINT32_C(0x40012014))
#define STM_GPIOG_LCKR   (UINT32_C(0x40012018))

#define INPUT_ANALOG    0x00
#define INPUT_FLOAT     0x04
#define INPUT_PULL      0x08
#define OUTPUT_GPPPMIN  0x02
#define OUTPUT_GPPPMID  0x01
#define OUTPUT_GPPPMAX  0x03
#define OUTPUT_GPODMIN  0x06
#define OUTPUT_GPODMID  0x05
#define OUTPUT_GPODMAX  0x07
#define OUTPUT_AFPPMIN  0x0a
#define OUTPUT_AFPPMID  0x09
#define OUTPUT_AFPPMAX  0x0b
#define OUTPUT_AFODMIN  0x0e
#define OUTPUT_AFODMID  0x0d
#define OUTPUT_AFODMAX  0x0f

// ADC
typedef volatile struct {
    uint32_t awd   : 1;
    uint32_t eoc   : 1;
    uint32_t jeoc  : 1;
    uint32_t jstrt : 1;
    uint32_t strt  : 1;
    uint32_t       : 27;
} __adcSr;

typedef volatile struct {
    uint32_t awdch   : 5;
    uint32_t eocie   : 1;
    uint32_t awdie   : 1;
    uint32_t jeocie  : 1;
    uint32_t scan    : 1;
    uint32_t awdsgl  : 1;
    uint32_t jauto   : 1;
    uint32_t discen  : 1;
    uint32_t jdiscen : 1;
    uint32_t discnum : 3;
    uint32_t dualmod : 4;
    uint32_t         : 2;
    uint32_t jawden  : 1;
    uint32_t awden   : 1;
    uint32_t         : 8;
} __adcCr1;

typedef volatile struct {
    uint32_t adon     : 1;
    uint32_t cont     : 1;
    uint32_t cal      : 1;
    uint32_t rstcal   : 1;
    uint32_t          : 4;
    uint32_t dma      : 1;
    uint32_t          : 2;
    uint32_t align    : 1;
    uint32_t jextsel  : 3;
    uint32_t jexttrig : 1;
    uint32_t          : 1;
    uint32_t extsel   : 3;
    uint32_t exttrig  : 1;
    uint32_t jswstart : 1;
    uint32_t swstart  : 1;
    uint32_t tsvrefe  : 1;
    uint32_t          : 8;
} __adcCr2;

typedef volatile struct {
    uint32_t smp10 : 3;
    uint32_t smp11 : 3;
    uint32_t smp12 : 3;
    uint32_t smp13 : 3;
    uint32_t smp14 : 3;
    uint32_t smp15 : 3;
    uint32_t smp16 : 3;
    uint32_t smp17 : 3;
    uint32_t       : 8;
} __adcSmpr1;

typedef volatile struct {
    uint32_t smp0  : 3;
    uint32_t smp1  : 3;
    uint32_t smp2  : 3;
    uint32_t smp3  : 3;
    uint32_t smp4  : 3;
    uint32_t smp5  : 3;
    uint32_t smp6  : 3;
    uint32_t smp7  : 3;
    uint32_t smp8  : 3;
    uint32_t smp9  : 3;
    uint32_t       : 2;
} __adcSmpr2;

typedef volatile struct {
    uint32_t sq13  : 5;
    uint32_t sq14  : 5;
    uint32_t sq15  : 5;
    uint32_t sq16  : 5;
    uint32_t total : 4;
    uint32_t       : 8;
} __adcSqr1;

typedef volatile struct {
    uint32_t sq7  : 5;
    uint32_t sq8  : 5;
    uint32_t sq9  : 5;
    uint32_t sq10 : 5;
    uint32_t sq11 : 5;
    uint32_t sq12 : 5;
    uint32_t      : 2;
} __adcSqr2;

typedef volatile struct {
    uint32_t sq1 : 5;
    uint32_t sq2 : 5;
    uint32_t sq3 : 5;
    uint32_t sq4 : 5;
    uint32_t sq5 : 5;
    uint32_t sq6 : 5;
    uint32_t     : 2;
} __adcSqr3;

typedef volatile struct {
    uint32_t jsq1  : 5;
    uint32_t jsq2  : 5;
    uint32_t jsq3  : 5;
    uint32_t jsq4  : 5;
    uint32_t total : 2;
    uint32_t       : 10;
} __adcJsqr;

#define stmAdc1Sr       (*((__adcSr    *)(UINT32_C(0x40012400))))
#define stmAdc1Cr1      (*((__adcCr1   *)(UINT32_C(0x40012404))))
#define stmAdc1Cr2      (*((__adcCr2   *)(UINT32_C(0x40012408))))
#define stmAdc1Smpr1    (*((__adcSmpr1 *)(UINT32_C(0x4001240C))))
#define stmAdc1Smpr2    (*((__adcSmpr2 *)(UINT32_C(0x40012410))))
#define stmAdc1Sqr1     (*((__adcSqr1  *)(UINT32_C(0x4001242C))))
#define stmAdc1Sqr2     (*((__adcSqr2  *)(UINT32_C(0x40012430))))
#define stmAdc1Sqr3     (*((__adcSqr3  *)(UINT32_C(0x40012434))))
#define stmAdc1Jsqr     (*((__adcJsqr  *)(UINT32_C(0x40012438))))
#define STM_ADC1_JOFR1  (UINT32_C(0x40012414))
#define STM_ADC1_JOFR2  (UINT32_C(0x40012418))
#define STM_ADC1_JOFR3  (UINT32_C(0x4001241C))
#define STM_ADC1_JOFR4  (UINT32_C(0x40012420))
#define STM_ADC1_HTR    (UINT32_C(0x40012424))
#define STM_ADC1_LTR    (UINT32_C(0x40012428))
#define STM_ADC1_JDR1   (UINT32_C(0x4001243C))
#define STM_ADC1_JDR2   (UINT32_C(0x40012440))
#define STM_ADC1_JDR3   (UINT32_C(0x40012444))
#define STM_ADC1_JDR4   (UINT32_C(0x40012448))

#define stmAdc2Sr       (*((__adcSr    *)(UINT32_C(0x40012800))))
#define stmAdc2Cr1      (*((__adcCr1   *)(UINT32_C(0x40012804))))
#define stmAdc2Cr2      (*((__adcCr2   *)(UINT32_C(0x40012808))))
#define stmAdc2Smpr1    (*((__adcSmpr1 *)(UINT32_C(0x4001280C))))
#define stmAdc2Smpr2    (*((__adcSmpr2 *)(UINT32_C(0x40012810))))
#define stmAdc2Sqr1     (*((__adcSqr1  *)(UINT32_C(0x4001282C))))
#define stmAdc2Sqr2     (*((__adcSqr2  *)(UINT32_C(0x40012830))))
#define stmAdc2Sqr3     (*((__adcSqr3  *)(UINT32_C(0x40012834))))
#define stmAdc2Jsqr     (*((__adcJsqr  *)(UINT32_C(0x40012838))))
#define STM_ADC2_JOFR1  (UINT32_C(0x40012814))
#define STM_ADC2_JOFR2  (UINT32_C(0x40012818))
#define STM_ADC2_JOFR3  (UINT32_C(0x4001281C))
#define STM_ADC2_JOFR4  (UINT32_C(0x40012820))
#define STM_ADC2_HTR    (UINT32_C(0x40012824))
#define STM_ADC2_LTR    (UINT32_C(0x40012828))
#define STM_ADC2_JDR1   (UINT32_C(0x4001283C))
#define STM_ADC2_JDR2   (UINT32_C(0x40012840))
#define STM_ADC2_JDR3   (UINT32_C(0x40012844))
#define STM_ADC2_JDR4   (UINT32_C(0x40012848))

#define STM_ADC12_DR    (UINT32_C(0x4001244C))

// DMA
typedef volatile struct {
    uint32_t en    : 1;
    uint32_t tcie  : 1;
    uint32_t htie  : 1;
    uint32_t teie  : 1;
    uint32_t dir   : 1;
    uint32_t circ  : 1;
    uint32_t pinc  : 1;
    uint32_t minc  : 1;
    uint32_t psize : 2;
    uint32_t msize : 2;
    uint32_t pl    : 2;
    uint32_t m2m   : 1;
    uint32_t       : 17;
} __dmaCcr;

#define stmDma1Ccr1         (*((__dmaCcr *)(UINT32_C(0x40020008))))
#define stmDma1Ccr2         (*((__dmaCcr *)(UINT32_C(0x4002001C))))
#define stmDma1Ccr3         (*((__dmaCcr *)(UINT32_C(0x40020030))))
#define stmDma1Ccr4         (*((__dmaCcr *)(UINT32_C(0x40020044))))
#define stmDma1Ccr5         (*((__dmaCcr *)(UINT32_C(0x40020058))))
#define stmDma1Ccr6         (*((__dmaCcr *)(UINT32_C(0x4002006C))))
#define stmDma1Ccr7         (*((__dmaCcr *)(UINT32_C(0x40020080))))

#define stmDma2Ccr1         (*((__dmaCcr *)(UINT32_C(0x40020408))))
#define stmDma2Ccr2         (*((__dmaCcr *)(UINT32_C(0x4002041C))))
#define stmDma2Ccr3         (*((__dmaCcr *)(UINT32_C(0x40020430))))
#define stmDma2Ccr4         (*((__dmaCcr *)(UINT32_C(0x40020444))))
#define stmDma2Ccr5         (*((__dmaCcr *)(UINT32_C(0x40020458))))

#define STM_DMA1_ISR        (UINT32_C(0x40020000))
#define STM_DMA1_IFCR       (UINT32_C(0x40020004))
#define STM_DMA1_CCR1       (UINT32_C(0x40020008))
#define STM_DMA1_CNDTR1     (UINT32_C(0x4002000C))
#define STM_DMA1_CPAR1      (UINT32_C(0x40020010))
#define STM_DMA1_CMAR1      (UINT32_C(0x40020014))
#define STM_DMA1_CCR2       (UINT32_C(0x4002001C))
#define STM_DMA1_CNDTR2     (UINT32_C(0x40020020))
#define STM_DMA1_CPAR2      (UINT32_C(0x40020024))
#define STM_DMA1_CMAR2      (UINT32_C(0x40020028))
#define STM_DMA1_CCR3       (UINT32_C(0x40020030))
#define STM_DMA1_CNDTR3     (UINT32_C(0x40020034))
#define STM_DMA1_CPAR3      (UINT32_C(0x40020038))
#define STM_DMA1_CMAR3      (UINT32_C(0x4002003C))
#define STM_DMA1_CCR4       (UINT32_C(0x40020044))
#define STM_DMA1_CNDTR4     (UINT32_C(0x40020048))
#define STM_DMA1_CPAR4      (UINT32_C(0x4002004C))
#define STM_DMA1_CMAR4      (UINT32_C(0x40020050))
#define STM_DMA1_CCR5       (UINT32_C(0x40020058))
#define STM_DMA1_CNDTR5     (UINT32_C(0x4002005C))
#define STM_DMA1_CPAR5      (UINT32_C(0x40020060))
#define STM_DMA1_CMAR5      (UINT32_C(0x40020064))
#define STM_DMA1_CCR6       (UINT32_C(0x4002006C))
#define STM_DMA1_CNDTR6     (UINT32_C(0x40020070))
#define STM_DMA1_CPAR6      (UINT32_C(0x40020074))
#define STM_DMA1_CMAR6      (UINT32_C(0x40020078))
#define STM_DMA1_CCR7       (UINT32_C(0x40020080))
#define STM_DMA1_CNDTR7     (UINT32_C(0x40020084))
#define STM_DMA1_CPAR7      (UINT32_C(0x40020088))
#define STM_DMA1_CMAR7      (UINT32_C(0x4002008C))

#define STM_DMA2_ISR        (UINT32_C(0x40020400))
#define STM_DMA2_IFCR       (UINT32_C(0x40020404))
#define STM_DMA2_CCR1       (UINT32_C(0x40020408))
#define STM_DMA2_CNDTR1     (UINT32_C(0x4002040C))
#define STM_DMA2_CPAR1      (UINT32_C(0x40020410))
#define STM_DMA2_CMAR1      (UINT32_C(0x40020414))
#define STM_DMA2_CCR2       (UINT32_C(0x4002041C))
#define STM_DMA2_CNDTR2     (UINT32_C(0x40020420))
#define STM_DMA2_CPAR2      (UINT32_C(0x40020424))
#define STM_DMA2_CMAR2      (UINT32_C(0x40020428))
#define STM_DMA2_CCR3       (UINT32_C(0x40020430))
#define STM_DMA2_CNDTR3     (UINT32_C(0x40020434))
#define STM_DMA2_CPAR3      (UINT32_C(0x40020438))
#define STM_DMA2_CMAR3      (UINT32_C(0x4002043C))
#define STM_DMA2_CCR4       (UINT32_C(0x40020444))
#define STM_DMA2_CNDTR4     (UINT32_C(0x40020448))
#define STM_DMA2_CPAR4      (UINT32_C(0x4002044C))
#define STM_DMA2_CMAR4      (UINT32_C(0x40020450))
#define STM_DMA2_CCR5       (UINT32_C(0x40020458))
#define STM_DMA2_CNDTR5     (UINT32_C(0x4002045C))
#define STM_DMA2_CPAR5      (UINT32_C(0x40020460))
#define STM_DMA2_CMAR5      (UINT32_C(0x40020464))

// TIM2
#define STM_TIM2_CR1     0x40000000
#define STM_TIM2_DIER    0x4000000C
#define STM_TIM2_SR      0x40000010
#define STM_TIM2_CNT     0x40000024
#define STM_TIM2_PSC     0x40000028
#define STM_TIM2_ARR     0x4000002C

// IWDG
#define STM_IWDG_KR     (UINT32_C(0x40003000))
#define STM_IWDG_PR     (UINT32_C(0x40003004))
#define STM_IWDG_RLR    (UINT32_C(0x40003008))
#define STM_IWDG_SR     (UINT32_C(0x4000300C))

// SHORTCUT
#define gpioASet(pin)   (kregb(STM_GPIOA_ODR, pin))
#define gpioBSet(pin)   (kregb(STM_GPIOB_ODR, pin))
#define gpioCSet(pin)   (kregb(STM_GPIOC_ODR, pin))
#define gpioDSet(pin)   (kregb(STM_GPIOD_ODR, pin))
#define gpioESet(pin)   (kregb(STM_GPIOE_ODR, pin))
#define gpioFSet(pin)   (kregb(STM_GPIOF_ODR, pin))
#define gpioGSet(pin)   (kregb(STM_GPIOG_ODR, pin))
#define gpioAGet(pin)   (kregb(STM_GPIOA_IDR, pin))
#define gpioBGet(pin)   (kregb(STM_GPIOB_IDR, pin))
#define gpioCGet(pin)   (kregb(STM_GPIOC_IDR, pin))
#define gpioDGet(pin)   (kregb(STM_GPIOD_IDR, pin))
#define gpioEGet(pin)   (kregb(STM_GPIOE_IDR, pin))
#define gpioFGet(pin)   (kregb(STM_GPIOF_IDR, pin))
#define gpioGGet(pin)   (kregb(STM_GPIOG_IDR, pin))

// FUNCTION
void adcInit(void);
void adcConvert(void);
void tim2Init(uint32_t freq);

#endif /* __STM32_H */
