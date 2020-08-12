#!/bin/bash -x

isPartTime=1
isFullTime=2
ratePerHour=120
noOfWorkingDays=2
maxHrs=10

totalEmpHour=0
totalWorkingDays=0

function getDailyWages(){
        local empHrs=$1
        empSalary=$(( $empHrs*$ratePerHour ))
        echo $empSalary
}

function getEmpHours(){
        case $empCheck in
                $isPartTime)
                empHour=4
                ;;
                $isFullTime)
                empHour=8
                ;;
                *)
                empHour=0
                ;;
                esac
                echo $empHour
}

while [[ $totalEmpHour -le $maxHrs && $totalWorkingDays -le $noOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ));

	empHour="$( getEmpHours $empCheck)"
	totalEmpHour=$(( $totalEmpHour + $empHour ))
	dailyWages[totalWorkingDays]="$( getDailyWages $empHour )"
	totalSalary="$( getDailyWages $totalEmpHour)"
done
echo ${dailyWages[@]}
