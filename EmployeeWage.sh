#! /bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"


empWagePerHr=20
numbWorkingDays=20
totalsalary=0
MAX_HRS=100
MAX_WORKING_DAYS=20
salary=0
isFullTime=1
isPartTime=2
totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $MAX_HRS && $totalWorkingDays -lt $MAX_WORKING_DAYS  ]]
do
((totalWorkingDays++))
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
totalEmpHrs=$(($totalEmpHrs + $empHr))
done
totalsalary=$(($totalEmpHrs * $empWagePerHr))
echo "total Employee hours" $totalEmpHrs
echo "total salary" $totalsalary
