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
totalWorkingDays=0
totalWorkHours=0

# FUNCTION FOR WORKING HOURS
function isWorkingHours(){
	case $1 in
	$IS_PART_TIME)
		workHours=4
		;;
	$IS_FULL_TIME)
		workHours=8
		;;
		*)
		workHours=0
		;;
	esac
		echo $workHours
}

# TO GET TOTALSALARY
while [[ $totalWorkHours -lt $WORKING_TOTAL_HOURS && $totalWorkingDays -lt $WORKING_DAYS ]]
do
	((totalWorkingDays++))
	
	# GENERATE RANDOM NUMBER
	workHours="$( isWorkingHours $((RANDOM%3)) )"

	totalWorkHours="$(($totalWorkHours+$workHours))"
done

# TO PRINT SALARY
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HOUR))
echo $totalSalary
