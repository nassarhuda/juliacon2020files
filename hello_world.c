#include <stdio.h>
int hello_world()
{
    printf("Hello, World!\n");
    return 0;
}

int hello_world_repeated(int n)
{
    for (int i = 0; i<n; i++){
        printf("Hello, World!\n");
    }
    return 0;
}