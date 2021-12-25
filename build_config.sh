#!/bin/bash

echo "Androians' Kernel Build script!"
echo "Based off Lenovo's crappy build script"

THREAD=10

#vendor/bengal-perf_defconfig

GCC_PATH=/home/hexagonwin/p11_kernel/aarch64-linux-android-4.9/bin
echo "GCC is $GCC_PATH"
CC=${PWD}/../../clang-r353983c/bin/clang
echo "CC is $CC"

echo "Exporting CC and GCC"
export PATH=$PATH:$GCC_PATH
echo "Exported GCC"
export PATH=$PATH:$CC
echo "Exported CC"

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
export CLANG_TRIPLE=aarch64-linux-gnu-
export CC=${CC}

#make -j $THREAD m11_row_defconfig
make p11_defconfig

make menuconfig

#make -j $THREAD O=./output/ ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- CLANG_TRIPLE=aarch64-linux-gnu- CC=${CC}
