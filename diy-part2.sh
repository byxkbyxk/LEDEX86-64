#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
git clone https://github.com/tty228/luci-app-serverchan.git ./package/lean/luci-app-serverchan
# git clone https://github.com/DD663663/luci-theme-argon_new.git ./package/lean/luci-theme-argon_new
git clone https://github.com/sirpdboy/luci-app-advanced.git ./package/lean/luci-app-advanced
# git clone https://github.com/kenzok8/luci-theme-ifit.git ./package/lean/luci-theme-ifit
