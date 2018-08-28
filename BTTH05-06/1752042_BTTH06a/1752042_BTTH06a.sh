#!bin/bash

getLengthList()
{
	echo "$#"
}

displayList()
{
	echo "Do dai cua day so: $(getLengthList $*)"
	for i in $*
	do
		echo $i
	done
}

getEvenNumbers()
{
	echo "So chan co trong day so : "
	for i in $*
	do
		if ((i%2==0)); then
			echo $i
		fi
	done
}

getOddNumbers()
{
	echo "So l co trong day so : "
	for i in $*
	do
		if ((i%2!=0)); then
			echo $i
		fi
	done
}

input()
{
	for ((i=0; i<n; i++))
	do
		read a[$i]
	done
}

max2So()
{
	if [ "$1" -gt "$2" ]; then
		max1=$1
		echo $1
	else
		max1=$2
		echo $2
	fi
	return m
}

min2So()
{
	if [ "$1" -le "$2" ]; then
		min1=$1
		echo $1
	else
		min1=$2
		echo $2
	fi
	return $min1
}

getMax()
{
	max=${a[0]}
	for ((i=1; i<n; i++))
	do
		max=$(max2so ${a[$i]} $max)
	done
	echo "So lon nhat: $max"
}

getMin()
{
	min=${a[0]}
	for ((i=1; i<n; i++))
	do
		min=$(max2so ${a[$i]} $min)
	done
	echo "So be nhat: $min"
}

getValueAt()
{
	dem=1
	echo "Nhap vi tri can tim:"
	read p
	
	if ((p<1 || p>$#))
	then
		echo "Vi tri bi loi"
		exit 1
	fi
	
	for i in $*
	do
		if ![ $dem -ne $p ]
		then
			echo " Gia tri o vi tri can tim la $i"
			exit
		fi
		((dem++))
	done
}

showInfos()
{
	displayList $*
	getEvenNumbers $*
	getOddNumbers $*
	getMax $*
	getMin $*
	getValueAt $* 
}
