//void *memcpy(void *str1, const void *str2, size_t n)
//讓str==str2，複製  第一個數值=第二個
#include <stdio.h>
#include <string.h>
void *memcpy(void *str1, const void *str2, size_t n)
{
    char *s1=(char*)str1;
    char *s2=(char*)str2;
    for (int i=0;i<n;i++)
    {
        s1[i]=s2[i];
    }
}

//實際使用

int main()
{
    char text1[]="Fl0Wer 1s beaut!fuI";
    char text2[100];
    memcpy(text2, text1, strlen(text1)+1);
    printf("%s",text2);
}


