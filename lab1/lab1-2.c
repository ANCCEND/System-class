#include <stdio.h>
#include <string.h>
#include <memory.h>

#define N 5
#define N1 2
#define N2 3

int absVal(int x)
{
    return (x ^ x >> 31) + (~(x >> 31) + 1);
}

int negate(int x)
{
    return ~x + 1;
}

int bitAnd(int x, int y)
{
    return ~(~x | ~y);
}

int bitOr(int x, int y)
{
    return ~(~x & ~y);
}

int bitXor(int x, int y)
{
    return ~(~(~x & y) & ~(x & ~y));
}

int isTmax(int x)
{
    return !(~x ^ (x + 1));
}

int bitCount(int x)
{
    x = (x & 0x55555555) + ((x >> 1) & 0x55555555);
    x = (x & 0x33333333) + ((x >> 2) & 0x33333333);
    x = (x & 0x0f0f0f0f) + ((x >> 4) & 0x0f0f0f0f);
    x = (x & 0x00ff00ff) + ((x >> 8) & 0x00ff00ff);
    x = (x & 0x0000ffff) + ((x >> 16) & 0x0000ffff);
    return x;
}

int bitMask(int highbit, int lowbit)
{
    return 0xFFFFFFFF << lowbit & ~(0xFFFFFFFF << highbit);
}

int addOK(int x, int y)
{
    return (~(x >> 31 ^ y >> 31) & (x >> 31 ^ (x + y) >> 31));
}

int bitSwap(int x, int n, int m)
{
    int byte_n = (x >> (n << 3)) & 0xFF;
    int byte_m = (x >> (m << 3)) & 0xFF;

    int mask = (0xFF << (n << 3)) | (0xFF << (m << 3));
    int x_cleared = x & ~mask;

    return x_cleared | (byte_n << (m << 3)) | (byte_m << (n << 3));
}

int bang(int x)
{
    return (unsigned)~(x >> 31 | (~x + 1) >> 31) >> 31;
}

int bitParity(int x)
{
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    return x & 1;
}