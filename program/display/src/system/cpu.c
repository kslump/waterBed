#include <include.h>

// kvarThread[00..03]  : thread 0 delay
// kvarThread[04..07]  : thread 1 delay
// kvarThread[08..11]  : thread 2 delay
// kvarThread[12..15]  : thread 3 delay
// kvarThread[16..19]  : thread 4 delay
// kvarThread[20..23]  : thread 5 delay
// kvarThread[24..27]  : thread 6 delay
// kvarThread[28]      : bitmap of ready thread
// kvarThread[29]      : bitstat of thread error
// kvarThread[30]      : prio of current thread
// kvarThread[31]      : prio of highrdy thread
// kvarThread[32-35]   : thread 0 stack pointer
// kvarThread[36-39]   : thread 1 stack pointer
// kvarThread[40-43]   : thread 2 stack pointer
// kvarThread[44-47]   : thread 3 stack pointer
// kvarThread[48-51]   : thread 4 stack pointer
// kvarThread[52-55]   : thread 5 stack pointer
// kvarThread[56-59]   : thread 6 stack pointer
// kvarThread[60-63]   : thread 7 stack pointer

uint8_t stackIdle[STKSIZE_IDLE] __attribute__((aligned(8)));
uint8_t stackMain[STKSIZE_MAIN] __attribute__((aligned(8)));
uint8_t kvarThread[64] __attribute__((aligned(8)));

void cpuInit(void) {
   stmFlashAcr.latency = STM_FLASH_WAIT;
   stmRccCfgr.pllmul = STM_PLL_MUL - 2;

   if (STM_APB1_DIV == 2)
      stmRccCfgr.ppre1 = 4;
   else if (STM_APB1_DIV == 4)
      stmRccCfgr.ppre1 = 5;
   else if (STM_APB1_DIV == 8)
      stmRccCfgr.ppre1 = 6;
   else if (STM_APB1_DIV == 16)
      stmRccCfgr.ppre1 = 7;
   else
      stmRccCfgr.ppre1 = 0;

   if (STM_APB2_DIV == 2)
      stmRccCfgr.ppre2 = 4;
   else if (STM_APB2_DIV == 4)
      stmRccCfgr.ppre2 = 5;
   else if (STM_APB2_DIV == 8)
      stmRccCfgr.ppre2 = 6;
   else if (STM_APB2_DIV == 16)
      stmRccCfgr.ppre2 = 7;
   else
      stmRccCfgr.ppre2 = 0;

   if (STM_ADC_DIV == 2)
      stmRccCfgr.adcpre = 0;
   else if (STM_ADC_DIV == 4)
      stmRccCfgr.adcpre = 1;
   else if (STM_ADC_DIV == 6)
      stmRccCfgr.adcpre = 2;
   else
      stmRccCfgr.adcpre = 3;

   stmRccCr.pllon = 1;
   while (!stmRccCr.pllrdy)
      ;
   stmRccCfgr.sw = 2;
   while (stmRccCfgr.sws != 2)
      ;

   stmRccApb2Enr.afio = 1;
   stmRccApb2Enr.gpioa = 1;
   stmRccApb2Enr.gpiob = 1;
   stmRccApb2Enr.gpioc = 1;
   stmRccApb2Enr.gpiod = 1;
   //stmAfioMapr.swjcfg = 2;
   //stmAfioMapr.pd01 = 1;

   kreg32(NVIC_AIRCR) = UINT32_C(0x05FA0700);
   kreg8(NVIC_PRIO_PENDSV) = 7 << 4;
   kreg8(NVIC_PRIO_SYSTICK) = 7 << 4;
   kreg32(NVIC_SYSTICK_RELOAD) = STM_SYS_CLK / 8000 - 1;
   kreg32(NVIC_SYSTICK_CSR) |= 0x00000002;
   kreg32(NVIC_SYSTICK_CSR) |= 0x00000001;

   stmRccCsr.lsion = 1;
   while (!stmRccCsr.lsirdy);
   while (kreg32(STM_IWDG_SR))
      ;
   kreg16(STM_IWDG_KR) = 0x5555;
   kreg8(STM_IWDG_PR) = 0x0000;
   kreg16(STM_IWDG_RLR) = 0x0400; // 100 ms
   kreg16(STM_IWDG_KR) = 0xAAAA;
   kreg16(STM_IWDG_KR) = 0xCCCC;
}

void delay(uint32_t us) {
   uint32_t begin, end, curr, ival;

   begin = kreg32(NVIC_SYSTICK_CURRENT);
   ival = us * (STM_SYS_CLK / 8000000);
   if (begin >= ival) {
      end = begin - ival;
      do {
         curr = kreg32(NVIC_SYSTICK_CURRENT);
      } while ((curr > end) && (curr <= begin));
   } else {
      end = (STM_SYS_CLK / 8000) + begin - ival;
      do {
         curr = kreg32(NVIC_SYSTICK_CURRENT);
      } while ((curr >= end) || (curr <= begin));                               
   }
}

void irqAttach(uint8_t num, uint8_t prio) {
   kreg8(NVIC_IRQ_PRIO + num) = prio << 4;
   kreg32(NVIC_IRQ_SETEN + ((num >> 5) << 2)) = 1 << (num & 0x1F);
}

void irqDetach(uint8_t num) {
   kreg32(NVIC_IRQ_CLREN + ((num >> 5) << 2)) = 1 << (num & 0x1F);
}
