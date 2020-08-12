#! /bin/bash -x

isPartTime=1
isFullTime=2
ratePerHour=20
numberOfWorkingDay=20
maxHour=100

totalEmpHour=0
totalWorkingDays=0
while [[ $totalEmpHour -le $maxHour && $totalWorkingDays -le $numberOfWorkingDay ]]
do
((totalWorkingDays++))
empCheck=$(( RANDOM%3 ));
case $empCheck in
        $isPartTime) echo "Emp part time salary"
        empHour=4
        ;;
        $isFullTime)  echo "Emp full time salary"
        empHour=8
        ;;
        *) echo "Emp is not exist"
        empHour=0
        ;;
esac
totalEmpHour=$(( $totalEmpHour+$empHour ))
totalSalary=$(( $totalEmpHour*$ratePerHour ))
done
