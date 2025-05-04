#!/bin/bash
time=`wget http://time.akamai.com/?iso -O - | sed 's/T/ /' | sed 's/Z//'`
date -u -s "$time"
