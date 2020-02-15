#!/bin/bash -x

echo "*************************WELCOME TO EMPLOYEE WAGE COMPUTATION*************************"

# CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20
WORKING_DAYS=20
totalSalary=0

# GENERATE RANDOM NUMBER
randomCheck=$((RANDOM%3))

# WAGE FOR MONTH
for (( days=1; days<=$WORKING_DAYS; days++ ))
do
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
	salary=$(($empHours*$EMP_RATE_PER_HOUR))
	totalSalary=$(($totalSalary+$salary))
done

# PRINT TOTAL SALARY
echo $totalSalary
