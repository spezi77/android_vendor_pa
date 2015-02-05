LOCAL_PATH:= vendor/pa/prebuilt
PRODUCT_PACKAGES += \
    bash \
    busybox \
    ca-bundle \
    curl \
    dumplogcat \
    e2fsck \
    mke2fs \
    resize2fs \
    rsync \
    scp \
    sftp \
    ssh \
    ssh-keygen \
    sshd \
    sshd_config \
    sshd_motd \
    start-ssh \
    tune2fs \
    vim \
    vimrc \
    wget \
    wgetrc
    
# Toolbox
PRODUCT_PACKAGES += \
    Toolbox

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/compcache:system/bin/compcache \
    $(LOCAL_PATH)/bin/handle_compcache:system/bin/handle_compcache

# Copy prebuilt apps
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/apk/LowSoundFixer_v1.0.8.apk:system/priv-app/LowSoundFixer/LowSoundFixer_v1.0.8.apk
