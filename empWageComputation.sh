#!/bin/bash -x

#constant
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
WORKING_DAYS=30
MAX_HRS_MONTH=20

#variable
totalWorkingDays=0
totalEmpHrs=0

while [ $totalEmpHrs -lt $MAX_HRS_MONTH ] && [ $totalWorkingDays -lt $WORKING_DAYS ]
do

empCheck=$((RANDOM%3))

case $empCheck in 
	$IS_FUL_TIME)
		empHrs=8
		;;
	$IS_PART_TIME)
		empHrs=4
		;;
	*)
	empHrs=0
		;;
esac

totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$((totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalSalary
echo $totalEmpHrs
