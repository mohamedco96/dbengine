#! /bin/bash


# echo done
# set -x


# set +x

# echo byebye

select choice in "create database" "List Databases" "Connect To Databases" "Drop Database"
do
	case $choice in
		"create database") echo "Enter the name of the databas to create"
			read dbname
		if [[ -z "$dbname" ]]
		then
			echo "you must enter the database name to create"
		else
			./createdb.sh $dbname

		fi
		;;

		"List Databases") 
			ls ../bash/database  
		;;
		

		"Connect To Databases") echo "enter the name of the database to connect"
		       read dbname
		if [[ -z "$dbname" ]]
		then
			 echo "you must enter the database name to connect"
		else
			 ./connectdb.sh $dbname
		fi
		 
		;;



		"Drop Database")  echo "enter the name of the database to drop"
			read dbname
		if [[ -z "$dbname" ]]
		then
			 echo "you must enter the database name to drop"
		else
			 ./dropdb.sh $dbname
		fi
		;;
		 esac
		done


