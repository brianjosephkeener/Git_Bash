#!/usr/bin/bash

mkdir ./testfolder
touch ./testfolder/name.txt

echo "Hello New File!" >> ./testfolder/name.txt

#for example
for (( i=0; i <= 5; i++ ))
do 
	echo $i >> ./testfolder/name.txt
done

#if example
j=16
if [ $j -eq 15 ];
	then echo "true"
else
	echo "false"
fi

