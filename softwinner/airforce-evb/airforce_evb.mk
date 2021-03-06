$(call inherit-product, device/softwinner/airforce-common/airforce-common.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
#$(call inherit-product, device/softwinner/airforce-common/rild/airforce_3gdongle.mk)

# google pinyin
# PRODUCT_PACKAGES += GooglePinyin

# apk install 
PRODUCT_PACKAGES += AllCast

# init.rc, kernel
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-evb/kernel:kernel \
	device/softwinner/airforce-evb/modules/modules/nand.ko:root/nand.ko \
	device/softwinner/airforce-evb/init.sun8i.rc:root/init.sun8i.rc \
	device/softwinner/airforce-evb/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
	device/softwinner/airforce-evb/initlogo.rle:root/initlogo.rle  \
	device/softwinner/airforce-evb/media/bootanimation.zip:system/media/bootanimation.zip \
	device/softwinner/airforce-evb/media/boot.wav:system/media/boot.wav \
	device/softwinner/airforce-evb/media/bootlogo.bmp:system/media/bootlogo.bmp \
	device/softwinner/airforce-evb/media/initlogo.bmp:system/media/initlogo.bmp \
	device/softwinner/airforce-evb/fstab.sun8i:root/fstab.sun8i \
	device/softwinner/airforce-evb/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc

# wifi features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

#key and tp config file
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-evb/configs/sunxi-keyboard.kl:system/usr/keylayout/sunxi-keyboard.kl \
	device/softwinner/airforce-evb/configs/tp.idc:system/usr/idc/tp.idc \
	device/softwinner/airforce-evb/configs/gsensor.cfg:system/usr/gsensor.cfg


#copy touch and keyboard driver to recovery randisk
PRODUCT_COPY_FILES += \
    device/softwinner/airforce-evb/modules/modules/disp.ko:obj/disp.ko \
    device/softwinner/airforce-evb/modules/modules/sunxi-keyboard.ko:obj/sunxi-keyboard.ko \
    device/softwinner/airforce-evb/modules/modules/lcd.ko:obj/lcd.ko \
    device/softwinner/airforce-evb/modules/modules/gt82x.ko:obj/gt82x.ko \
    device/softwinner/airforce-evb/modules/modules/gt818_ts.ko:obj/gt818_ts.ko \
    device/softwinner/airforce-evb/modules/modules/sw-device.ko:obj/sw-device.ko

# ap6181/6210/6330 sdio wifi fw and nvram
#$(call inherit-product-if-exists, hardware/broadcom/wlan/firmware/ap6181/device-bcm.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/firmware/ap6210/device-bcm.mk)
#$(call inherit-product-if-exists, hardware/broadcom/wlan/firmware/ap6330/device-bcm.mk)

#rtl8723bs bt fw and config
#PRODUCT_COPY_FILES += \
# device/softwinner/airforce-common/hardware/realtek/bluetooth/rtl8723bs/firmware/rtl8723b_fw:system/etc/firmware/rtlbt/rtlbt_fw \
# device/softwinner/airforce-common/hardware/realtek/bluetooth/rtl8723bs/firmware/rtl8723b_config:system/etc/firmware/rtlbt/rtlbt_config

#esp8089 wifi firmware
#$(call inherit-product-if-exists, hardware/espressif/wlan/firmware/esp8089/device-esp.mk)

#vold config
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-evb/recovery.fstab:recovery.fstab 
# camera
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-evb/configs/camera.cfg:system/etc/camera.cfg \
	device/softwinner/airforce-evb/configs/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.timezone=Asia/Shanghai \
	persist.sys.language=zh \
	persist.sys.country=CN

#rtl8189es cob set macaddr
#PRODUCT_PACKAGES +=  setmacaddr

PRODUCT_PACKAGES += Bluetooth

PRODUCT_PACKAGES += \
	BluetoothTvApp \
	com.broadcom.bt \
	com.broadcom.bt.xml \
	HIDDeviceApp \
	audio.btmic.default

#PRODUCT_PROPERTY_OVERRIDES += \
#	ro.product.8723b_bt.used=true

#GPS Feature
PRODUCT_PACKAGES +=  gps.airforce
BOARD_USES_GPS_TYPE := simulator
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml

# evb logger
PRODUCT_COPY_FILES += \
       device/softwinner/airforce-evb/tools/logger.sh:system/bin/logger.sh
       
# 3G Data Card Packages
PRODUCT_PACKAGES += \
	u3gmonitor \
	chat \
	rild \
	pppd

# 3G Data Card Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/airforce-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/airforce-common/rild/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/softwinner/airforce-common/rild/usb_modeswitch:system/bin/usb_modeswitch \
	device/softwinner/airforce-common/rild/call-pppd:system/xbin/call-pppd \
	device/softwinner/airforce-common/rild/usb_modeswitch.sh:system/xbin/usb_modeswitch.sh \
	device/softwinner/airforce-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/airforce-common/rild/libsoftwinner-ril.so:system/lib/libsoftwinner-ril.so
	
#PRODUCT_COPY_FILES += \
#	device/softwinner/airforce-common/rild/init.3gdongle.rc:root/init.sunxi.3gdongle.rc

# 3G Data Card usb modeswitch File
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/softwinner/airforce-common/rild/usb_modeswitch.d,system/etc/usb_modeswitch.d)
	
	
	
PRODUCT_PROPERTY_OVERRIDES += \
		    ro.sw.embeded.telephony = false

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb \
	ro.udisk.lable=Polaris \
	ro.font.scale=1.0 \
	ro.hwa.force=false \
	rw.logger=0 \
	ro.sys.bootfast=true \
	debug.hwc.showfps=0 \
	debug.hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
       ro.sf.lcd_density=213 \
	ro.product.firmware=v1.0rc7

###
PRODUCT_PROPERTY_OVERRIDES += \
	testing.mediascanner.skiplist=/mnt/usbhost1/
###

$(call inherit-product-if-exists, device/softwinner/airforce-evb/modules/modules.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/airforce-evb/overlay
PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_AAPT_CONFIG := xlarge hdpi xhdpi large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_BRAND  := wifi-speaker
PRODUCT_NAME   := airforce_evb
PRODUCT_DEVICE := airforce-evb
PRODUCT_MODEL  := wifi-speaker

#include device/softwinner/airforce-common/prebuild/google/products/gms_base.mk
