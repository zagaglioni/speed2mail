#!/bin/bash
now="$(date)"
speedtest >> tmp/speed2mail/speedlog.txt
(echo "Subject: $HOSTNAME - $now"; cat tmp/speed2mail/speedlog.txt; ) | sendmail zagaglioni@gmail.com
