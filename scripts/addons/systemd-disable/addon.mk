$(BUILDDIR)/systemd-disable-stamp:
	@echo "$(COLOUR_GREEN)Installing systemd-disable for $(BOARD)$(END_COLOUR)"
	@mkdir -p /rootfs/tmp/install
	@echo " avahi-daemon ssh" >> /rootfs/tmp/install/systemd-disable
	@touch $@
