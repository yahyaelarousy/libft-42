#include "libft.h"
#include <stdio.h>

int main() {
    char str[] = "Hello, World!";
    
    // Test de la fonction ft_memset
    ft_memset(str, 'X', 5);
    printf("After ft_memset: %s\n", str);  // Affiche : "XXXXO, World!"

    // Test de la fonction ft_strlen
    size_t length = ft_strlen(str);
    printf("Length of string: %zu\n", length);  // Affiche : "13"

    return 0;
}

