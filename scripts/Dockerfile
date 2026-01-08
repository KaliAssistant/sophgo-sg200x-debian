FROM debian:stable as sophgo-sg200x-debian-builder

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y eatmydata \
    && eatmydata apt-get install -y --no-install-recommends \
        qemu-user-static mtools sbuild-debian-developer-setup \
        binfmt-support gdisk kpartx sbuild \
        parted ca-certificates dh-make \
        autoconf automake autotools-dev bc \
        build-essential cpio curl sudo \
        dosfstools e2fsprogs fdisk flex gawk  \
        git gperf kmod libexpat-dev \
        libgmp-dev libmpc-dev libmpfr-dev libssl-dev \
        libtool mmdebstrap openssl parted \
        patchutils python3 python3-dev  \
        python3-setuptools  swig gnupg \
        systemd-container texinfo zlib1g-dev wget arch-test \
        linux-image-generic genimage joe mc zip \
        fakeroot git kernel-wedge quilt ccache flex bison \
        libssl-dev dh-exec rsync libelf-dev bc gcc-riscv64-unknown-elf \
        && mkdir -p /host-tools/gcc \
        && wget -O - https://github.com/scpcom/riscv-gnu-toolchain/releases/download/riscv64-gcc-thead_20241206-10.4.0-x86_64/riscv64-linux-gcc-thead_20241206-10.4.0-x86_64.tar.gz | tar -C /host-tools/gcc -xz




FROM sophgo-sg200x-debian-builder as build_image
WORKDIR /builder
ADD scripts/ /builder/

CMD /bin/bash
