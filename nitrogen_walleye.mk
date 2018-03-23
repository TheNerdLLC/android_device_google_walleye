# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common AICP stuff.
$(call inherit-product, vendor/nitrogen/products/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/walleye/aosp_walleye.mk)

-include device/google/walleye-wahoo/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := walleye
PRODUCT_NAME := nitrogen_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    BUILD_FINGERPRINT=google/walleye/walleye:8.1.0/OPM1.171019.021/4565141:user/release-keys \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.021 4565141 release-keys"

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
