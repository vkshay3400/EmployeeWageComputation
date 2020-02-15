#!/bin/bash -x

echo "*************************WELCOME TO EMPLOYEE WAGE COMPUTATION*************************"

# CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20

# GENERATE RANDOM NUMBER
randomCheck=$((RANDOM%3))

# TO GET EMP WORK HOURS
case $randomCheck in
	$IS_PART_TIME)
		empHours=4
		;;
	$IS_FULL_TIME)
		empHours=8
		;;
	*)
	empHours=0
		;;
esac

# TO GET SALARY
salary=$(($empHours*$EMP_RATE_PER_HOUR))
echo $salary
