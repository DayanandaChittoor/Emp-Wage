#!/bin/bash -x

#constant
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
WORKING_DAYS=30
MAX_HRS_MONTH=140

#variable
totalWorkingDays=0
totalEmpHrs=0
day=0

function workHours() {

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

}

while [ $totalEmpHrs -lt $MAX_HRS_MONTH ] && [ $totalWorkingDays -lt $WORKING_DAYS ]
do 
	workHours $((RANDOM%3))
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	((totalWorkingDays++))
	todaysWage=$((totalEmpHrs*$EMP_RATE_PER_HR))
	dayWage[((day++))]=$todaysWage
done


totalSalary=$((totalEmpHrs*$EMP_RATE_PER_HR))
echo ${dayWage[@]}
echo "Total Wage is : " $totalSalary
echo "Total working Hours : " $totalEmpHrs

