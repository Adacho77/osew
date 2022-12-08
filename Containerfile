FROM docker.io/debian:bookworm-slim

RUN set -exu \
  && apt-get -yq update \
  && apt-get -yq install \
    wget \
    git \
    uuid-dev \
    nasm \
    build-essential \
    sharutils \
    curl \
    parted \
    e2fsprogs \
    unzip \
    pkg-config \
    gcc-arm-linux-gnueabi \
    gcc-arm-none-eabi \
    perl \
    libncurses5-dev \
    doxygen \
    iasl \
    gdb \
    flex \
    bison \
    libssl-dev \
    gnat \
    python-is-python3 \
    fonts-unifont \
    libopts25 \
    libselinux1-dev \
    autogen \
    m4 \
    autoconf \
    help2man \
    libopts25-dev \
    libfont-freetype-perl \
    automake \
    autotools-dev \
    build-essential \
    bison \
    flex \
    libfuse-dev \
    liblzma-dev \
    gawk \
    libdevmapper-dev \
    libtool \
    libfreetype6-dev \
    libpci-dev \
    pciutils \
    zlib1g-dev \
    libftdi-dev \
    libusb-1.0-0-dev \
    libusb-1.0 \
    libusb-1.0-0-dev \
    libusb-dev \
    innoextract \
    libc6-arm64-cross \
    libgcc-10-dev-arm64-cross \
    linux-libc-dev-arm64-cross \
    bash

CMD /bin/bash
