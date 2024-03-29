export SKIP_ABI_CHECKS=true
export SKIP_API_CHECKS=true
#export SELINUX_IGNORE_NEVERALLOWS=true
#export ALLOW_MISSING_DEPENDENCIES=true
# Clang
git clone https://gitlab.com/ElectroPerf/atom-x-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-atom
# GCC
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64.git prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/mvaisakh/gcc-arm.git prebuilts/gcc/linux-x86/arm/arm-eabi
# data-ipa-cfg-mgr
rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_data-ipa-cfg-mgr.git -b lineage-18.1 vendor/qcom/opensource/data-ipa-cfg-mgr
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton
# device_Settings
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-18.1 packages/resources/devicesettings
# Vibrator
rm -rf vendor/qcom/opensource/vibrator
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_vibrator.git vendor/qcom/opensource/vibrator
# External_Packages
git clone https://github.com/dhimanparas20/vendor_packages.git vendor/packages
# Zenparts
git clone https://github.com/dhimanparas20/ZenParts.git packages/apps/ZenParts
# Cache
export USE_CCACHE=1 && ccache -M 50G && export CONFIG_STATE_NOTIFIER=y
