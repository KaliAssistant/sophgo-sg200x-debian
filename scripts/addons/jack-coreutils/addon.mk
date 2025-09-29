$(BUILDDIR)/jack-coreutils-stamp:
	@echo "$(COLOUR_GREEN)Installing jack-coreutils for $(BOARD)$(END_COLOUR)"
	@mkdir -p /rootfs/tmp/install
	@wget -O /output/lichee-jack-utils.tar.xz https://github.com/KaliAssistant/Lichee-Jack-utils/releases/download/2025.09-c5f31eb/lichee-jack-utils_2025-09-c5f31eb_all.tar.xz
	@tar Jxvf /output/lichee-jack-utils.tar.xz -C /output
	@cp /output/lichee-jack-utils/*.deb /rootfs/tmp/install
	@touch $@
