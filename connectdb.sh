#! /bin/bash

flag="false"
for i in ../bash/database/*
do
	if [ "$i" == "../bash/database/$1" ]
	then
		flag="true"
		break
	fi
done
if [ "$flag" == 'true' ]
then
    
select choice in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table"
do
	case $choice in
		"Create Table")
		   echo "Create Table"
		
		;;

		"List Tables") 
		       echo "List Tables"  
		;;
		

		"Drop Table") 
	         	echo "Drop Table"
		      
		;;



		"Insert into Table") 
		echo "Insert into Table"
		
		;;


	        
		"Select From Table")
                          echo "Select From Table"
		 
		;;



		"Delete From Table")  
		    echo "Delete From Table"
	       
		;;

		 esac
	
                 done
fi

