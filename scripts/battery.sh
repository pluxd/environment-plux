#!/bin/bash

BATDIR=/sys/class/power_supply/BAT0
CURR_CHARGE_PCT="-1"
CURR_BAT_STATE=":"

BATSTATE=$(cat ${BATDIR}/status)

if [ "$BATSTATE" = "Charging" ];then
  CURR_BAT_STATE="\xE2\x86\x91"
fi

if [ "$BATSTATE" = "Discharging" ] || [ "$BATSTATE" = "Charging" ];then
  REM_CAP=$(cat ${BATDIR}/charge_now)
  FULL_CAP=$(cat ${BATDIR}/charge_full)
  CURR_CHARGE_PCT=$(echo "$REM_CAP * 100 / $FULL_CAP" | bc)
elif [ "$BATSTATE" = "Full" ];then
  CURR_CHARGE_PCT="100"
fi

RES_LENGTH=$(expr length $CURR_CHARGE_PCT)
if [ "$RES_LENGTH" -eq 1 ];then
  DOT_STR=".."
elif [ "$RES_LENGTH" -eq 2 ];then
  DOT_STR="."
else
  DOT_STR=""
fi

echo -e "\xE2\x88\x85.$DOT_STR$CURR_CHARGE_PCT%.--$CURR_BAT_STATE--"
