#!/bin/bash

echo "This Script will automatically compress & Decompress file"

echo "Do you want to compress or decompress"

echo "CHOOSE"
echo "1 => COMPRESS"
echo "2 => DECOMPRESS"

read option 

function compress() {

echo -n "Please enter file name :"

read -e filename

echo -n "Do you want to give Output file New name :"

echo "YES or NO"

read answer

if [ ${answer} = "yes" ]; then
	
	echo -n "Enter the Output filename you have to give :"

	read -e tarfile

		if [ ! -e $filename ]; then
			echo "error"
			exit 1
		fi		
	tar -cvf ${tarfile}.tar ${filename}

else 
	$(tar -cvf ${filename}.tar ${filename})
	exit 0 
fi

}


function decompress() {
	
echo -n "Enter Filename to decompress : "

read -e filenam

if [ -d ${filenam} ] || [ -f ${filenam} ]; then
	echo $(tar -xvf ${filenam})
else 
	echo "error"
fi
}

if [ ${option} = "1" ]; then
	compress
elif [ ${option} = "2" ]; then
	decompress
else
	echo "error"
fi
