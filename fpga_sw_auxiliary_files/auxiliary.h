
__asm (".section .text");
__asm (".global _start");
__asm ("_start:");

// Enable Caches in MRAC
__asm ("li t0, 0x5f555555");
__asm ("csrw 0x7c0, t0");

// Set stack pointer.
//__asm ("la sp, STACK");

__asm ("jal main");
__asm ("loop: j loop");
__asm ("nop");
__asm ("nop");
__asm ("nop");
__asm ("nop");

#include "branch_counters.h"
#include <stdarg.h>
#include <stdlib.h>

static int
whisperPutc(char c)
{
//  __whisper_console_io = c;
//  __whisper_console_io = c;
  __asm("put_byte: ");
  __asm("li t5, 0x80002000");
  __asm("lb t6, (4*0x05)(t5)");
  __asm("andi t6, t6, 0x20");
  __asm("beqz t6, put_byte");
  __asm("sb %0, 0(t5)" : "=r"(c));
  //*(volatile char*)(STDOUT) = c;
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
          char c = digit < 10 ? '0' + digit : 'a' + digit - 10;
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


void* memset(void* s, int c, size_t n)
{
  asm("mv t0, a0");
  asm("add a2, a2, a0");  // end = s + n
  asm(".memset_loop: bge a0, a2, .memset_end");
  asm("sb a1, 0(a0)");
  asm("addi a0, a0, 1");
  asm("j .memset_loop");
  asm(".memset_end:");
  asm("mv a0, t0");
  asm("jr ra");
}
