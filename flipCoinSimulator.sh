#!/bin/bash -x

# consonats
HEAD=1
TAIL=0

# variable
flag=$((RANDOM%2))

if [ $flag -eq $HEAD ]
then 
	echo "Head is winner"
else
	echo "Tail is winner"
fi

 
