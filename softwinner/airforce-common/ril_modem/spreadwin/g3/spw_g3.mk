# spreadwin g3 Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/airforce-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/airforce-common/rild/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/airforce-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/airforce-common/ril_modem/spreadwin/g3/hspa-pppd:system/etc/ppp/hspa-pppd \
	device/softwinner/airforce-common/ril_modem/spreadwin/g3/libg3-ril.so:system/lib/libg3-ril.so

PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/ril_modem/spreadwin/g3/init.spw_g3.rc:root/init.sunxi.3g.rc
