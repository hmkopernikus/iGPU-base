FROM nvcr.io/nvidia/l4t-tensorrt:r8.4.1.5-devel

RUN apt-get update && \
        apt-get install -y --no-install-recommends \
            software-properties-common \
            autoconf \
            automake \
            build-essential \
            git \
            libb64-dev \
            libre2-dev \
            libssl-dev \
            libtool \
            libboost-dev \
            rapidjson-dev \
            patchelf \
            pkg-config \
            libopenblas-dev \
            libarchive-dev \
            zlib1g-dev \
            python3 \
            python3-dev \
            python3-pip

RUN apt-get update && \
        apt-get install -y --no-install-recommends \
        curl \
        jq

RUN pip3 install --upgrade wheel setuptools && \
    pip3 install --upgrade grpcio-tools numpy attrdict pillow



WORKDIR /opt/tritonserver
COPY ./backends ./backends
COPY ./bin/tritonserver .
COPY ./bin ./bin
COPY ./clients ./client
COPY ./include ./include
COPY ./qa ./qa
COPY ./lib ./lib