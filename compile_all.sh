#!/bin/bash

dir=`pwd`

for cfile in "$dir"/*
do
	if [ ${cfile: -2} ==  ".c" ]
	then
		name="${cfile%.*}"
		gcc $cfile -o $name
	fi
done
