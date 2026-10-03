#!/bin/bash

# 设置 Boot 内核分区为 256 MB
sed -i 's/^CONFIG_TARGET_KERNEL_PARTSIZE=.*/CONFIG_TARGET_KERNEL_PARTSIZE=256/' .config
# # 设置 RootFS 根分区为 2048 MB (即 2GB)
sed -i 's/^CONFIG_TARGET_ROOTFS_PARTSIZE=.*/CONFIG_TARGET_ROOTFS_PARTSIZE=2048/' .config
# 修改构建者信息
sed -i 's/^CONFIG_KERNEL_BUILD_USER="builder"$/CONFIG_KERNEL_BUILD_USER="GithubAction"/' .config
sed -i 's/^CONFIG_KERNEL_BUILD_DOMAIN="buildhost"$/CONFIG_KERNEL_BUILD_DOMAIN="Ubuntu"/' .config
# 修改GRUB引导名
sed -i 's/^CONFIG_GRUB_TITLE="OpenWrt"$/CONFIG_GRUB_TITLE="My-Router"/' .config
# 修改GRUB超时秒数
sed -i 's/^CONFIG_GRUB_TIMEOUT="5"$/CONFIG_GRUB_TIMEOUT="1"/' .config
