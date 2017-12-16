# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080


# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

-include device/google/muskie/device-carbon.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/walleye/walleye:8.0.0/OPD1.170816.025/4424668:user/release-keys \
    PRIVATE_BUILD_DESC="walleye-user 8.0.0 OPD1.170816.025 4424668 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Myself5"

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
