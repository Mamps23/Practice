#!/bin/bash

###    Write a shell script that adds an extension “.new” to all the files in a directory,also don't add new to already .new and .sh file   ###

#dir=$1

#for i in "$1"/*; do

#	if [ -f "$i" ]; then

 #        	mv "$i" "$i.new"
  #      else
#		echo " OOps!!"	
#	fi
#done


find . -type f ! -name "*.new" -type f ! -name "*.sh" -exec mv "{$f}" "{$f}.new" \;




