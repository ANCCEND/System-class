#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "./lab1-1.h"

#define N 5
#define N1 2
#define N2 3

int pack_student_bytebybyte(student *s, int sno, char *buf);

int pack_student_whole(student *s, int sno, char *buf);

int restore_student(char *buf, int len, student *s);

int main(int argc, char *argv[])
{
    student beforecompress[N], decompress[N];

    if (argc == 2 && strcmp(argv[1], "debug") == 0)
    {
        for (int i = 0; i < N; i++)
        {
            if (i == 0)
            {
                strcpy(beforecompress[i].name, "a1");
                beforecompress[i].age = 20;
                beforecompress[i].score = 90;
                strcpy(beforecompress[i].remark, "good");
            }
            else if (i == 1)
            {
                strcpy(beforecompress[i].name, "a1b2");
                beforecompress[i].age = 20;
                beforecompress[i].score = 90;
                strcpy(beforecompress[i].remark, "good good");
            }
            else if (i == 2)
            {
                strcpy(beforecompress[i].name, "a1b2c3");
                beforecompress[i].age = 20;
                beforecompress[i].score = 90;
                strcpy(beforecompress[i].remark, "good good good");
            }
            else if (i == 3)
            {
                strcpy(beforecompress[i].name, "b2c3d");
                beforecompress[i].age = 20;
                beforecompress[i].score = 90;
                strcpy(beforecompress[i].remark, "good bad");
            }
            else if (i == 4)
            {
                strcpy(beforecompress[i].name, "d5");
                beforecompress[i].age = 20;
                beforecompress[i].score = 90;
                strcpy(beforecompress[i].remark, "good");
            }
        }

        char *message = malloc(sizeof(char) * (8 + 2 + 4 + 200) * N);
        if (message == NULL)
        {
            printf("malloc failed\n");
            return 1;
        }

        int len_1 = pack_student_bytebybyte(beforecompress, N1, message);
        int len_2 = pack_student_whole(beforecompress + N1, N2, message + len_1);

        for (int i = 0; i < 40; i++)
        {
            printf("0x%02X ", (unsigned char)message[i]);
            if (i != 0 && i % 8 == 7)
                printf("\n");
        }
        printf("\n\n");

        int snum = restore_student(message, len_1 + len_2, decompress);
        for (int i = 0; i < N; i++)
        {
            printf("%s %hd %f %s\n", beforecompress[i].name, beforecompress[i].age, beforecompress[i].score, beforecompress[i].remark);
        }
        printf("\n");

        for (int i = 0; i < snum; i++)
        {
            printf("%s %hd %f %s\n", decompress[i].name, decompress[i].age, decompress[i].score, decompress[i].remark);
        }
        printf("\n");

        printf("Recovered count: %d\n", snum);
        printf("Before-compressed length: %zu\n", N * sizeof(student));
        printf("Compressed length: %d\n", len_1 + len_2);

        free(message);
    }

    else
    {
        printf("Input: (name) (age) (scroe) (remark)\nOne line a student.\n");
        for(int i=0;i<N;i++){
            scanf("%s %hd %f %s", beforecompress[i].name,&beforecompress[i].age,&beforecompress[i].score,beforecompress[i].remark);
        }
        printf("\n");

        char *message = malloc(sizeof(char) * (8 + 2 + 4 + 200) * N);
        if (message == NULL)
        {
            printf("malloc failed\n");
            return 1;
        }

        int len_1 = pack_student_bytebybyte(beforecompress, N1, message);
        int len_2 = pack_student_whole(beforecompress + N1, N2, message + len_1);

        printf("The first 40 bit of message:\n");
        for (int i = 0; i < 40; i++)
        {
            printf("0x%02X ", (unsigned char)message[i]);
            if (i != 0 && i % 8 == 7)
                printf("\n");
        }
        printf("\n");

        int snum = restore_student(message, len_1 + len_2, decompress);

        printf("Before compressed:\n");
        for (int i = 0; i < N; i++)
        {
            printf("%s %hd %f %s\n", beforecompress[i].name, beforecompress[i].age, beforecompress[i].score, beforecompress[i].remark);
        }
        printf("\n");

        printf("After compressed:\n");
        for (int i = 0; i < snum; i++)
        {
            printf("%s %hd %f %s\n", decompress[i].name, decompress[i].age, decompress[i].score, decompress[i].remark);
        }
        printf("\n");

        printf("Recovered student count: %d\n", snum);
        printf("Before-compressed length: %zu\n", N * sizeof(student));
        printf("Compressed length: %d\n", len_1 + len_2);

        free(message);
    }

    return 0;
}