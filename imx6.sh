#!/bin/bash
export BUILD_PATH=/home/s/Downloads/Quadmo747/build
export MX6_TOOLCHAIN_PATH=/home/s/Downloads/Quadmo747/arm-fsl-linux-gnueabi/bin
export ARCH=arm
export CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi-
echo
echo "To compile Linux KERNEL and modules:"
echo
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- imx6q_seco_q7_defconfig"
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- menuconfig"
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- uImage"
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- modules"
echo
echo
echo "To compile u-boot.bin :"
echo
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- mx6q_seco_q7_config"
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- "
echo
echo
echo "To deploy kernel:"
echo
echo "mkdir $BUILD_PATH"
echo "cp arch/arm/boot/uImage $BUILD_PATH"
echo "make ARCH=arm CROSS_COMPILE=$MX6_TOOLCHAIN_PATH/arm-fsl-linux-gnueabi- INSTALL_MOD_PATH=$BUILD_PATH modules_install"
echo
echo "To deploy u-boot:"
echo "cp u-boot.bin $BUILD_PATH"
