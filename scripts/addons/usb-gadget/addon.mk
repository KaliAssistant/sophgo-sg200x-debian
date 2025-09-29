$(BUILDDIR)/usb-gadget-stamp:
	@echo "$(COLOUR_GREEN)Installing usb-gadget for $(BOARD)$(END_COLOUR)"
	@mkdir -p /rootfs/usr/sbin /rootfs/etc/systemd/system/ /rootfs/etc/network/interfaces.d/ /rootfs/etc/gt/templates
	@cp -a addons/usb-gadget/usb-gadget*.service /rootfs/etc/systemd/system/
	@cp -a addons/usb-gadget/usb0 /rootfs/etc/network/interfaces.d/
	@cp -a addons/usb-gadget/*.scheme /rootfs/etc/gt/templates/
	@mkdir -p /rootfs/tmp/install/
#	@echo " usb-gadget-licheejack usb-gadget-rndis-usb0" >> /rootfs/tmp/install/systemd-enable
	@touch $@
