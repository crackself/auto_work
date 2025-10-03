#!/bin/bash

# 调整root分区大小
sed -i 's/^CONFIG_TARGET_ROOTFS_PARTSIZE=104$/CONFIG_TARGET_ROOTFS_PARTSIZE=2048/' .config
# 修改构建者信息
sed -i 's/^CONFIG_KERNEL_BUILD_USER="builder"$/CONFIG_KERNEL_BUILD_USER="GithubAction"/' .config
sed -i 's/^CONFIG_KERNEL_BUILD_DOMAIN="buildhost"$/CONFIG_KERNEL_BUILD_DOMAIN="Ubuntu"/' .config
# 修改GRUB引导名
sed -i 's/^CONFIG_GRUB_TITLE="OpenWrt"$/CONFIG_GRUB_TITLE="My-Router"/' .config
# 修改GRUB超时秒数
sed -i 's/^CONFIG_GRUB_TIMEOUT="5"$/CONFIG_GRUB_TIMEOUT="1"/' .config
