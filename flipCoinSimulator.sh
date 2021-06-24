#!/bin/bash -x

# constants
HEAD=1
TAIL=0

# variable
headCount=0
tailCount=0

while [ $headCount -lt 21 ] && [ $tailCount -lt 21 ]
do
	flag=$((RANDOM%2))
	if [ $flag -eq $HEAD ]
	then 
		let headCount++

	else
		let tailCount++

	fi

done

if [ $headCount -gt $tailCount ]
then
	hwin=$((headCount-tailCount))
	echo "Head wins by $hwin times"

elif [ $tailCount -gt $headCount ]
then
	twin=$((tailCount-headCount))
	echo "Tail wins by $twin times"

else
	while [ $headCount -lt $((tailCount+2)) ] && 
		[ $tailCount -lt $((headCount+2)) ]
	do
		flag=$((RANDOM%2))
        	if [ $flag -eq $HEAD ]
        	then
                	let headCount++

        	else
                	let tailCount++

        	fi
	done
fi
