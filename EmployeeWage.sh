#! /bin/bash -x
echo "Welcome to Employee Wage Computation"

isPresent=1;
empWagePerHr=20
empFullTimeHr=8
randomCheck=$(( RANDOM%2 ))
salary=0
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is Present"
	salary=$(( $empWagePerHr * $empFullTimeHr ))

else
        echo "Employee is Absent"
fi
echo $salary
