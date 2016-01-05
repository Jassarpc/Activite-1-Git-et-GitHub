#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main ( int argc, char** argv )
{
    int myster = 0, entry = 0, essais = 0, reEssayer = 0, level = 2;
    int maximum = 100;
    const int minimum = 1;

    srand(time(NULL));

    // Sélection du level

    printf("Choisissez un level :\n");
    printf("Level 1 : entre 1 et 10\nLevel 2 : entre 1 et 100\nnLevel 3 : entre 1 et 1000\n(Pour choisir entrer 1 ou 2 ou 3)\n");
    scanf("%d", &level);

    switch(level)
    {
    case 1:
        maximum = 10;
        break;
    case 2:
        maximum = 100;
        break;
    case 3:
        maximum = 1000;
        break;
    default:
        printf("Level invalide donc le level par defaut qui est  2\n");
        maximum = 100;
    }
 do
    {
        
        essais = 0;
        myster = (rand() % (maximum - minimum + 1)) + minimum;

        do
        { // debut de partie
            printf("Quel est le nombre ? ");
            scanf("%d", &entry);
            essais++;
