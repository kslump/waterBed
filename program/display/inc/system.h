#ifndef __SYSTEM_H
#define __SYSTEM_H

typedef unsigned    int         event_t;
typedef unsigned    int         size_t;
typedef unsigned    char        bool;
typedef signed      char        int8_t;
typedef unsigned    char        uint8_t;
typedef signed      short       int16_t;
typedef unsigned    short       uint16_t;
typedef signed      int         int32_t;
typedef unsigned    int         uint32_t;
typedef signed      long long   int64_t;
typedef unsigned    long long   uint64_t;

#define INT8_C(x)       x
#define UINT8_C(x)      x
#define INT16_C(x)      x
#define UINT16_C(x)     x
#define INT32_C(x)      x
#define UINT32_C(x)     x##u
#define INT64_C(x)      x##ll
#define UINT64_C(x)     x##ull

#define NULL    ((void *) 0)
#define true    1
#define false   0
#define offsetof(type, member)  ((size_t) (&(((type *) 0)->member)))
#define kalignup(size, align)   (((size) + (align) - 1) & ~((align) - 1))
#define kaligndn(size, align)   ((size) & ~((align) -1))
#define kmbadr(x,b) (0x22000000 | (((unsigned)(x) & 0xFFFFF) << 5) | ((b) << 2))
#define kpbadr(x,b) (0x42000000 | (((unsigned)(x) & 0xFFFFF) << 5) | ((b) << 2))
#define kreg8(x)    (*((volatile unsigned char  *) (x)))
#define kreg16(x)   (*((volatile unsigned short *) (x)))
#define kreg32(x)   (*((volatile unsigned long  *) (x)))
#define kregb(x,b)  (*((volatile unsigned long  *) (kpbadr(x, b))))

#define kcriticalEnter(cpusr)           \
    __asm__ __volatile__ (              \
        "mrs %[save], primask   \n\t"   \
        "cpsid i                \n\t"   \
        : [save]"=r" (cpusr)            \
        :                               \
        : "cc", "memory"                \
    );

#define kcriticalLeave(cpusr)           \
    __asm__ __volatile__ (              \
        "msr primask, %[load]   \n\t"   \
        :                               \
        : [load]"r" (cpusr)             \
        : "cc", "memory"                \
    );

void cpuInit(void);
void pinInit(void);
void delay(uint32_t us);
void irqAttach(uint8_t num, uint8_t prio);
void irqDetach(uint8_t num);
void kthreadInit(void (*entry)(void), uint8_t prio, uint8_t *sp);
void kthreadSleep(uint32_t ms);

#endif /* __SYSTEM_H */
