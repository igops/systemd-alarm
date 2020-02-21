```
1. Installing:

    ./install


    The following packages will be installed:

        playmidi


    The following files will be created:

        /etc/systemd/system/alarm.service
        /etc/systemd/system/alarm.timer

        /etc/alarm/alarm.conf

        /usr/local/lib/alarm/alarm-tick.sh
        /usr/local/lib/alarm/alarm-tick.dat
        /usr/local/lib/alarm/sounds/*.mid

        /var/log/alarm/alarm.log
        /var/log/alarm/alarm-tick.log

2. Setting up alarm:

    ./usr/local/lib/alarm/alarm -set HH:MM, e.g.: 
    ./usr/local/lib/alarm/alarm -set 12:25  # sets the alarm to 12:25 for every weekday

    Or configure the alarm time manually in /etc/alarm; no service restart required


3. Getting the alarm time:

    ./usr/local/lib/alarm/alarm -get


4. Switching on alarm:

    ./usr/local/lib/alarm/alarm -on


5. Switching off alarm:

    ./usr/local/lib/alarm/alarm -off

```
