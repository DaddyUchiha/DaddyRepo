#!/bin/bash

echo "This Script will automatically compress & Decompress file"

echo "Do you want to compress or decompress"

echo "CHOOSE"
echo "1 => COMPRESS"
echo "2 => DECOMPRESS"

read option 


function compress() {

echo -n "Please enter file name :"

read filename

echo -n "Enter the Output filename you have to give :"

read tarfile

if [ ! -e ${filename} ]; then
	echo "error"
	exit 1
else
	echo $(tar -cvf ${tarfile}.tar ${filename})
fi
}

function decompress() {
	
echo -n "Enter Filename to decompress : "

read filenam

if [! -e ${filenam} ]; then
	echo "error"
	exit 1
else 
	echo $(tar -xvf ${filenam}.tar)
fi
}

if [ ${option} = "1" ]; then
	compress
elif [ ${option} = "2" ]; then
	decompress
else
	echo "error"
fi
