//如果條件不符合就離開
//the source filename (the predefined macro __FILE__)
//the source line number (the predefined macro __LINE__)
//the source function (the predefined identifier __func__)

#include <stdio.h>
#include <string.h>

#define Test(x)\
    printf("Test: %s\n",#x);\
    assert(x);\

#define assert(condition)\
    if(!condition){\
        printf("Assert at file: %s, line: %d\n",__FILE__,__LINE__);\
    }\

int IEqual2(int i){
    if(i == 2){
        return 1;
    }
    return 0;
}

int main(){
    int i = 2;
    Test(IEqual2(i));
    Test(IEqual2(i+1));
    return 0;
}