#!/bin/bash -x

isPresent=1
randomCheck=$(( RANDOM%2 ))

if [ $isPresent -eq $randomCheck ]
then
        empHours=8
        ratePerHour=20
        empWagesPerDay=$(( $ratePerHour*$empHours ))
else
        empWagesPerDay=0
fi
