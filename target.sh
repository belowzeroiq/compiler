#!/bin/bash

# Main
KERNEL_ROOTDIR=/workspace/aerospace-kernel # IMPORTANT ! Fill with your kernel source root directory.
DEVICE_DEFCONFIG=gki_defconfig # IMPORTANT ! Declare your kernel source defconfig file here.
CLANG_ROOTDIR=/workspace/greenforce-clang # IMPORTANT! Put your clang directory here.
export KBUILD_BUILD_USER=unknown # Change with your own name or else.
export KBUILD_BUILD_HOST=belowzeroiq # Change with your own hostname.
