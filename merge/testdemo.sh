#!/bin/bash

echo "Files with .txt extension"
#find . -type f -iname "*.txt"
filetxt=$(ls *.txt)
echo -e "$filetxt\n"
files=`find . -type f -iname "*.txt"`
echo "file with .txt changed to .lock"
for i in $files
do
	mv -- "$i" "${i/%.txt/.lock}"
done
echo " "
#f=`find . -type f -iname "*.lock"`
filelock=$(ls *.lock)
for o in $filelock
do
	count=$(tr ' ' '\n' < $o | grep -i "hack" | wc -w)
	echo "File: $o count of hack is $count"
done
echo "   "
echo "file with .lock changed to .txt"
for s in $filelock
do
	mv "$s" "${s/%.lock/.txt}"
done
