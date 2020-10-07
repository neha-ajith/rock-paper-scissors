#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
    int lower = 1, upper = 3,rep,ch;
    do{
        printf("Meow! Smudge here! ^_^ \nROCK PAPER or SCISSORS?\n(Choose 1 for ROCK, 2 for PAPER, 3 for SCISSORS)");
        scanf("%d",&ch);
        srand(time(0));
        int num = (rand() % (upper - lower + 1)) + lower;
        if(num == ch){
            printf("Draw!!");
        }
        else if(num == 1 && ch == 2){
            printf("And I chose rock! \nWoah! Point++!");
        }
        else if(num == 2 && ch == 3){
            printf("And I chose paper! \nWoah! Point++!");
        }
        else if(num == 3 && ch == 1){
            printf("And I chose scissors! \nWoah! Point++!");
        }
        else if(num == 1 && ch == 3){
            printf("And I chose rock! \nAww snap! Better luck next time!");
        }
        else if(num == 2 && ch == 1){
            printf("And I chose paper! \nAww snap! Better luck next time!");
        }
        else if(num == 3 && ch == 2){
            printf("And I chose scissors! \nAww snap! Better luck next time!");
        }
        printf("\nWanna continue? (1 for yes and 0 for no)");
        scanf("%d",&rep);
    }while (rep==1);
    return 0;
}