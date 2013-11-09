# 
# Copyright (C) 2010 segal.di.ubi.pt 
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=restorefactory_slboat_mod
PKG_VERSION:=1
PKG_RELEASE:=6

include $(INCLUDE_DIR)/package.mk

define Package/restorefactory
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Mimic original functionality of the reset button,This is a SLBoat mod with led status show
  MAINTAINER:=Nuno Goncalves <nunojpg@gmail.com>,SLBoat Mod <see.sl088.com>
endef

define Package/restorefactory/description
RestoreFactory handles the reset button event and issues a "firstboot" command.
Button and wait time can be configured with a UCI file.
The SLBoat Mod is add a function to flash the led,if you push the reset button,the led are flash in 2.5 second,if less than 10 second,is will be cancal flash,if more than 10 second it's will flash more like failsafe!thx to great nuno goncalves.
endef

define Build/Compile
endef

define Package/restorefactory/install
	$(INSTALL_DIR) $(1)/etc/hotplug.d/button
	$(INSTALL_BIN) ./files/hotplug_restorefactory $(1)/etc/hotplug.d/button/50-restorefactory
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/uci_defaults_restorefactory $(1)/etc/uci-defaults/50-restorefactory
endef

$(eval $(call BuildPackage,restorefactory))
