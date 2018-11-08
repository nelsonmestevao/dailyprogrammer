#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int dados, faces ,sum, i;
    FILE *fp = fopen("input.txt","r+");
    while(!feof(fp)) {
        fscanf(fp,"%dd%d\n",&dados,&faces);
        sum=0;
        for(i = 0; i < dados; i++)
            sum+=rand() % faces + 1;
        printf("%d\n",sum);
    }
    fclose(fp);
    return 0;
}
