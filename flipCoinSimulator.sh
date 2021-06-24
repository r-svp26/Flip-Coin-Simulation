#!/bin/bash -x

# consonats
HEAD=1
TAIL=0

# variable
headCount=0
tailCount=0
totalCount=0

while [ $totalCount -lt 100 ]
do
	flag=$((RANDOM%2))
	if [ $flag -eq $HEAD ]
	then 
		let headCount++
	else
		let tailCount++
	fi

	let totalCount++
done

echo "Head wins $headCount times"
echo "Tail wins $tailCount times"
