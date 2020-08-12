#!/bin/bash -x

ispresent=1;

randomecheck=$(( RANDOM%2 ));
case $randomecheck in
	$ispresent )
		 echo " employee is present"
		 ;;
	*)
		echo "employee is absent"
		;;
esac

