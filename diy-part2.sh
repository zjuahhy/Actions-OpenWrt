#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ABABAABB/LUNZN-S20P/g' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-ccc-ddd.dts
rm -rf target/linux/mediatek/patches-5.4/9921-support-SX-7981R128-for-mtk-sdk-v7.6.6.1.patch

# Modify default WiFi SSID
#sed -i 's/ImmortalWrt-2.4G/CLX2.4G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
#sed -i 's/ImmortalWrt-5G/CLX5G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
