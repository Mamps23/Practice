#!/bin/bash

#declare -a array_name
#First_input=$1
#Sec_input=$2


n=$#;
#array_name=('$1' '$10')



echo "$n"

for ((i=n;i>0;i--))
do
	echo "${!i}"
done
