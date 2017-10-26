#include<stdio.h>

typedef unsigned short u_short;
typedef unsigned char u_char;

u_char little_endian()
{
   u_short word=0x1234; 
   u_char * p = (u_char *) &word;
   
   return (p[0] == 0x12) ? 0 : 1;
}

int main()
{
   printf("%s",little_endian()?"Little Endian":"Big Endian");
   return 0;
}
