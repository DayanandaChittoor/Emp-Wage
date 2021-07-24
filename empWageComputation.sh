#!/bin/bash -x

#constant
IS_FULL_TIME=1
EMP_RATE_PER_HR=20

#variable
empHrs=0

empCheck=$((RANDOM%3))

if [ $empCheck -ne 0 ]
then
	if [ $empCheck -eq $IS_FULL_TIME ]
		then
			echo "Employee Presnt for Full Time"
			empHrs=16
	else
		echo "Employee Present for Part Time"
		empHrs=8
	fi
else
	echo "Employee is Absent"
	wage=0
fi

wage=$(($EMP_RATE_PER_HR*$empHrs))
echo $wage
