# oviphone em55 2G modem Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/airforce-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/airforce-common/rild/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/airforce-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/airforce-common/ril_modem/Oviphone/em56/libsoftwinner-ril-oviphone-em56.so:system/lib/libsoftwinner-ril-oviphone-em56.so \
	device/softwinner/airforce-common/ril_modem/Oviphone/em56/gsmMuxd:system/xbin/gsmMuxd \
	device/softwinner/airforce-common/ril_modem/Oviphone/em56/mux.d:system/xbin/mux.d \
	device/softwinner/airforce-common/ril_modem/Oviphone/em56/init.gprs-pppd:system/etc/ppp/init.gprs-pppd \
	device/softwinner/airforce-common/ril_modem/Oviphone/em56/wcdma-ppp-on-dialer:system/etc/ppp/wcdma-ppp-on-dialer

PRODUCT_COPY_FILES += \
	device/softwinner/airforce-common/ril_modem/Oviphone/em56/init.oviphone_em56.rc:root/init.sunxi.3g.rc

PRODUCT_PACKAGES += \
	chat \
	libril1 \
	rild \
	rild1 \
	pppd \
	Mms \
	Dialer \
	Stk

PRODUCT_PROPERTY_OVERRIDES += \
	rw.talkingstandby.enabled=1 \
	ro.sw.embeded.telephony=true \
	ro.sw.audio.codec_plan_name=PLAN_ONE \
	ro.sw.audio.bp_device_name=em55 \
	audio.without.earpiece=0 \
	ro.telephony.dsds.enabled=true \
	ro.ril.ecclist=110,119,120,112,114,911
