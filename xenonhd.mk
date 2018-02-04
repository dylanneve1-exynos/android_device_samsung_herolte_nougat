# Inherit device configuration
$(call inherit-product, device/samsung/herolte/herolte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

ROOT_METHOD=magisk

PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    MiXplorer
	
## Device identifier. This must come after all inclusions
PRODUCT_NAME := xenonhd_herolte
PRODUCT_DEVICE := herolte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G930F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer="dylanneve1"