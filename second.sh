#!/bin/bash


                                   ##Print newest file 

echo " FIRST WAY"

newest_file=$(ls -t|head -1)
echo "$newest_file"



echo " SECOND WAY "
ls -t | head -2
