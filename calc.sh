#! /usr/bin/env bash

# VARIABLES
quit=n
separator="_______________"

# WELCOME
echo "HELLO! WELCOME TO CALCAPP" # When the program is first loaded, display a greeting to the user.
echo

# When the operation is complete, redisplay the menu.
while [[ $quit = "n" ]]
	do
		echo "Please select one of the following actions:" # Then, display a menu that outlines the possible operations:
		echo [1] Add # Add
		echo [2] Subtract # Subtract
		echo [3] Exit  # Exit
		read ops # Then, capture the user selection.
		echo

		# If the selection matches a supported operation, execute the operation.
		# If the selection does not match a support operation, display an error message.
		case $ops in
			1)
				echo "Please provide a first value:"
				read value1
				echo "Please provide the second value to add:"
				read value2
				let total="$value1"+"$value2"
				echo
				echo -e "\e[7mAnswer:\e[0m"
            	echo $total
            	echo $separator
            	echo
			;;
			2)
				echo "Please provide a first value:"
				read value1
				echo "Please provide the second value to subtract:"
				read value2
				let total="$value1"-"$value2"
				echo
				echo -e "\e[7mAnswer:\e[0m"
				echo $total
				echo $separator
				echo
			;;
			3)
				echo "Are you sure you want to exit? [Y/N]"
				read quit
				echo $separator
            	echo
			;;
			*)
				invalid="\e[33m$ops\e[0m\e[1;31m"
            	echo -e "\e[1;31m *** $invalid is not a valid option *** \e[0m" && echo
			;;
		esac
done