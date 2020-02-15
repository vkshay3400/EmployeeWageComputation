#!/bin/bash -x

echo "*************************WELCOME TO EMPLOYEE WAGE COMPUTATION*************************"

# CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20
WORKING_DAYS=20
WORKING_TOTAL_HOURS=100

# VARIABLES
totalSalary=0
totalDays=0
totalEmpHours=0

# OPERATION ON EMPLOYEE WAGES
while [[ $totalEmpHours -lt $WORKING_TOTAL_HOURS && $totalDays -lt $WORKING_DAYS ]]
do
	((totalDays++))
	
	# GENERATE RANDOM NUMBER
	randomCheck=$((RANDOM%3))
	
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
	totalEmpHours=$(( $totalEmpHours+$empHours ))
	totalSalary=$(( $totalEmpHours*$EMP_RATE_PER_HOUR ))
done

# PRINT SALARY
echo $totalSalary
