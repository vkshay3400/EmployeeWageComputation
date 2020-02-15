#!/bin/bash -x

echo "*************************WELCOME TO EMPLOYEE WAGE COMPUTATION*************************"

# CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20

# GENERATE RANDOM NUMBER
randomCheck=$((RANDOM%3))

# TO GET SPART TIME HOURS
if [ $IS_PART_TIME -eq $randomCheck ]
then
	empHours=4
elif [ $IS_FULL_TIME -eq $randomCheck ]
then
	empHours=8
else
	empHours=0
fi

# TO GET SALARY
salary=$(($empHours*$EMP_RATE_PER_HOUR))
echo $salary
