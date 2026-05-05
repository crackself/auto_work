### Openwrt_Image_Builder 
通过**GitHub Actions**云服务快速构建**Openwrt x86-64**固件

### 说明
- 通过修改[**`openwrt/del_packages`**](https://github.com/crackself/auto_work/blob/main/openwrt/del_packages)/[**`openwrt/add_packages`**](https://github.com/crackself/auto_work/blob/main/openwrt/add_packages)设定移除/集成软件包
- 首次开机后自动修改LAN地址为**192.168.100.1**
- 手动运行**Actions**触发构建固件
- 自动检测[OpenWrt发布页面](https://downloads.openwrt.org/releases/)，确保生成的是最新稳定版
- 输出文件通过**Actions**页面下载

### 官方支持文档：自定义配置、文件植入
- https://openwrt.org/docs/guide-user/additional-software/imagebuilder#custom_files
