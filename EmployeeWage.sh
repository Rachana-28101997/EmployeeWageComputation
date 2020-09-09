#! /bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

isPresent=$1
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

function getWorkingDays
{
        case $1 in
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
        echo $empHr
}

declare -A dailyWageArray
while [[ $totalEmpHrs -lt $MAX_HRS && $totalWorkingDays -le $MAX_WORKING_DAYS  ]]
do
        ((totalWorkingDays++))
        randomCheck=$((RANDOM%2+1))
        empHr="$( getWorkingDays $randomCheck )"
        dailyWage=$(($empHr * $empWagePerHr))
        dailyWageArray[$totalWorkingDays]=$dailyWage
        totalEmpHrs=$(($totalEmpHrs + $empHr))
        totalsalary=$(($totalEmpHrs * $empWagePerHr))
        echo -e "$totalWorkingDays   $dailyWage     $totalsalary"
done
