. build.config.common
. build.config.aarch64
. build.config.gki

MAKE_GOALS="${MAKE_GOALS}
Image.lz4
Image.gz
"

# Sync with BUILD.bazel
ABI_DEFINITION=android/abi_gki_aarch64.xml
KMI_SYMBOL_LIST=android/abi_gki_aarch64
ADDITIONAL_KMI_SYMBOL_LISTS="
android/abi_gki_aarch64_virtual_device
android/abi_gki_aarch64_virtual_device_removed
android/abi_gki_aarch64_type_visibility
android/abi_gki_aarch64_arg
android/abi_gki_aarch64_db845c
android/abi_gki_aarch64_exynos
android/abi_gki_aarch64_exynosauto
android/abi_gki_aarch64_exynos_wear
android/abi_gki_aarch64_fips140
android/abi_gki_aarch64_galaxy
android/abi_gki_aarch64_general
android/abi_gki_aarch64_honor
android/abi_gki_aarch64_imx
android/abi_gki_aarch64_pixel
android/abi_gki_aarch64_microsoft
android/abi_gki_aarch64_moto
android/abi_gki_aarch64_mtktv
android/abi_gki_aarch64_mtk
android/abi_gki_aarch64_qcom
android/abi_gki_aarch64_rtktv
android/abi_gki_aarch64_sony
android/abi_gki_aarch64_tuxera
android/abi_gki_aarch64_unisoc
android/abi_gki_aarch64_vivo
android/abi_gki_aarch64_xiaomi
android/abi_gki_aarch64_oplus
android/abi_gki_aarch64_amlogic
android/abi_gki_aarch64_sunxi
android/abi_gki_aarch64_pasa
android/abi_gki_aarch64_zeku
android/abi_gki_aarch64_lenovo
android/abi_gki_aarch64_transsion
"

FILES="${FILES}
arch/arm64/boot/Image.lz4
arch/arm64/boot/Image.gz
"

# Update BUILD.bazel, define_common_kernels() if the value is not 1.
TRIM_NONLISTED_KMI=${TRIM_NONLISTED_KMI:-1}
KMI_SYMBOL_LIST_ADD_ONLY=1
KMI_SYMBOL_LIST_STRICT_MODE=${KMI_SYMBOL_LIST_STRICT_MODE:-1}
KMI_ENFORCED=1

BUILD_SYSTEM_DLKM=1
MODULES_LIST=${ROOT_DIR}/${KERNEL_DIR}/android/gki_system_dlkm_modules
MODULES_ORDER=android/gki_aarch64_modules

BUILD_GKI_CERTIFICATION_TOOLS=1

BUILD_GKI_ARTIFACTS=1
BUILD_GKI_BOOT_IMG_SIZE=67108864
BUILD_GKI_BOOT_IMG_GZ_SIZE=47185920
BUILD_GKI_BOOT_IMG_LZ4_SIZE=53477376

if [ -n "${GKI_BUILD_CONFIG_FRAGMENT}" ]; then
source ${GKI_BUILD_CONFIG_FRAGMENT}
fi