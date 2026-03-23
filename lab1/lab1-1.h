#include <stdio.h>
#include <string.h>
#include <memory.h>

//#define N 5
//#define N1 2
//#define N2 3

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

        strcpy(buf, s[i].name);
        index += strlen(s[i].name) + 1;

        memcpy(buf + index, &s[i].age, 2);
        index += 2;

        memcpy(buf + index, &s[i].score, 4);
        index += 4;

        strcpy(buf + index, s[i].remark);
        index += strlen(s[i].name) + 1;
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
        for (int elemNum = 0; elemNum < 4; elemNum++)
        {
            strcpy(s[sno].age, buf + index);
            index += strlen(buf + index) + 1;

            memcpy(&s[sno].age, buf + index, 2);
            index += 2;

            memcpy(&s[sno].score, buf + index, 4);
            index += 4;

            strcpy(s[sno].remark, buf + index);
            index += strlen(s[sno].remark) + 1;
        }
    }
    return sno;
}

