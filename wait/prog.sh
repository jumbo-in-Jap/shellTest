#! /bin/bas
#!/bin/sh

TIME_A=`date +%s`   #A

find ~/Desktop/ -name "*.txt" | xargs grep test &
find ~/Desktop/ -name "*.txt" | xargs grep test

wait
echo "finish";

TIME_B=`date +%s`   #B
PT=`expr ${TIME_B} - ${TIME_A}`
H=`expr ${PT} / 3600`
PT=`expr ${PT} % 3600`
M=`expr ${PT} / 60`
S=`expr ${PT} % 60`
echo "${H}:${M}:${S}"


