FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    unzip \
    vim-common \
    wget \
    zlib1g-dev \
    git && \
    rm -rf /var/lib/apt/lists/*

# python modules
RUN pip3 install --upgrade pip
RUN pip3 install tables numpy pandas matplotlib

# clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

