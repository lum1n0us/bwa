FROM ubuntu:18.04 as builder

#
# install clang and llvm
COPY llvm.sh /tmp
RUN apt update \
    && apt install -y lsb-release wget software-properties-common build-essential \
    && cd /tmp \
    && chmod a+x llvm.sh \
    && ./llvm.sh 11

# create links
ENV CC=/usr/bin/clang-11 \
    CXX=/usr/bin/clang-cpp-11

#
# install wasi-sdk-11
COPY wasi-sdk-11.0-linux.tar.gz /opt
RUN cd /opt \
    && tar zxf wasi-sdk-11.0-linux.tar.gz \
    && rm wasi-sdk-11.0-linux.tar.gz \
    && ln -sf /opt/wasi-sdk-11.0/lib/clang/10.0.0/lib/wasi/ /usr/lib/llvm-11/lib/clang/11.0.0/lib/

#
# install tools
RUN apt install -y tree vim 

#
# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*

VOLUME /data
WORKDIR /data
