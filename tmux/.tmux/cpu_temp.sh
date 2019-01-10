#! /bin/bash
CEL=$'\xc2\xb0C'
temp=$( cat /sys/devices/virtual/thermal/thermal_zone0/temp )
temp=`expr $temp / 1000`
echo $temp$CEL
