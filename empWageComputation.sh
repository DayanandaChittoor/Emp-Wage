#!/bin/bash -x

#constant
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20

#variable
empHrs=0

empCheck=$((RANDOM%3))

if [ $empCheck -ne 0 ]
then
	if [ $empCheck -eq $IS_FULL_TIME ]
		then
			empHrs=16
	else
		empHrs=8
	fi
else
	wage=0
fi

wage=$(($EMP_RATE_PER_HR*$empHrs))
echo $wage
