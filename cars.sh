#! /bin/bash
#cars.sh
#Alberto Garibay

option="abc"

while [ $option != 3 ]
do
	echo "Would you like to:"
	echo "1) add a car"
	echo "2) list the cars in the inventory"
	echo "3) Quit the Program"
	read option

	if [ $option == 1 ] 
	then 
		echo "Please enter the year"
		read Year
		echo "Please enter the make"
		read Make
		echo "Please enter the model"
		read Model
	
		echo $Year:$Make:$Model >> My_old_cars
	
	elif [ $option == 2 ]
	then
		sort My_old_cars
	
	elif [ $option == 3 ]
	then
		echo "Goodbye"
		break
	fi
done