#!/bin/bash -x

# WELCOME TO EMPLOYEE WAGE COMPUTATION
isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Emplpoyee is Present"
else
	echo "Employee is Absent"
fi

