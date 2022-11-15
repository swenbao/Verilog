#include<stdio.h>

int main(){
    /*for(int i = 0; i < 30; i++){
        int a;
        scanf("%d",&a);
        switch(a) {
            case 0: printf("A");
            case 1: printf("B");
            case 2: printf("C");
            case 3: printf("D");
            case 4: printf("E");
            case 5: printf("F");
            case 6: printf("G");
            case 7: printf("H");
            case 8: printf("I");
            case 9: printf("J");
            case 10: printf("K");
            case 11: printf("L");
            case 12: printf("M");
            case 13: printf("N");
            case 14: printf("O");
            case 15: printf("P");
            case 16: printf("Q");
            case 17: printf("R");
            case 18: printf("S");
            case 19: printf("T");
            case 20: printf("U");
            case 21: printf("V");
            case 22: printf("W");
            case 23: printf("X");
            case 24: printf("Y");
            case 25: printf("Z");
            
        }
    }*/
    for(int i = 0; i < 27; i++){
        printf("\t\tcase %d: System.out.print(\"%c\");\n", i, i+65);
    }
    return 0;
}

//13 5 9 12 32 39 2 23 40 24 16 31 2 3 21 23 41 36 13 14 28 5 10 37 31 27 3 40 22