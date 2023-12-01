#!/bin/bash

#To check what type of file,directory,inode no. of files and directory

echo " First method"

stat /c/Users/PriyaMirdha/Practice/file*
stat /c/Users/PriyaMirdha/Practice


echo " Second way of doing "

egrep "file1|file2|file3" | ls -li



echo " 3rd way "

Take_file="$1"

ls -li "$Take_file"



