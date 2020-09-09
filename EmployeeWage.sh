#! /bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

isPresent=1;
empWagePerHr=20
randomCheck=$(( RANDOM%2 ))
salary=0
isFullTime=1
isPartTime=2
if [ $isPresent -eq $randomCheck ]
then
randCheck=$((RANDOM%3))
case $randCheck in
        $isFullTime)
                empHr=8
        ;;
        $isPartTime)
                empHr=4
        ;;
        *)
                empHr=0
        ;;
esac
fi
salary=$(($empHr * $empWagePerHr))
echo $salary
