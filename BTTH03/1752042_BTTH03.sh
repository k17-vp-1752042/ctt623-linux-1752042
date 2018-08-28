#3.2a
echo "Nhap vao duong dan thu muc"
read dir

while ! [ -d $dir ]
do 
	echo "Thu muc khong ton tai. Nhap lai"
	read dir
done

#3.2b
cd $dir
echo "Ban co muon xoa toan bo noi dung thu muc va tiep tuc khong?"
read answer

if [ $answer == "co" ]
then
	rm -r *
else 
	cd ..
fi

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

#3h
dong1="#! duong_dan_bash"
dong2="/*================================================"
dong3="* Ho va ten: Le My Phuong"
dong4="*MSSV: 1752042"
dong5="*Ma bai tap:"
dong6="*================================================"
dong7="*/"

for link in $dir/BTTH/BTTH{1,2,3,4,5,6,7,8,9}
do
	echo $dong1 > $link/1752042.sh
	echo $dong2 > $link/1752042.sh
	echo $dong3 > $link/1752042.sh
	echo $dong4 > $link/1752042.sh
	echo $dong5 > $link/1752042.sh
	echo $dong6 > $link/1752042.sh
	echo $dong7 > $link/1752042.sh
done

cat $dir/BTTH/BTTH{1,2,3,4,5,6,7,8,9}
cat $dir/BTTL/BTTL{1,2,3,4,5,6,7,8,9}

echo "Thu muc da tao xong va ket thuc"
