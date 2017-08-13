PRODUCT_PROPERTY_OVERRIDES := \
    ro.ota.romname=Validus-j5lte \
    ro.ota.version=$(shell date +%F%H | sed s@-@@g) \
    ro.ota.manifest=https://basketbuild.com/uploads/devs/tioguda/Validus/j5lte/7.1.2/j5lte.xml

#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j5lte/j5lte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j5lte

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
