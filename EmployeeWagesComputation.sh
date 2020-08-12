#! /bin/bash -x

isPartTime=1
isFullTime=2
numberofWorkingDays=20
empRatePerHr=20
totalsalary=0

for (( day=1; day<=numberofWorkingDays; day++ ))
do
        empCheck=$(( RANDOM%3 ))

        case $empCheck in
                $isFullTime)
                        empHrs=8
                        ;;
                $isPartTime)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac

        salary=$(( $empHrs*$empRatePerHr ));
        totalSalary=$(( $totalSalary+$salary ))

done
echo  $totalSalary



