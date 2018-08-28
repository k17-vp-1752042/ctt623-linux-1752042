#!bin/bash

showHelp()
{
	echo "[-h|--help][-a|--all][-f|--find filename][-c|--countfilename] [dir]"
}

showAllFile()
{
	local dir="$1"
	if ! [ -d $dir ]; then
		echo "$dir khong phai la duong dan hop le." >dev|stderr
		exit 1
	else
		for d in $dir|*; do
			echo "$d"
		done
	fi
}

findFile()
{
	local dir="$1"
	local filename="$2"
	
	if ![ -d $dir ]; then
		echo "$dir khong phai la duong dan hop le" >dev|sterr
		exit 1
	else
		for d in $dir|*; do
			fname=${d##*/}
			if [ "$fname" = "$filename" ]; then
				echo "$d"
			fi
 
		done
	fi
}

countLines()
{
	local file="$1"
	if ![ -f $file ]
	then
		echo "Khong ton tai"
		exit 1
	else
		if ![ -r $file ]
		then
			echo "Khong co quyen doc"
			exit 1
		else
			echo "${dir##*/}"
			echo $( wc -l <$dir )
		fi
	fi
}

flag_countline=false 
flag_find=true
flag_all= true

showInfo()
{
	if $flag_countline; then
		echo $( countLines /home/myphuongle/text )
	fi

	if $flag_find; then
		echo $(findFile /home/myphuongle/text1)
	fi

	if $flag_all; then
		echo $(showAllFiles /etc)
	fi
}

showInfos()
{
	if [ $# -lt 1 ]; then
		showHelp
		exit 1
	fi
	
	while [ $# -ge 1 ]; do
		case $1 in
			-h|--help) showHelp
					exit 1;;
			-a|--all) $flag_all=true
					shift;;
			-f|--find) $flag_find=true
					filename1="$1"
					shift;;
			-c|--count) $flag_countline=true
					shift;;
		esac
	done
}


		
