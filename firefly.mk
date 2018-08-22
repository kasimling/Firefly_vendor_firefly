CUR_PATH := vendor/firefly/

PRODUCT_PACKAGES += \
    WallpaperPicker	

ifeq ($(strip $(TARGET_PRODUCT)), rk3399_firefly_aio_box)
PRODUCT_PACKAGES += \
    HDMIIn
endif

include $(CUR_PATH)/cat_log/cat_log.mk
include $(CUR_PATH)/usb_mode_switch/usb_mode_switch.mk
