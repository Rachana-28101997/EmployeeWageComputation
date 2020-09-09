#! /bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

empWagePerHr=20
numbWorkingDays=20
salary=0
isFullTime=1
isPartTime=2
for (( day=1; day<=$numbWorkingDays; day++ ))
do
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
done
salary=$(( $empHr * $empWagePerHr))
echo $salary
