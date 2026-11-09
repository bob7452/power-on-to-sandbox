#!/bin/sh
set -e
sudo apt update

#add anything you needed
sudo apt install -y qemu-system-x86 gcc gdb make git build-essential \
  flex bison libelf-dev libssl-dev bc cpio

cd "$(dirname "$0")"
[ -d linux ]   || git clone --depth 1 --branch v6.12 https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[ -d busybox ] || git clone --depth 1 https://git.busybox.net/busybox
