#! /bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

isPresent=1;
empWagePerHr=20
empFullTimeHr=8
randomCheck=$(( RANDOM%2 ))
salary=0
isFullTime=1
isPartTime=2
empPartTimeHrs=4
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is Present"
        randCheck=$((RANDOM%3))

        if [ $isFullTime -eq $randCheck ]
        then
                salary=$(( $empFullTimeHr * $empWagePerHr ))
                echo "The salary of Full Time Employee is:" $salary
        elif [ $isPartTime -eq $randCheck ]
        then
                salary=$(( $empPartTimeHrs * $empWagePerHr ))
                echo "The salary of Part Time Employee is:" $salary
        fi
else
        echo "Employee is Absent"
        salary=0
        echo "employee salary is :" $salary

fi
