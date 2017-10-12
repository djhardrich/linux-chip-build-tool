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
