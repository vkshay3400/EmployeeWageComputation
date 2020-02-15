#!/bin/bash -x

echo "*************************WELCOME TO EMPLOYEE WAGE COMPUTATION*************************"

#CONSTANTS
EMP_RATE_PER_HOUR=20

# VARIABLES
isPresent=1

# GENERATE RANDOM NUMBER
randomCheck=$((RANDOM%2))

# TO CHECK SALARY IF PRESESNT/ABSENT
if [ $isPresent -eq $randomCheck ]
then
	echo "Emplpoyee is Present"
	empHours=8
else
	echo "Employee is Absent"
	empHours=0
fi

# TO GET SALARY
salary=$(($empHours*$EMP_RATE_PER_HOUR))
echo $salary
