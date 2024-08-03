#!/bin/bash

echo "Enter the salary "
read salary

if  ((salary > 0 )) && (( $salary < 20000 ))
then 
	echo "No tax you got same salary $salary"

elif (( $salary > 20000 )) && (($salary < 40000))
then 
	((final_sal = (($salary - (($salary*5/100))))))
	#((final_sal = (($salary*5/100))))
	echo " 5% deduction is there & your salary is $final_sal"

elif (( $salary > 40000 )) && (($salary < 100000))
then
	((final_sal = (($salary - (($salary*10/100))))))
	echo " 10% deduction is there & your salary is $final_sal"
else
	((final_sal = (($salary - (($salary*20/100))))))
	echo " 20% deduction is there & your salary is $final_sal"

fi
