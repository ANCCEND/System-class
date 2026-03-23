#include <stdio.h>
#include <string.h>
#include <memory.h>

#include "./lab1-1.h"

#define N 5
#define N1 2
#define N2 3

int pack_student_bytebybyte(student *s, int sno, char *buf);

int pack_student_whole(student *s, int sno, char *buf);

int restore_student(char *buf, int len, student *s);


int main(int argc,char *argv[]){
    student beforecompress[N], decompress[N];

    if(argc==1 && strcmp(argv[1],"debug")==1){
        for(int i=0;i<N;i++){
            strcpy(beforecompress[i].name,"a1");
            beforecompress[i].age=20;
            beforecompress[i].score=90;
            strcpy(beforecompress[i].remark,"good");
        }
    }

    else{

    }


    return 0;
}