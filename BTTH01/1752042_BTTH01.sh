#!/bin/bash

#3.2
echo "Hello world"

#3.4
MESSAGE="Hello world"
echo $MESSAGE

#3.5
echo "Nhap vao mot so:"
read i

if [ $i -gt 0 ]
then
	echo "So $i la so duong"
elif [ $i -lt 0 ]
then
	echo "So $i la so am";
else
	echo "So $i la 0";
fi

#3.6
echo "Nhap vao mot so:"
read a

if (( $a % 2 == 0 ))
then
	echo "So $a la so chan"
else
	echo "So $a la so le"
fi 

#3.7
echo "Nhap vao mot so:"
read b

if [ $b -gt 0 ]
then
	i=0

	while [ $i -le $b ]
	do
		echo $i
		((i++))
	done
else
	echo "So khong hop le";
fi

