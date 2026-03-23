#include <string.h>
#include <memory.h>

//绝对值
int absVal(int x)
{
    return (x ^ x >> 31) + (~(x >> 31) + 1);
}
//负数
int negate(int x)
{
    return ~x + 1;
}
//按位与
int bitAnd(int x, int y)
{
    return ~(~x | ~y);
}
//按位或
int bitOr(int x, int y)
{
    return ~(~x & ~y);
}
//按位异或
int bitXor(int x, int y)
{
    return ~(~(~x & y) & ~(x & ~y));
}
//最大有符号整数
int isTmax(int x)
{
    int y = x + 1;
    return !(~x ^ y) & !!y;
}
//1的数量
int bitCount(int x)
{
    x = (x & 0x55555555) + ((x >> 1) & 0x55555555);
    x = (x & 0x33333333) + ((x >> 2) & 0x33333333);
    x = (x & 0x0f0f0f0f) + ((x >> 4) & 0x0f0f0f0f);
    x = (x & 0x00ff00ff) + ((x >> 8) & 0x00ff00ff);
    x = (x & 0x0000ffff) + ((x >> 16) & 0x0000ffff);
    return x;
}
//掩码
int bitMask(int highbit, int lowbit)
{
    unsigned left = ~0u << lowbit;
    unsigned right = ~0u >> (31 - highbit);
    if (highbit < lowbit)
        return 0;
    return (int)(left & right);
}
//是否加溢出
int addOK(int x, int y)
{
    int sx = x >> 31;
    int sy = y >> 31;
    int ss = (x + y) >> 31;
    int overflow = (!(sx ^ sy)) & (sx ^ ss);
    return !overflow;
}
//第m和n字节交换
int bitSwap(int x, int n, int m)
{
    int byte_n = (x >> (n << 3)) & 0xFF;
    int byte_m = (x >> (m << 3)) & 0xFF;

    int mask = (0xFF << (n << 3)) | (0xFF << (m << 3));
    int x_cleared = x & ~mask;

    return x_cleared | (byte_n << (m << 3)) | (byte_m << (n << 3));
}
//逻辑非
int bang(int x)
{
    return (unsigned)~(x >> 31 | (~x + 1) >> 31) >> 31;
}
//有奇数个1返回1
int bitParity(int x)
{
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    return x & 1;
}