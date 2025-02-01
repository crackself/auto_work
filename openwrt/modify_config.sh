#!/bin/bash

# 调整root分区大小
sed -i 's/^CONFIG_TARGET_ROOTFS_PARTSIZE=104$/CONFIG_TARGET_ROOTFS_PARTSIZE=1024/' ${{ env.SOURCES_PATH}}/.config
# 修改编译信息
sed -i 's/^CONFIG_KERNEL_BUILD_USER="builder"$/CONFIG_KERNEL_BUILD_USER="GithubAction"/' ${{ env.SOURCES_PATH}}/.config
sed -i 's/^CONFIG_KERNEL_BUILD_DOMAIN="buildhost"$/CONFIG_KERNEL_BUILD_DOMAIN="Ubuntu"/' ${{ env.SOURCES_PATH}}/.config
# 修改GRUB引导名
sed -i 's/^CONFIG_GRUB_TITLE="OpenWrt"$/CONFIG_GRUB_TITLE="My-Router"/' ${{ env.SOURCES_PATH}}/.config
# 修改GRUB超时秒数
sed -i 's/^CONFIG_GRUB_TIMEOUT="5"$/CONFIG_GRUB_TIMEOUT="1"/' ${{ env.SOURCES_PATH}}/.config
