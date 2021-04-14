#include <stdio.h>
#include <string.h>
//#include "libasm.h"
size_t  ft_strlen(const char *str);
char    *ft_strcpy(char * dst, const char * src);


int     check_ft_strlen()
{
    char a[] = "alberto";
    char b[] = "g789#";
    if (ft_strlen(a) != 7) return (1);
    if (ft_strlen(b) != 5) return (1);
    if (ft_strlen("") != 0) return (1);
    if (ft_strlen("12345678911234567890") != 20)
        return (1);
    printf("test ft_strlen: correct!\n");
    return (0);
}


int     check_ft_strcpy()
{
    char    a[10];
    char    b[] = "camillo";
    ft_strcpy(a,b);
    if (strcmp(a,b) != 0) return (1);
    ft_strcpy(a,"treno");
    if (strcmp(a,"treno") != 0) return (1);
    ft_strcpy(a, "");
    if (strcmp(a,"") != 0) return (1);

    printf("test ft_strcpy: correct!\n");
    return (0);
}

int main()
{
    if (check_ft_strlen() != 0) printf("errore ft_strlen\n");
    if (check_ft_strcpy() != 0) printf("errore ft_strcpy\n");
}