#ifndef __SYSCONF_H
#define __SYSCONF_H

#ifdef  SYSEXT
#define EXTERN
#else
#define EXTERN  extern
#endif

#define STKSIZE_IDLE    96
#define STKSIZE_MAIN    512
#define STKSIZE_DEFT    512

#define STM_PLL_RADIX   (4000000)                       /* 振荡器基频 */
#define STM_PLL_MUL     (16)                            /* 振荡器倍频 2-16 */
#define STM_SYS_CLK     (STM_PLL_RADIX * STM_PLL_MUL)   /* SYS频率 MAX=72M */
#define STM_APB1_DIV    (2)                             /* APB1分频 */
#define STM_APB1_CLK    (STM_SYS_CLK / STM_APB1_DIV)    /* APB1频率 MAX=36M */
#define STM_APB2_DIV    (1)                             /* APB2分频 */
#define STM_APB2_CLK    (STM_SYS_CLK / STM_APB2_DIV)    /* APB2频率 MAX=72M */
#define STM_ADC_DIV     (8)                             /* ADC分频 */
#define STM_ADC_CLK     (STM_APB2_CLK / STM_ADC_DIV)    /* ADC时钟频率 */
#define STM_FLASH_WAIT  (2)                             /* FLASH等待周期 */


#endif /* __SYSCONF_H */

