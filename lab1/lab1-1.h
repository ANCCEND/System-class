#include <stdio.h>
#include <string.h>
#include <memory.h>

// #define N 5
// #define N1 2
// #define N2 3

typedef struct
{
    char name[8];
    short age;
    float score;
    char remark[200];
} student;

int pack_student_bytebybyte(student *s, int sno, char *buf)
{
    int packedLen = 0;
    int index = 0;
    for (int i = 0; i < sno; i++)
    {
        int nameLength = strlen(s[i].name) + 1;
        int ageLength = sizeof(s[i].age);
        int scoreLength = sizeof(s[i].score);
        int remarkLenth = strlen(s[i].remark) + 1;
        packedLen += nameLength + ageLength + scoreLength + remarkLenth;

        for (int j = 0; j < nameLength; j++)
        {
            buf[index++] = s[i].name[j];
        }

        for (int j = 0; j < ageLength; j++)
        {
            int tempAge = s[i].age;
            buf[index++] = tempAge >> (j * 8);
        }

        for (int j = 0; j < scoreLength; j++)
        {
            char *tempScoreP = (char *)&s[i].score;
            buf[index++] = tempScoreP[j];
        }

        for (int j = 0; j < remarkLenth; j++)
        {
            buf[index++] = s[i].remark[j];
        }
    }

    return packedLen;
}

int pack_student_whole(student *s, int sno, char *buf)
{
    int packedLen = 0, index = 0;
    for (int i = 0; i < sno; i++)
    {
        int nameLength = strlen(s[i].name) + 1;
        int ageLength = sizeof(s[i].age);
        int scoreLength = sizeof(s[i].score);
        int remarkLenth = strlen(s[i].remark) + 1;
        packedLen += nameLength + ageLength + scoreLength + remarkLenth;

        strcpy(buf + index, s[i].name);
        index += nameLength;

        memcpy(buf + index, &s[i].age, ageLength);
        index += ageLength;

        memcpy(buf + index, &s[i].score, scoreLength);
        index += scoreLength;

        strcpy(buf + index, s[i].remark);
        index += remarkLenth;
    }

    return packedLen;
}

int restore_student(char *buf, int len, student *s)
{
    if (len < 1 + 2 + 4 + 1)
        return 0;
    int index = 0, sno = 0;
    while (index + 1 + 2 + 4 + 1 <= len)
    {
        int remaining = len - index;
        int nameLen = strnlen(buf + index, remaining);
        if (nameLen >= remaining)
            break;
        if (nameLen >= (int)sizeof(s[sno].name))
            nameLen = sizeof(s[sno].name) - 1;
        memcpy(s[sno].name, buf + index, nameLen);
        s[sno].name[nameLen] = '\0';
        index += strnlen(buf + index, remaining) + 1;

        if (index + (int)sizeof(s[sno].age) + (int)sizeof(s[sno].score) + 1 > len)
            break;

        memcpy(&s[sno].age, buf + index, sizeof(s[sno].age));
        index += sizeof(s[sno].age);

        memcpy(&s[sno].score, buf + index, sizeof(s[sno].score));
        index += sizeof(s[sno].score);

        remaining = len - index;
        int remarkLen = strnlen(buf + index, remaining);
        if (remarkLen >= remaining)
            break;
        if (remarkLen >= (int)sizeof(s[sno].remark))
            remarkLen = sizeof(s[sno].remark) - 1;
        memcpy(s[sno].remark, buf + index, remarkLen);
        s[sno].remark[remarkLen] = '\0';
        index += strnlen(buf + index, remaining) + 1;

        sno++;
    }
    return sno;
}
