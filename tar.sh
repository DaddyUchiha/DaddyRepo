#!/bin/bash

echo "This Script will automatically compress & Decompress file"

echo "##########################################################"
echo "##########################################################"
echo "######################Welcome#############################"
echo "##########################################################"

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

echo -n " ==>> "

read answer

if [ ${answer} = "yes" ]; then
	
	echo -n "Enter the Output filename you have to give :"

	read -e tarfile

		if [ ! -e $filename ]; then
			echo "error"
		fi		
		$(sudo tar -cvf ${tarfile}.tar ${filename})

else 
	$(sudo tar -cvf ${filename}.tar ${filename})

fi

}


function decompress() {
	
echo -n "Enter Filename to decompress : "

read -e filenam

if [ -d ${filenam} ] || [ -f ${filenam} ]; then
	echo $(sudo tar -xvf ${filenam})
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
