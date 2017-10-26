#include<stdio.h>

typedef unsigned short u_int;
typedef unsigned short u_short;
typedef unsigned char u_char;

u_char little_endian()
{
   u_short word=0x1234; 
   u_char * p = (u_char *) &word;
   
   return (p[0] == 0x12) ? 0 : 1;
}

int count_bits(u_int data)
{
   int cnt=0;
   
   while(data != 0)
   {
      printf("%x %x %x\n",data,(data -1),data & (data - 1));
      data = data & (data - 1);
      cnt++;
   }
   return cnt;
}

int main()
{
   printf("%d bits set\n",count_bits(0xFFF7));
   return 0;
}
