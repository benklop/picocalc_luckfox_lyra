#!/bin/bash
if test -e "/root/pico-8/pico8_dyn"; then
    /root/pico-8/pico8_dyn -splore
else
    echo "Please install pico8_dyn into /root/pico-8/"
    read -p "Press Enter to continue"
fi
