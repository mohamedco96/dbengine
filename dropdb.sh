#! /bin/bash


for i in ../bash/database/*
do
	if [ "$i" == "../bash/database/$1" ]
	then
	
		rm -r ../bash/database/$1
		echo "Database Successfully Droped"
		break
	fi
done
