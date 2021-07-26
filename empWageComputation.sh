#!/bin/bash -x

#constant
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
WORKING_DAYS=20

#variable
totalSalary=0

for (( day=1; day<=$WORKING_DAYS; day++ ))
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

salary=$(($empHrs*$EMP_RATE_PER_HR))
totalSalary=$(( $totalSalary+$salary ));
done

echo $salary
echo $totalSalary
