#!/system/bin/sh

# 在init.方案.rc下加入如下语句
# service  mode_switch /system/bin/busybox  sh  /system/bin/usb_mode_switch.sh
#     disabled
#     oneshot
#
# on property:sys.boot_completed=1
#   start mode_switch
#

FILE_USB_MODE="/sys/kernel/debug/usb@fe800000/rk_usb_force_mode"
MODE=$(getprop persist.usb.mode)

if [ -z "$MODE" ];then
    MODE="host";
fi

[ -e "$FILE_USB_MODE" ] &&  echo  "$MODE" > "$FILE_USB_MODE"

