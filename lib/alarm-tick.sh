#!/usr/bin/env bash

_path_lib="/usr/local/lib/alarm"
_path_conf="/etc/alarm"
_path_log="/var/log/alarm"

_now=$(date +%H:%M:%S)

if [ "$1" == "-init" ]; then
    touch "$_path_lib"/alarm-tick.dat
    touch "$_path_log"/alarm-tick.log
    echo "$_now INIT" >> "$_path_log"/alarm-tick.log
    echo "$_now" > "$_path_lib"/alarm-tick.dat
    exit 0
fi

_alarm_time=$(cat "$_path_conf"/alarm.conf):00
_last_tick=$(cat "$_path_lib"/alarm-tick.dat)

echo "$_now" > "$_path_lib"/alarm-tick.dat
echo "$_now TICK; BEEP CONDITION: [$_last_tick < $_alarm_time <= $_now]" >> "$_path_log"/alarm-tick.log

# Alarm beeps when LAST_TICK_TIME < ALARM_TIME <= NOW
if [ "$_last_tick" \< "$_alarm_time" ] && ! [ "$_alarm_time" \> "$_now" ]; then
    echo "$_now BEEP START" >> "$_path_log"/alarm-tick.log
    echo "$_now BEEP!" >> "$_path_log"/alarm.log
    playmidi ./sounds/sound-1.mid
fi
