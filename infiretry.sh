#!/bin/bash
f="0"
${1}
while [ ${?} != 0 ]
do
	echo Fail
	sleep 1
	f=$(expr ${f} + 1)
	echo Tried ${f} time\(s\).
	${1}
done
echo Success, retried ${f} time\(s\).
