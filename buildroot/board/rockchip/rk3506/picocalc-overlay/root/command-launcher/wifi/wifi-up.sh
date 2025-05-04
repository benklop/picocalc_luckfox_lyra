#!/bin/bash
insmod /usr/lib/rtl8188fu.ko rtw_power_mgnt=0 rtw_enusbss=0 rtw_ips_mode=0
modprobe rt2800usb
insmod /usr/lib/8821cu.ko
sleep 2
ip link set wlan0 up
sleep 2
wpa_supplicant -B -i wlan0 -c /root/wpa_supplicant.conf
sleep 2
udhcpc -i wlan0
#echo 'nameserver 223.5.5.5' > /tmp/resolv.conf
./sync-time.sh
