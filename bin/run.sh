#!/bin/zsh

set -ue

rm -rf build

mkdir -p build

nasm -Iinclude -fbin src/boot-sec-simple.ams -o build/boot-sec-simple.bin
qemu-system-x86_64 -drive format=raw,file=build/boot-sec-simple.bin
