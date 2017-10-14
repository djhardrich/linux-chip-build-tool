#!/bin/bash
# Here is where you can customize the build process to point to your own
# fork of CHIP-buildroot!

echo -e "\n Installing CHIP-buildroot"
if [ ! -d Gadget-OS ]; then
  git clone https://github.com/NextThingCo/Gadget-OS.git
else
  pushd Gadget-OS
  git pull
  popd
fi




##TIPS TO FIX UBI + KERNEL BOOT
##FROM HOME
#git clone https://github.com/NextThingCo/chip-u-boot
#git checkout nexthing/2016.01/next
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- chippro_defconfig
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
#FROM CHIP TOOLS DIR
#sudo ./chip-create-nand-images ../../chip-u-boot ../../vagrant/output/rootfs.tar output
#./chip-update-firmware.sh -L output -F Toshiba_512M_SLC
