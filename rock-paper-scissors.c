#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
    int lower = 1, upper = 3,rep,ch;
    char user_name[10]= "You";
    int smudge_point = 0, user_point = 0;
    printf("Meow! Smudge here! ^_^\n");
    printf("What shall I call you?\n");
    gets(user_name);
    printf("Nice to meet you, ");
    puts(user_name);
    printf("Let's get started!");
    do{
        printf("\nROCK PAPER or SCISSORS?\n(Choose 1 for ROCK, 2 for PAPER, 3 for SCISSORS)\n");
        scanf("%d",&ch);
        srand(time(0));
        int num = (rand() % (upper - lower + 1)) + lower;
        if(num == ch){
            printf("Draw!!");
        }
        else if(num == 1 && ch == 2){
            printf("And I chose rock! \nYou're really good at this!!");
            user_point++;
        }
        else if(num == 2 && ch == 3){
            printf("And I chose paper! \nWoah! Good one!");
            user_point++;
        }
        else if(num == 3 && ch == 1){
            printf("And I chose scissors! \nWoah! You're really good!");
            user_point++;
        }
        else if(num == 1 && ch == 3){
            printf("And I chose rock! \nYayyy! I won!");
            smudge_point++;
        }
        else if(num == 2 && ch == 1){
            printf("And I chose paper! \nI'm getting good at this!");
            smudge_point++;
        }
        else if(num == 3 && ch == 2){
            printf("And I chose scissors! \nWow I'm good at this!");
            smudge_point++;
        }
        printf("\nWanna go another round? (1 for yes and 0 for no) ");
        scanf("%d",&rep);
    }while (rep==1);
    printf("\n\nLet's look at the point table: \n");
    printf("\nI got %d points!", smudge_point);
    printf("\nAnd you got %d points!", user_point);
    if(smudge_point > user_point)
        printf("\nLooks like i won haha!!!!!");
    else if(smudge_point = user_point)
        printf("\nAww tie!!");
    else
        printf("\nLooks like you're good at this. You won!!!");
    
    return 0;
}