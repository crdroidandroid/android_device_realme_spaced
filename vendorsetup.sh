echo start cloning repos

# Kernel Tree
KT=kernel/realme/mt6781/build.sh
if ! [ -a $KT ]; then git clone https://github.com/crdroidandroid/android_kernel_realme_mt6781.git -b 16.0 kernel/realme/mt6781
fi

# Vendor Tree
VT=vendor/realme/spaced/spaced-vendor.mk
if ! [ -a $VT ]; then git clone https://github.com/daizeuz-dred/realme_mt6781_vendor vendor/realme/spaced
fi

# Oplus Hardware
OPLUS=hardware/oplus/Android.bp
if ! [ -a $OPLUS ]; then git clone https://github.com/LineageOS/android_hardware_oplus -b lineage-23.2 hardware/oplus
fi

# MediaTek Hardware
MTK=hardware/mediatek/Android.bp
if ! [ -a $MTK ]; then git clone https://github.com/LineageOS/android_hardware_mediatek -b lineage-23.2 hardware/mediatek
fi

# MediaTek Common IMS
VT_IMS=vendor/mediatek/ims/ims.mk
if ! [ -a $VT_IMS ]; then git clone https://github.com/daizeuz-dred/android-vendor-mediatek-ims vendor/mediatek/ims
fi

# MediaTek Sepolicy
MTK_SEPOLICY=device/mediatek/sepolicy_vndr/SEPolicy.mk
if ! [ -a $MTK_SEPOLICY ]; then git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr -b lineage-23.2 device/mediatek/sepolicy_vndr
fi

# Compat
COMPAT=hardware/lineage/compat/Android.bp
if ! [ -a $COMPAT ]; then git clone https://github.com/daizeuz-dred/android_hardware_lineage_compat hardware/lineage/compat
fi

# Pocket
POCKET=packages/apps/PocketMode/pocket_mode.mk
if ! [ -a $POCKET ]; then git clone https://github.com/realme-mt6781-dev/packages_apps_PocketMode packages/apps/PocketMode
fi

# Sign Keys
KEYS=vendor/lineage-priv/keys/releasekey.pk8
if ! [ -a $KEYS ]; then git clone https://github.com/daizeuz-dred/crdroid-12.11-keys-official vendor/lineage-priv/keys
fi
