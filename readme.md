1. Installing:

     ```
     ./alarm install  # creates systemd service
     ```

    The following files will be created:

    ```
    /etc/systemd/system/alarm.service
    /etc/systemd/system/alarm.timer
    /etc/alarm/alarm.conf
    /var/log/alarm/alarm.log
    ```

2. Setting up alarm:

    ```
    ./alarm set HH:MM, e.g.:
    ./alarm set 12:25  # sets the alarm to 12:25 for every weekday
    ```

    Or configure the alarm time manually in /etc/alarm; no service restart required

3. Getting the alarm time:
   
    ```
    ./alarm get        # returns 12:25
    ```


4. Switching off alarm:

    ```
    ./alarm stop
    ```
