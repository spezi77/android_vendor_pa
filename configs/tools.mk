LOCAL_PATH:= vendor/pa/prebuilt

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    $(LOCAL_PATH)/etc/init.d/05mountext:system/etc/init.d/05mountext \
    $(LOCAL_PATH)/etc/init.d/10apps2sd-redux:system/etc/init.d/10apps2sd \
    $(LOCAL_PATH)/etc/init.d/20extgapps:system/etc/init.d/20extgapps

# Apps2sd files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/a2sd:system/bin/a2sd \
    $(LOCAL_PATH)/bin/sysinit:system/bin/sysinit \
    $(LOCAL_PATH)/bin/fix_permissions:system/bin/fix_permissions \
    $(LOCAL_PATH)/xbin/zipalign:system/xbin/zipalign

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/compcache:system/bin/compcache \
    $(LOCAL_PATH)/bin/handle_compcache:system/bin/handle_compcache

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/apk/Term.apk:system/app/Term.apk \
    $(LOCAL_PATH)/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Copy Google Keyboard + latinime for gesture typing (AOSP Keyboard brings FC!)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so \
    $(LOCAL_PATH)/apk/GoogleLatinIme.apk:system/app/GoogleLatinIme.apk
    
# Copy LowSoundFixer for KK (thanks tytung)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/apk/LowSoundFixer_v1.0.8.apk:system/app/LowSoundFixer_v1.0.8.apk
