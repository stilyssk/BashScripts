#!/bin/bash
dwmFlag="true"
while $dwmFlag = "true"; do
#tempInformation="aaa" 
tempInformation=$(vcgencmd measure_temp)
tempInformation=${tempInformation:5}
#echo $tempInformation
clockInfo=$(vcgencmd measure_clock arm)
clockInfo=${clockInfo:14:4}
#echo $clockInfo
 xsetroot -name "$(date)""   $tempInformation""  $clockInfo";
 sleep 1;
done
