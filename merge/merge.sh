#!/bin/bash

echo "Enter 1st. file:"
read file1
echo "Enter 2nd. file:"
read file2
echo " "
if [ -f $file1 ] && [ -f $file2 ]
then
	echo "File exist"
else
	echo "File does not exist"
	exit
fi
echo "   "
cat $file1 $file2 >final.out
echo "Merging is done and save at final.out"
echo "          "
cat final.out
