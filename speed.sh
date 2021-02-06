#!/bin/bash
now="$(date)"
speedtest >> $HOME/speedlog.txt
(echo "Subject: $HOSTNAME - $now"; cat $HOME/speedlog.txt; ) | sendmail zagaglioni@gmail.com
