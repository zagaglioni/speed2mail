#!/bin/bash
now="$(date)"
speedtest >> /usr/src/speed2mail/speedlog.txt
(echo "Subject: $HOSTNAME - $now"; cat /usr/src/speed2mail/speedlog.txt; ) | sendmail zagaglioni@gmail.com
