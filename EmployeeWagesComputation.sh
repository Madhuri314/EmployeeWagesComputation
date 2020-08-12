#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHourInMonth=100
empRatePerHour=20
noOfWorkingDays=20

totalWorkHours=0
totalWorkingDays=0

function getWorkingHours() {
        case $1 in
                $isPartTime)
                        workingHours=4
                        ;;
                $isFullTime)
                        workingHours=8
                        ;;
                *)
                        workingHours=0
                        ;;
        esac
        echo $workingHours
}

while [[ $totalWorkHours -lt $maxHourInMonth && $totalWorkingDays -lt $noOfWorkingDays ]]
do
        ((totalWorkingDays++))
        workHours="$( getWorkingHours $(( RANDOM%3 )) )"
        totalWorkHours=$(( $totalWorkHours+$workHours ))

done
totalSalary=$(($totalWorkHours*$empRatePerHour))
