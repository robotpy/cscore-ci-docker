FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        tzdata \
    && apt-get install --no-install-recommends -y \
        software-properties-common \
    && add-apt-repository -y ppa:~timsc/opencv-3.4 \
    && apt-get update \
    && apt-get install --no-install-recommends -y \
        libopencv-dev \
        python3-opencv \
        python3-dev \
        python3-pip \
        build-essential \
        git \
    && python3 -m pip install -U pip \
    && rm -rf /var/lib/apt/lists/*

