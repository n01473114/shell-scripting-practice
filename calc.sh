#! /usr/bin/env bash

echo "HELLO! WELCOME TO CALCAPP" # When the program is first loaded, display a greeting to the user.
echo "Please select one of the following actions:" # Then, display a menu that outlines the possible operations:
echo [1] Add # Add
echo [2] Subtract # Subtract
echo [3] Exit  # Exit
read ops # Then, capture the user selection.

# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
case $ops in
  1)
  echo "Please provide a first value:"
  read value1
  echo "Please provide the second value to add:"
  read value2
  let total="$value1"+"$value2"
  echo "Answer:"
  echo $total
  ;;
  2)
  echo "Please provide a first value:"
  read value1
  echo "Please provide the second value to subtract:"
  read value2
  let total="$value1"-"$value2"
  echo "Answer:"
  echo $total
  ;;
  3)
  echo "Are you sure you want to exit? [Y/N]"
  read quit
  ;;
  *)
  invalid="$ops"
  echo "*** $invalid is not a valid option ***"
  ;;
esac

# When the operation is complete, redisplay the menu.
