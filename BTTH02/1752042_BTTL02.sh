#3a
echo "Nhap vao duong dan thu muc"
read dir

while ! [ -d $dir ]
do 
	echo "Thu muc khong ton tai. Nhap lai"
	read dir
done

#3b
cd $dir
rm -r * 

#3c
mkdir BTTL
mkdir BTTH

#3d
cd BTTL
mkdir BTTL{1,2,3,4,5,6,7,8,9}
cd ..
cd BTTH
mkdir BTTH{1,2,3,4,5,6,7,8,9}

#3e, 3f

for link in $dir/BTTH/BTTH{1,2,3,4,5,6,7,8,9}
do
	touch $link/1752042.sh
	chmod u+x $link/1752042.sh
done

for link in $dir/BTTL/BTTL{1,2,3,4,5,6,7,8,9}
do
	touch $link/1752042.sh
	chmod u+x $link/1752042.sh
done

#3g
ls $dir/BTTH/BTTH{1,2,3,4,5,6,7,8,9}
ls $dir/BTTL/BTTL{1,2,3,4,5,6,7,8,9}
