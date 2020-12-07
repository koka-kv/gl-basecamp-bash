#!/bin/bash
. ./addition
. ./subtraction
. ./multiplication
. ./division

in_data_check=`echo "$1" | egrep '^([0-9]*|[0-9]*\.{1}[0-9]*)([\+\*-\/]{1})([0-9]*|[0-9]*\.{1}[0-9]*)$'`

if [ -z "$in_data_check" ]; then

echo "Please enter correct data "

exit 128

fi

sign_check=`echo "$1" | sed 's/[0-9.]//g'`

case $sign_check in
	+) summ ${1};;
	-) subb ${1};;
	"*") mult ${1};;
	/) dell ${1};;
	*) echo "This is unknown var";;

esac
