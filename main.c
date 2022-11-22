/*
** EPITECH PROJECT, 2020
** MAIN
** File description:
** main
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

typedef unsigned long int size_t;

size_t real_strlen(char const *s1)
{
    size_t i = 0;

    while (s1[i] != '\0')
        i = i + 1;
    return (i);
}

int main(void)
{
    char *test = strdup("string de test");

    //STRLEN
    printf("strlen: %s = %d characters\n\n", test, strlen(test));
    printf("real_strlen: %s = %d characters\n\n", test, real_strlen(test));

    free(test);
    return (0);
}