#!/bin/bash
now="$(date)"
sudo -H -u pi speedtest >> $HOME/speed2mail/speedlog.txt
sudo -H -u pi (echo "Subject: $HOSTNAME - $now"; cat $HOME/speed2mail/speedlog.txt; ) | sendmail zagaglioni@gmail.com
