#include <limits.h>
#include <stdio.h>

#include "./lab1-2.h"

static int g_total = 0;
static int g_pass = 0;

static void check_int(const char *name, int got, int expect)
{
    g_total++;
    if (got == expect)
    {
        g_pass++;
        printf("[PASS] %-24s got=%d\n", name, got);
    }
    else
    {
        printf("[FAIL] %-24s got=%d expect=%d\n", name, got, expect);
    }
}

static unsigned ref_bitMask(int highbit, int lowbit)
{
    if (highbit < lowbit)
        return 0u;

    {
        unsigned all = ~0u;
        unsigned left = all << lowbit;
        unsigned right = (highbit == 31) ? all : ~(all << (highbit + 1));
        return left & right;
    }
}

static int ref_addOK(int x, int y)
{
    long long s = (long long)x + (long long)y;
    return (s <= INT_MAX && s >= INT_MIN) ? 1 : 0;
}

static int ref_parity(int x)
{
    unsigned u = (unsigned)x;
    int p = 0;
    while (u)
    {
        p ^= (int)(u & 1u);
        u >>= 1;
    }
    return p;
}

int main(void)
{
    check_int("negate(5)", negate(5), -5);
    check_int("negate(-7)", negate(-7), 7);

    check_int("absVal(123)", absVal(123), 123);
    check_int("absVal(-123)", absVal(-123), 123);

    check_int("bitAnd", bitAnd(0x5A, 0x3C), (0x5A & 0x3C));
    check_int("bitOr", bitOr(0x5A, 0x3C), (0x5A | 0x3C));
    check_int("bitXor", bitXor(0x5A, 0x3C), (0x5A ^ 0x3C));

    check_int("isTmax(INT_MAX)", isTmax(INT_MAX), 1);
    check_int("isTmax(-1)", isTmax(-1), 0);
    check_int("isTmax(0)", isTmax(0), 0);

    check_int("bitCount(0)", bitCount(0), 0);
    check_int("bitCount(-1)", bitCount(-1), 32);
    check_int("bitCount(0xF0F0)", bitCount(0xF0F0), 8);

    check_int("bitMask(3,1)", bitMask(3, 1), (int)ref_bitMask(3, 1));
    check_int("bitMask(31,0)", bitMask(31, 0), (int)ref_bitMask(31, 0));
    check_int("bitMask(2,5)", bitMask(2, 5), (int)ref_bitMask(2, 5));

    check_int("addOK(INT_MAX,1)", addOK(INT_MAX, 1), ref_addOK(INT_MAX, 1));
    check_int("addOK(INT_MIN,-1)", addOK(INT_MIN, -1), ref_addOK(INT_MIN, -1));
    check_int("addOK(123,456)", addOK(123, 456), ref_addOK(123, 456));

    check_int("bitSwap", bitSwap(0x12345678, 0, 2), 0x12785634);
    check_int("bitSwap(same)", bitSwap(0x12345678, 1, 1), 0x12345678);

    check_int("bang(0)", bang(0), 1);
    check_int("bang(5)", bang(5), 0);
    check_int("bang(-7)", bang(-7), 0);

    check_int("bitParity(0)", bitParity(0), ref_parity(0));
    check_int("bitParity(7)", bitParity(7), ref_parity(7));
    check_int("bitParity(-1)", bitParity(-1), ref_parity(-1));

    printf("\nSummary: %d/%d passed.\n", g_pass, g_total);
    return (g_pass == g_total) ? 0 : 1;
}
