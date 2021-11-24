#!/bin/bash

#Script to stream Quest screen to pc

ip=0.0.0.0

echo "Make sure Quest is connected via usb, and in headset prompt has been accepted."
echo "Please input headset ip:"

read ip

adb tcpip 5555

adb connect $ip:5555

echo "Now run scrcpy - Or scrcpy --bit-rate 2M --max-fps 30 if you have a low-end pc"

echo "Press any button to disconnect:"

read -n 1 -s

adb disconnect $ip:5555

