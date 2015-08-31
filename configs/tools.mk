#LOCAL_PATH:= vendor/pa/prebuilt
#PRODUCT_PACKAGES += \
#    bash \
#    ca-bundle \
#    curl \
#    dumplogcat \
#    e2fsck \
#    mke2fs \
#    resize2fs \
#    rsync \
#    scp \
#    sftp \
#    ssh \
#    ssh-keygen \
#    sshd \
#    sshd_config \
#    sshd_motd \
#    start-ssh \
#    tune2fs \
#    vim \
#    vimrc \
#    wget \
#    wgetrc

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/pa/overlay/hot_reboot

# Toolbox
PRODUCT_PACKAGES += \
    Toolbox
