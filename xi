#include<stdio.h>typedef struct country{	char name[100];	int gold;	int silver;	int bornze;	int sum; }country;void printCountry(country c){	printf("%s\t%d\t%d\t%d\t%d\n",c.name,c.gold,c.silver,c.bornze,c.sum);}int main(){	country c[8];	FILE* fp=fopen("D:/file.txt","r");	if(fp==NULL)	{		printf("Error\n");		return 0;	}		for(int i=0;i<8;i++)	{		fscanf(fp,"%s %d %d %d %d",c[i].name,&c[i].gold,&c[i].silver,&c[i].bornze,&c[i].sum);	}	fclose(fp);		country sumMax=c[0];	country sumMin=c[0];	for(int i=0;i<8;i++)	{		if(c[i].sum>sumMax.sum)		{			sumMax=c[i];		}		if(c[i].sum<sumMax.sum)		{			sumMin=c[i];		}	}	printf("获得奖牌数量最多的国家信息：\n");	printCountry(sumMax);	printf("获得奖牌数量最少的国家信息：\n"); 	printCountry(sumMin);	 	return 0; }
