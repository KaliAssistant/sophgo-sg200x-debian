CHIP=cv181x
UBOOT_CHIP=cv181x
UBOOT_BOARD=licheervnano_sd
BOOT_CPU=riscv
ARCH=riscv
DDR_CFG=ddr3_1866_x16
PARTITION_FILE=partition_sd.xml
STORAGE_TYPE=sd

PACKAGES += " wireless-regdb wpasupplicant cvi-pinmux-cv181x git wget curl libusbgx-dev cmake make gcc g++ python3 python3-dev python3-pip python3-venv python3-aioquic python3-netifaces python3-toml nmap arp-scan macchanger tcpdump htop btop fastfetch locales pipx netdiscover hping3"

IMAGE_ADDITIONS += "aic8800-firmware"
IMAGE_ADDITIONS += "nm-addons"
IMAGE_ADDITIONS += "jack-coreutils"
IMAGE_ADDITIONS += "systemd-disable"
