$(BUILDDIR)/mod-switch-stamp:
	@echo "$(COLOUR_GREEN)Installing mod-switch for $(BOARD)$(END_COLOUR)"
	@mkdir -p /rootfs/usr/sbin /rootfs/etc/systemd/system /rootfs/root/payloads/mod1.d /rootfs/root/payloads/mod2.d
	@cp -a addons/mod-switch/mod-switch.service /rootfs/etc/systemd/system/
	@cp -a addons/mod-switch/mod-payload.sh /rootfs/usr/sbin
	@chmod +x /rootfs/usr/sbin/mod-payload.sh
	@mkdir -p /rootfs/tmp/install/
	@echo " mod-switch" >> /rootfs/tmp/install/systemd-enable
	@touch $@
