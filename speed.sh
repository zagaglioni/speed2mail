#!/bin/bash
now="$(date)"
speedtest >> $HOME/speed2mail/speedlog.txt
(echo "Subject: $HOSTNAME - $now"; cat $HOME/speed2mail/speedlog.txt; ) | sendmail zagaglioni@gmail.com
