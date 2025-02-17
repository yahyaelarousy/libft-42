#include "libft.h"
int atoi(const char *nptr)
{
    int r,s,i;
    i = 0;
    s = 1;
    r = 0;
    while (nptr[i] == ' ' || (nptr[i] >= 9 && nptr[i] <= 13))
    i++;
    if(nptr[i] == '-' || nptr[i] == '+')
    {
        if(nptr[i]== '-')
        s *=-1;
        i++;

    }
    while (nptr[i]>= '0' && nptr[i] <='9' && (nptr[i] != '\0'))
    {
        r = r * 10 + nptr[i] - '0';
        i++;    
    }
    return (r * s); 
    

    
}
