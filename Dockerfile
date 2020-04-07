FROM nvidia/cuda:10.0-base

LABEL maintainer="Vasily Boychuk <pphator@gmail.com>"

RUN apt-get update && \
    apt-get install -y pkg-config software-properties-common build-essential cmake gfortran \
        libboost-dev libboost-system-dev libboost-filesystem-dev \
        liblapack-dev libatlas-base-dev libopenblas-dev \
        zlib1g-dev liblzma-dev liblz4-dev libzstd-dev libsnappy-dev zip p7zip-full \
        libhdf5-dev libedit-dev \
        libzmq3-dev \
        git wget tmux nano sysstat htop mc \
        python3-pip python3-dev && \
    pip3 install -U pip && \
    hash -r pip3