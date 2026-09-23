#!/bin/bash


echo
read -p "Enter the Username : " username
read -p "Enter the Hostname : " hostname 

if [ -z "$username" ] || [ -z "$hostname" ]
then
    echo " Unvalid name,,Please Enter the Information :"
fi

echo "==========================="
echo "    Given Information      "
echo "==========================="

echo
echo "The Given Username is : $username "
echo "The Given Username is : $hostname "

echo
echo "===================================="

echo "Cloud Linux Security Posture Checker"

echo "===================================="

#echo "The Current Username is : " 
currentuser=$(whoami)

#echo "The current Hostname is : "
currenthost=$(hostname)

echo
echo "The Username is :$currentuser "
echo "The Hostname is :$currenthost "

date=$(date)
uptime=$(uptime)
lservices=$(ss -tuln)

echo
echo " ====== System information ====== "

echo
echo "The date is: $date "
echo "The Uptime is : $uptime "




if [ "$username" == "$currentuser" ]
then
    echo
    echo " Status : Pass "
    echo " $currentuser The Username is Correct "
else
    echo
    echo "Status : Warning "
    echo "$currentuser : The Username is MisMatch "
fi

if [ "$hostname" == "$currenthost" ]
then 
     echo
     echo " Status : Pass "
     echo "$currenthost The Hostname is Correct "
else
    echo
    echo "Status :Warning "
    echo "$currenthost The Hostname is MisMatch "
fi

echo
     echo "========= LISTENING SERVICES ==========="
echo
echo "The Listening service is : " 
echo "$lservices"

echo
echo "====================="

echo "   AUDIT COMPLETE    "

echo "====================="
