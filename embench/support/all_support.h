#define CPU_MHZ 1
#include <stddef.h>
#include <stdio.h>



extern int STACK;
int main (int argc, char *argv[]);

#define STDOUT 0xd0580000

__asm (".section .text");
__asm (".global _start");
__asm ("_start:");

// Enable Caches in MRAC
__asm ("li t0, 0x5f555555");
__asm ("csrw 0x7c0, t0");

// Set stack pointer.
__asm ("la sp, STACK");

__asm ("jal main");

// Write 0xff to STDOUT for TB to termiate test.
__asm (".global _finish");
__asm ("_finish:");
__asm ("li t0, 0xd0580000");
__asm ("addi t1, zero, 0xff");
__asm ("sb t1, 0(t0)");
__asm ("beq x0, x0, _finish");
__asm (".rept 10");
__asm ("nop");
__asm (".endr");

// time measurements
#include <time.h>
typedef clock_t CORE_TICKS;
typedef unsigned int ee_u32;
#if HAS_FLOAT
typedef double secs_ret;
#else
typedef ee_u32 secs_ret;
#endif

#define NSECS_PER_SEC 1000000000
#define CORETIMETYPE clock_t
//#define GETMYTIME(_t) (*_t=clock())
#define GETMYTIME(_t) (*_t=0)
#define MYTIMEDIFF(fin,ini) ((fin)-(ini))
#define TIMER_RES_DIVIDER 1
#define SAMPLE_TIME_IMPLEMENTATION 1
//#define EE_TICKS_PER_SEC (NSECS_PER_SEC / TIMER_RES_DIVIDER)

#define EE_TICKS_PER_SEC 1000

/** Define Host specific (POSIX), or target specific global time variables. */
static CORETIMETYPE start_time_val, stop_time_val;

/* Function : start_time
        This function will be called right before starting the timed portion of the benchmark.
        Implementation may be capturing a system timer (as implemented in the example code)
        or zeroing some system parameters - e.g. setting the cpu clocks cycles to 0.
*/
void start_time(void) {
    uint32_t mcyclel;
    asm volatile ("csrr %0,mcycle"  : "=r" (mcyclel) );
    start_time_val = mcyclel;
}
/* Function : stop_time
        This function will be called right after ending the timed portion of the benchmark.
        Implementation may be capturing a system timer (as implemented in the example code)
        or other system parameters - e.g. reading the current value of cpu cycles counter.
*/
void stop_time(void) {
    uint32_t mcyclel;
    asm volatile ("csrr %0,mcycle"  : "=r" (mcyclel) );
    stop_time_val = mcyclel;
}
/* Function : get_time
        Return an abstract "ticks" number that signifies time on the system.
        Actual value returned may be cpu cycles, milliseconds or any other value,
        as long as it can be converted to seconds by <time_in_secs>.
        This methodology is taken to accomodate any hardware or simulated platform.
        The sample implementation returns millisecs by default,
        and the resolution is controlled by <TIMER_RES_DIVIDER>
*/
CORE_TICKS get_time(void) {
    CORE_TICKS elapsed=(CORE_TICKS)(MYTIMEDIFF(stop_time_val, start_time_val));
    return elapsed;
}
/* Function : time_in_secs
        Convert the value returned by get_time to seconds.
        The <secs_ret> type is used to accomodate systems with no support for floating point.
        Default implementation implemented by the EE_TICKS_PER_SEC macro above.
*/
secs_ret time_in_secs(CORE_TICKS ticks) {
    secs_ret retval=((secs_ret)ticks) / (secs_ret)EE_TICKS_PER_SEC;
    return retval;
}

secs_ret time_in_msecs(CORE_TICKS ticks) {
    secs_ret retval=((secs_ret)ticks) / (secs_ret)(EE_TICKS_PER_SEC / 1000);
    return retval;
}

/* Compiler and system dependent definitions: */


#define Mic_secs_Per_Second     1000000.0
/* Berkeley UNIX C returns process times in seconds/HZ */

#ifdef  NOSTRUCTASSIGN
#define structassign(d, s)      memcpy(&(d), &(s), sizeof(d))
#else
#define structassign(d, s)      d = s
#endif

#ifdef  NOENUM
#define Ident_1 0
#define Ident_2 1
#define Ident_3 2
#define Ident_4 3
#define Ident_5 4
  typedef int   Enumeration;
#else
typedef       enum    {Ident_1, Ident_2, Ident_3, Ident_4, Ident_5}
        Enumeration;
#endif
/* for boolean and enumeration types in Ada, Pascal */

/* General definitions: */

/* #include <stdio.h>
 */
/* for strcpy, strcmp */

#define Null 0
/* Value of a Null pointer */
#define true  1
#define false 0

typedef int     One_Thirty;
typedef int     One_Fifty;
typedef char    Capital_Letter;
typedef int     Boolean;
typedef char    Str_30 [31];
typedef int     Arr_1_Dim [50];
typedef int     Arr_2_Dim [50] [50];

typedef struct record
{
    struct record *Ptr_Comp;
    Enumeration    Discr;
    union {
        struct {
            Enumeration Enum_Comp;
            int         Int_Comp;
            char        Str_Comp [31];
        } var_1;
        struct {
            Enumeration E_Comp_2;
            char        Str_2_Comp [31];
        } var_2;
        struct {
            char        Ch_1_Comp;
            char        Ch_2_Comp;
        } var_3;
    } variant;
} Rec_Type, *Rec_Pointer;


/*
//#define NUM_RUNS (20)
#ifdef CONSTANT
#define NUM_RUNS (CONSTANT)
#else
#define NUM_RUNS (1000)
#endif
#define DLX_FREQ 200  // in MHz 
#define PROC_6 0

void Ireport ( int c ) {
    // report(c);
}

#ifndef strcpy
char *strcpy (char *dst0, const char *src0)
{
    char *s = dst0;

    while ((*dst0++ = *src0++));

    return s;
}
#endif

#ifndef strcmp
int strcmp (const char *s1, const char *s2)
{
    while (*s1 && *s2 && *s1 == *s2) {
        s1++;
        s2++;
    }
    return (*(unsigned char *) s1) - (*(unsigned char *) s2);
}
#endif

#define DETECTNULL(X) (((X) - 0x01010101) & ~(X) & 0x80808080)
#define UNALIGNED(X, Y) \
  (((long)X & (sizeof (long) - 1)) | ((long)Y & (sizeof (long) - 1)))


// Global Variables: 

Rec_Pointer     Ptr_Glob,
        Next_Ptr_Glob;
int             Int_Glob;
Boolean         Bool_Glob;
char            Ch_1_Glob,
        Ch_2_Glob;
int             Arr_1_Glob [50];
int             Arr_2_Glob [50] [50];


// forward declaration necessary since Enumeration may not simply be int 

#ifndef REG
Boolean Reg = false;
#define REG
// REG becomes defined as empty 
// i.e. no register variables   
#else
Boolean Reg = true;
#endif

// variables for time measurement: 

#if DLX || OR1K
#define Too_Small_Time DLX_FREQ
#else
#define Too_Small_Time 1
#endif

#define TIMER0 0
#define TIMER1 1




unsigned int	Begin_Time,
        End_Time,
        User_Time,
        Microseconds,
        Dhrystones_Per_Second;

*/





/* BEEBS local library variants

   Copyright (C) 2019 Embecosm Limited.

   Contributor Jeremy Bennett <jeremy.bennett@embecosm.com>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later */

/* These are very simple local versions of library routines, to ensure the
   code is compiled with the flags used for the benchmark.  Not all library
   routines are here, just ones that cause a lot of unecessary load, or where
   there is variation between platforms and architectures. */

#include <stddef.h>
#include <string.h>
#include "beebsc.h"


/* Seed for the random number generator */

static long int seed = 0;

/* Heap records and sane initial values */

static void *heap_ptr = NULL;
static void *heap_end = NULL;
static size_t heap_requested = 0;


/* Yield a sequence of random numbers in the range [0, 2^15-1].

   long int is guaranteed to be at least 32 bits. The seed only ever uses 31
   bits (so is positive).

   For BEEBS this gets round different operating systems using different
   multipliers and offsets and RAND_MAX variations. */

int
rand_beebs (void)
{
    seed = (seed * 1103515245L + 12345) & ((1UL << 31) - 1);
    return (int) (seed >> 16);
}


/* Initialize the random number generator */

void
srand_beebs (unsigned int new_seed)
{
    seed = (long int) new_seed;
}


/* Initialize the BEEBS heap pointers. Note that the actual memory block is
   in the caller code. */

void
init_heap_beebs (void *heap, size_t heap_size)
{
    heap_ptr = (void *) heap;
    heap_end = (void *) ((char *) heap_ptr + heap_size);
    heap_requested = 0;
}


/* Report if malloc ever failed.

   Return non-zero (TRUE) if malloc did not reqest more than was available
   since the last call to init_heap_beebs, zero (FALSE) otherwise. */

int
check_heap_beebs (void *heap)
{
    return ((void *) ((char *) heap + heap_requested) <= heap_end);
}


/* BEEBS version of malloc.

   This is primarily to reduce library and OS dependencies. Malloc is
   generally not used in embedded code, or if it is, only in well defined
   contexts to pre-allocate a fixed amount of memory. So this simplistic
   implementation is just fine.

   Note in particular the assumption that memory will never be freed! */

void *
malloc_beebs (size_t size)
{
    void *new_ptr = heap_ptr;

    heap_requested += size;

    if (((void *) ((char *) heap_ptr + size) > heap_end) || (0 == size))
        return NULL;
    else
    {
        heap_ptr = (void *) ((char *) heap_ptr + size);
        return new_ptr;
    }
}



/* BEEBS version of calloc.

   Implement as wrapper for malloc */
/*
void *
calloc_beebs (size_t nmemb, size_t size)
{
  void *new_ptr = malloc_beebs (nmemb * size);

  //Calloc is defined to zero the memory. OK to use a function here, because
  //   it will be handled specially by the compiler anyway.

  if (NULL != new_ptr)
    memset (new_ptr, 0, nmemb * size);

  return new_ptr;
}

*/
/* BEEBS version of realloc.

   This is primarily to reduce library and OS dependencies. We just have to
   allocate new memory and copy stuff across. */

void *
realloc_beebs (void *ptr, size_t size)
{
    void *new_ptr = heap_ptr;

    heap_requested += size;

    if (((void *) ((char *) heap_ptr + size) > heap_end) || (0 == size))
        return NULL;
    else
    {
        heap_ptr = (void *) ((char *) heap_ptr + size);

        /* This is clunky, since we don't know the size of the original
           pointer. However it is a read only action and we know it must
           be big enough if we right off the end, or we couldn't have
           allocated here. If the size is smaller, it doesn't matter. */

        if (NULL != ptr)
        {
            size_t i;

            for (i = 0; i < size; i++)
                ((char *) new_ptr)[i] = ((char *) ptr)[i];
        }

        return new_ptr;
    }
}


/* BEEBS version of free.

   For our simplified version of memory handling, free can just do nothing. */

void
free_beebs (void *ptr __attribute__ ((unused)))
{
}


/*
   Local Variables:
   mode: C
   c-file-style: "gnu"
   End:
*/

















































// prinf
#include <stdarg.h>

// Special address. Writing (store byte instruction) to this address
// causes the simulator to write to the console.
volatile char __whisper_console_io = 0;


static int
whisperPutc(char c)
{
//  __whisper_console_io = c;
//  __whisper_console_io = c;
    *(volatile char*)(STDOUT) = c;
    return c;
}


static int
whisperPuts(const char* s)
{
    while (*s)
        whisperPutc(*s++);
    return 1;
}


static int
whisperPrintDecimal(int value)
{
    char buffer[20];
    int charCount = 0;

    unsigned neg = value < 0;
    if (neg)
    {
        value = -value;
        whisperPutc('-');
    }

    do
    {
        char c = '0' + (value % 10);
        value = value / 10;
        buffer[charCount++] = c;
    }
    while (value);

    char* p = buffer + charCount - 1;
    for (unsigned i = 0; i < charCount; ++i)
        whisperPutc(*p--);

    if (neg)
        charCount++;

    return charCount;
}


static int
whisperPrintInt(int value, int base)
{
    if (base == 10)
        return whisperPrintDecimal(value);

    char buffer[20];
    int charCount = 0;

    unsigned uu = value;

    if (base == 8)
    {
        do
        {
            char c = '0' + (uu & 7);
            buffer[charCount++] = c;
            uu >>= 3;
        }
        while (uu);
    }
    else if (base == 16)
    {
        do
        {
            int digit = uu & 0xf;
            char c = digit < 10 ? '0' + digit : 'a' + digit;
            buffer[charCount++] = c;
            uu >>= 4;
        }
        while (uu);
    }
    else
        return -1;

    char* p = buffer + charCount - 1;
    for (unsigned i = 0; i < charCount; ++i)
        whisperPutc(*p--);

    return charCount;
}


int
whisperPrintfImpl(const char* format, va_list ap)
{
    int count = 0;  // Printed character count

    for (const char* fp = format; *fp; fp++)
    {
        if (*fp != '%')
        {
            whisperPutc(*fp);
            ++count;
            continue;
        }

        ++fp;  // Skip %

        if (*fp == 0)
            break;

        if (*fp == '%')
        {
            whisperPutc('%');
            continue;
        }

        if (*fp == '-')
        {
            fp++;  // Pad right not yet implemented.
        }

        while (*fp == '0')
        {
            fp++;  // Pad zero not yet implented.
        }

        if (*fp == '*')
        {
            int width = va_arg(ap, int);
            fp++;  // Width not yet implemented.
        }
        else
        {
            while (*fp >= '0' && *fp <= '9')
                ++fp;   // Width not yet implemented.
        }

        switch (*fp)
        {
            case 'd':
                count += whisperPrintDecimal(va_arg(ap, int));
                break;

            case 'u':
                count += whisperPrintDecimal((unsigned) va_arg(ap, unsigned));
                break;

            case 'x':
            case 'X':
                count += whisperPrintInt(va_arg(ap, int), 16);
                break;

            case 'o':
                count += whisperPrintInt(va_arg(ap, int), 8);
                break;

            case 'c':
                whisperPutc(va_arg(ap, int));
                ++count;
                break;

            case 's':
                count += whisperPuts(va_arg(ap, char*));
                break;
        }
    }

    return count;
}


int
whisperPrintf(const char* format, ...)
{
    va_list ap;

    va_start(ap, format);
    int code = whisperPrintfImpl(format, ap);
    va_end(ap);

    return code;
}


int
printf(const char* format, ...)
{
    va_list ap;

    va_start(ap, format);
    int code = whisperPrintfImpl(format, ap);
    va_end(ap);

    return code;
}






































/* Common main.c for the benchmarks

   Copyright (C) 2014 Embecosm Limited and University of Bristol
   Copyright (C) 2018-2019 Embecosm Limited

   Contributor: James Pallister <james.pallister@bristol.ac.uk>
   Contributor: Jeremy Bennett <jeremy.bennett@embecosm.com>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later */

#include "support.h"




int __attribute__ ((used))
main (int argc __attribute__ ((unused)),
      char *argv[] __attribute__ ((unused)))
{
    int i;
    volatile int result;
    int correct;

    //initialise_board ();
    initialise_benchmark ();
    //warm_caches (WARMUP_HEAT);

    printf("Execution starts%c", '\n');
    start_time();
    result = benchmark ();
    stop_time();

    CORE_TICKS total_time=get_time();
    int val1 = total_time/1000;
    int val2 = ((total_time*100)/1000) % 100;
    printf("Result/MHz   : %d.%d%c",val1, val2, '\n');

    /* bmarks that use arrays will check a global array rather than int result */

    correct = verify_benchmark (result);

    if (correct)
    {
        printf("Benchmarks passed%c", '\n');
    }
    else{
        printf("Benchmarks failed%c", '\n');
    }
    return (!correct);

}				/* main () */


/*
   Local Variables:
   mode: C
   c-file-style: "gnu"
   End:
*/



