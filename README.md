### Openwrt_Imaage_Builder 
通过GitHub Actions 快速构建Openwrt x86-64固件，耗时10Min

- **`Actions`**手动触发运行
- 自动检测[OpenWrt发布页面](https://downloads.openwrt.org/releases/)获取最新稳定版本号
- 通过修改[**`openwrt/del_packages`**](https://github.com/crackself/auto_work/blob/main/openwrt/del_packages)/[**`openwrt/add_packages`**](https://github.com/crackself/auto_work/blob/main/openwrt/add_packages)设定移除/集成软件包
- 输出文件通过**`Actions`**页面下载
