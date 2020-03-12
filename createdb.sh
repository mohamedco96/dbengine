#! /bin/bash

flag="false"
for i in ../bash/database/*
do
	if [ "$i" == "../bash/database/$1" ]
	then
		echo " Can't create database $1; database exists"
		flag="true"
		break
	fi
done
if [ "$flag" == 'false' ]
then
	mkdir ../bash/database/$1
	echo "Database Successfully created"
fi
