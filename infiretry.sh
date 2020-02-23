#!/bin/bash
$1
while [ $? != 0 ]
do
	echo Failed
	sleep 1
	$1
done
echo Succeed
