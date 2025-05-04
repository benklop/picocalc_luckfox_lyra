#!/bin/bash
USB0_IP=192.168.123.100
for i in $(seq 1 10);
do
    if ifconfig -a | grep -q 'usb0'; then
        ifconfig usb0 up
        ifconfig usb0 $USB0_IP
    fi

    if ifconfig -a | grep -q "$USB0_IP"; then
        exit
    fi

    sleep 5
done
