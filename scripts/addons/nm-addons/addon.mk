$(BUILDDIR)/nm-addons-stamp:
	@echo "$(COLOUR_GREEN)Installing nm-addons for $(BOARD)$(END_COLOUR)"
	@mkdir -p /rootfs/etc/NetworkManager/system-connections/
#	@cp -a addons/nm-addons/*.nmconnection /rootfs/etc/NetworkManager/system-connections/
	@if grep -q '^no-auto-default=' /rootfs/etc/NetworkManager/NetworkManager.conf; then \
		sed -i 's/^no-auto-default=.*/no-auto-default=end0/' \
			/rootfs/etc/NetworkManager/NetworkManager.conf; \
	else \
		sed -i '/^\[main\]/a no-auto-default=end0' \
			/rootfs/etc/NetworkManager/NetworkManager.conf; \
	fi
	@touch $@
