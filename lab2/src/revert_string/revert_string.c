#include "revert_string.h"

void RevertString(char *str)
{
	char tmp;
	int i=0;
	int size=0;
	for(size;str[size]!='\0';size++);
	size--;
	while (i<=size)
	{
	    tmp=str[i];
	    str[i]=str[size];
	    str[size]=tmp;
	    size--;
	    i++;
	}
}

