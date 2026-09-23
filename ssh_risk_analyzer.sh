#!/bin/bash

read -p " Enter The Username : " uname
read -p " Enter The Faild_Login Attempts : " log


echo "======================="
echo
echo "SSH Login Risk Analyzer"
echo
echo "======================="
echo

echo "Given Username :       $uname "
echo
echo "Given Login_attempts : $log "


if [ -z "$uname" ]
then
	
	echo " Username is Empty Please Enter the Username "
	exit 1
elif [ "$log" -gt 10  ] || [ "$uname" == "root" ]
then
        severity="High Risk"
	action="Block User or Ip now And Immediately investigate the issue"
	
elif [ "$log" -gt 5 ] && [ "$uname" == "admin" ]
then
        severity="Critical Risk"
	action="Review audit logs and take immediate action"
	
elif [ "$log" -gt 3 ]
then
	severity="Medium Risk"
	action="Monitor the user activity and review logs"
else
	 
	severity="Low Risk"
	action="No Action Required"
fi

echo


echo "========================"
echo "  Risk Analysis Report  "
echo "========================"
echo

echo "Username :              $uname"
echo "Failed Login Attempts : $log"
echo "Risk Severity :         $severity"
echo "Recommended Action :    $action"

echo
echo "========================"
echo "  End of Risk Analysis  "
echo "========================"
