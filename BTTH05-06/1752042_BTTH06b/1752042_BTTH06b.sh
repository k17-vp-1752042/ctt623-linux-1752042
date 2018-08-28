#!bin/bash

input="$1"
output="$2"

demTu()
{
	echo "So tu: $#"
}

lietKe()
{
	for i in $*
	do
		echo $i
	done
}

demSoLanXuatHien()
{
}

showInfos ()
{
    DemTu $*
    LietKe $*
    DemSoLanXuatHien $*
}
