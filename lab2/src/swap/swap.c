#include "swap.h"

void Swap(char *left, char *right)
{
	char test;
	test=*left;
    *left=*right;
    *right=test;
}
