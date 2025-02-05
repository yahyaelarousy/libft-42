#include "libft.h"
int ft_isalpha(int c)
{
    if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))
        return (1); // Le caractère est une lettre alphabétique
    return (0); // Le caractère n'est pas une lettre alphabétique
}

