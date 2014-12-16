# 3G Modem Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/airforce-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/airforce-common/rild/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/airforce-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/airforce-common/ril_modem/huawei/mu509/libsoftwinner-ril-huawei-mu509.so:system/lib/libsoftwinner-ril-huawei-mu509.so

PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/ril_modem/huawei/mu509/init.huawei_mu509.rc:root/init.sunxi.3g.rc
