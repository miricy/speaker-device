$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

include device/softwinner/airforce-common/prebuild/tools/tools.mk

PRODUCT_PACKAGES += SoundRecorder

# ext4 filesystem utils
PRODUCT_PACKAGES += \
	e2fsck \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	make_ext4fs

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.airforce \
	audio.r_submix.default

PRODUCT_PACKAGES += \
	libcedarxbase \
	libcedarxosal \
	libcedarv \
	libcedarv_base \
	libcedarv_adapter \
	libve \
	libaw_audio \
	libaw_audioa \
	libswdrm \
	libstagefright_soft_cedar_h264dec \
	libfacedetection \
	libthirdpartstream \
	libcedarxsftstream \
	libsunxi_alloc \
	libsrec_jni \
	libjpgenc \
	libstagefrighthw \
	libOmxCore \
	libOmxVdec \
	libOmxVenc \
	libaw_h264enc \
	libI420colorconvert \
	libion_alloc

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/media_codecs.xml:system/etc/media_codecs.xml \
	device/softwinner/airforce-common/hardware/audio/audio_policy.conf:system/etc/audio_policy.conf \
	device/softwinner/airforce-common/hardware/audio/phone_volume.conf:system/etc/phone_volume.conf

# wfd no invite
PRODUCT_COPY_FILES += \
    device/softwinner/airforce-common/wfd_blacklist.conf:system/etc/wfd_blacklist.conf

#exdroid HAL
PRODUCT_PACKAGES += \
	lights.airforce \
	camera.airforce \
	sensors.airforce \
	hwcomposer.airforce \
	keystore.airforce \
	libion

#install apk to system/app
#   Update \
#   FileExplore
PRODUCT_PACKAGES += \
   libjni_mosaic \
   libjni_eglfence \
   com.android.future.usb.accessory

#preinstall apk
PRODUCT_PACKAGES += \
	DragonFire.apk \
	DragonPhone.apk \
	VideoTest.apk

# init.rc
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/init.rc:root/init.rc \
	device/softwinner/airforce-common/init.sun8i.usb.rc:root/init.sun8i.usb.rc

# table core hardware
PRODUCT_COPY_FILES += \
    device/softwinner/airforce-common/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

#egl
PRODUCT_COPY_FILES += \
    device/softwinner/airforce-common/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/softwinner/airforce-common/egl/gralloc.sun8i.so:system/lib/hw/gralloc.sun8i.so \
    device/softwinner/airforce-common/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    device/softwinner/airforce-common/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    device/softwinner/airforce-common/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    device/softwinner/airforce-common/egl/libMali.so:system/lib/libMali.so \
    device/softwinner/airforce-common/sensors.sh:system/bin/sensors.sh \
    device/softwinner/airforce-common/lights_leds.sh:system/bin/lights_leds.sh

PRODUCT_PROPERTY_OVERRIDES += \
	ro.zygote.disable_gl_preload=true

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
	ro.reversion.aw_sdk_tag= exdroid4.4.2_r2-a33-v2.1 \
	ro.sys.cputype=QuadCore-A33

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	keyguard.no_require_sim=true \
	ro.sys.network_location=true

PRODUCT_PROPERTY_OVERRIDES += \
	persist.demo.hdmirotationlock=0

# add for start bg service at the same time
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=5

BUILD_NUMBER := $(shell date +%Y%m%d)

#add for gms
PRODUCT_PACKAGES += \
        PartnerBookmarksProvider

#for gts
PRODUCT_PROPERTY_OVERRIDES += \
        drm.service.enabled=true

PRODUCT_PACKAGES += \
    com.google.widevine.software.drm.xml \
    com.google.widevine.software.drm \
    libdrmwvmplugin \
    libwvm \
    libWVStreamControlAPI_L3 \
    libwvdrm_L3 \
    libdrmdecrypt \
    libwvdrmengine

#gpio
PRODUCT_PACKAGES += \
	gpioservice \
	libgpio_jni \
	libgpioservice \
