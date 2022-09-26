#!/bin/sh
rm -r ./var
rm attendance.csv
printf "The folder var/tmp/cav_files and attendance.csv deleted"
sleep 5
python3 ./sftp.py
sleep 5
python3 ./attendance.py /home/almog/apps/var/tmp/csv_files
sleep 5
python3 ./runAttendance.py
sleep 5
