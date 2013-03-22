#
# Copyright (C) 2012 The SaberMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Extra packages
PRODUCT_PACKAGES += \
    bash \
    Basic \
    Camera \
    CMFileManager \
    com.tmobile.themes \
    Development \
    DSPManager \
    e2fsck \
    Email \
    GalleryGoogle-n7 \
    htop \
    LatinIME \
    libcyanogen-dsp \
    libjackpal-androidterm4 \
    lsof \
    mke2fs \
    Music \
    MusicFX \
    nano \
    openvpn \
    powertop \
    rsync \
    scp \
    sftp \
    SoundRecorder \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    Superuser \
    su \
    Term \
    ThemeChooser \
    ThemeManager \
    tune2fs \
    VideoEditor \
    vim \
    Wallpaperz

$(call inherit-product, vendor/goomanager/goomanager-vendor.mk)
$(call inherit-product, vendor/RM/rm-vendor.mk)

# Boot animations
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/media/bootanimation.zip:system/media/bootanimation.zip \
    device/asus/grouper/system/media/bootanimations/1.zip:system/media/bootanimations/1.zip \
    device/asus/grouper/system/etc/init.d/04bootanimations:system/etc/init.d/04bootanimations

# sysinit support
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/bin/sysinit:system/bin/sysinit

# remount scripts for system
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/etc/mount-rw:system/etc/mount-rw \
    device/asus/grouper/system/etc/mount-ro:system/etc/mount-ro

ifeq ($(USING_BUILD_SCRIPTS),true)
# kernel modules
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko
endif

# Busybox sync script
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/etc/init.d/99complete:system/etc/init.d/99complete

# Extra init file
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/etc/init.local.rc:root/init.sm.rc

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/etc/mkshrc:system/etc/mkshrc

# Allow fixing of permissions
PRODUCT_COPY_FILES += \
    device/asus/grouper/system/bin/fix_permissions:system/bin/fix_permissions

# Theme support
PRODUCT_COPY_FILES += \
       device/asus/grouper/system/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# video files and extra camera effects
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

### SaberMod LCD density scripts ###
# Copy the user interface bash script
PRODUCT_COPY_FILES += \
       device/asus/grouper/system/scripts/sm-lcd:system/scripts/sm-lcd
# Copy the init.d scripts
PRODUCT_COPY_FILES += \
       device/asus/grouper/system/etc/init.d/05sm-lcd:system/etc/init.d/05sm-lcd \
       device/asus/grouper/system/etc/init.d/06tmp-lcd:system/etc/init.d/06tmp-lcd

# SaberMod banner
PRODUCT_COPY_FILES += \
       device/asus/grouper/system/etc/init.d/00banner:system/etc/init.d/00banner
