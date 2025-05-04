#!/usr/bin/bash
cd /home/luckfox/picocalc_kbd-driver/
make
cp -f picocalc_kbd.ko /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib

cd /home/luckfox/picocalc_lcd_luckfox_lyra
make
cp -f ili9488_fb.ko /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib

cd /home/luckfox/picocalc_snd-pwm
make
cp -f picocalc_snd_pwm.ko /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib

cd /home/luckfox/picocalc_snd-softpwm
make
cp -f picocalc_snd_softpwm.ko /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib

mkdir -p /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib/firmware/

cd /home/luckfox/rtl8188fu
make
cp -f rtl8188fu.ko /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib/
cp -f firmware/rtl8188fufw.bin /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib/firmware/

cd /home/luckfox/8821cu-20210916
make
cp -f 8821cu.ko /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib/

wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/rt2870.bin -O /home/luckfox/luckfox-lyra-sdk-250311/buildroot/board/rockchip/rk3506/picocalc-overlay/usr/lib/firmware/rt2870.bin 
