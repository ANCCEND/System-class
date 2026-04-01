#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#ifdef _WIN32
#include <windows.h>
#else
#include <sys/time.h>
#endif

#define STUDENTS_NUM 10
// 计时宏：统计任意函数调用耗时（毫秒）
#define Time_Anyfunc(afuncall)                       \
	do                                               \
	{                                                \
		double start, finish;                        \
		double duration;                             \
		start = now_ms();                            \
		afuncall;                                    \
		finish = now_ms();                           \
		duration = finish - start;                   \
		printf(" %f ms \n", duration); \
	} while (0);

typedef struct temp
{
	char sname[8];
	char sid[11];	 //  如U202315123
	short scores[8]; //  8门课的分数
	short average;	 //  平均分
} student;

extern void computeAverageScoreAsm(student *s,int num);

// 获取高精度当前时间（毫秒）
static double now_ms(void)
{
#ifdef _WIN32
	LARGE_INTEGER counter, frequency;
	QueryPerformanceFrequency(&frequency);
	QueryPerformanceCounter(&counter);
	return (double)counter.QuadPart * 1000.0 / frequency.QuadPart;
#else
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC, &ts);
	return (double)ts.tv_sec * 1000.0 + (double)ts.tv_nsec / 1000000.0;
#endif
}

// 获取系统运行时间（毫秒）
static unsigned int tick_ms(void)
{
#ifdef _WIN32
	return GetTickCount();
#else
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC, &ts);
	return (unsigned int)(ts.tv_sec * 1000ULL + ts.tv_nsec / 1000000ULL);
#endif
}

// 打印学生数组中的信息
void display(student *s, int num)
{
	for (int i = 0; i < num; i++)
	{
		printf("name: %s\nsid: %s\nscore: %hd %hd %hd %hd %hd %hd %hd %hd\naverage: %hd\n\n", s[i].sname, s[i].sid, s[i].scores[0], s[i].scores[1], s[i].scores[2], s[i].scores[3], s[i].scores[4], s[i].scores[5], s[i].scores[6], s[i].scores[7], s[i].average);
	}
}

// 初始化部分学生数据（其余元素保持默认值）
void initStudents(student *s, int num)
{
	strcpy(s[0].sname, "qyy");
	strcpy(s[0].sid, "U202414572");
	s[0].scores[0] = 95;
	s[0].scores[1] = 85;
	s[0].scores[2] = 90;
	for (int i = 1; i < 8; i++)
		s[0].scores[i] = 80 + i;
	s[0].average = 0;

	strcpy(s[1].sname, "wang");
	strcpy(s[1].sid, "U202315002");
	s[1].scores[0] = 100;
}

// 计算每位学生 8 门课的平均分
void computeAverageScore(student *s, int num)
{
	for (int i = 0; i < num; i++)
	{
		int total = 0;
		for (int j = 0; j < 8; j++)
		{
			total += s[i].scores[j];
		}
		s[i].average = total / 8;
	}
}

//用快速排序按平均分从高到低排序
void quickSortAverageScore(student *s,int num){
	if(num <= 1) return;
	student pivot = s[0];
	int i = 1, j = num - 1;
	while(i <= j){
		while(i < num && s[i].average >= pivot.average) i++;
		while(j > 0 && s[j].average < pivot.average) j--;
		if(i < j){
			student temp = s[i];
			s[i] = s[j];
			s[j] = temp;
		}
	}
	s[0] = s[j];
	s[j] = pivot;
	quickSortAverageScore(s, j);
	quickSortAverageScore(s + j + 1, num - j - 1);
}

int main()
{
	student s[STUDENTS_NUM];
	//double start = 10, finish = 20, duration;

	// 打印结构体大小并初始化/展示学生信息
	printf("%zu\n", sizeof(student));
	initStudents(s, STUDENTS_NUM); // init ss
	//display(s, STUDENTS_NUM);
	// 结构体整体赋值：将第 2 个学生复制到第 1 个
	s[0] = s[1];
	//display(s, STUDENTS_NUM);

	// 使用宏统计一次平均分计算耗时
	printf("computeAverageScore cost time: ");
	Time_Anyfunc(computeAverageScore(s, STUDENTS_NUM));

	printf("computeAverageScoreAsm cost time: ");
	Time_Anyfunc(computeAverageScoreAsm(s,STUDENTS_NUM));

	printf("quickSortAverageScore cost time: ");
	Time_Anyfunc(quickSortAverageScore(s,STUDENTS_NUM));

	return 0;
}
