FROM debian:stretch
RUN apt update && apt install autoconf automake libtool flex bison gperf gawk g++ git m4 make openssl libssl-dev net-tools -y; \
    git clone git://github.com/openlink/virtuoso-opensource.git; \
    cd /virtuoso-opensource; \
    ./autogen.sh; \
    ./configure --enable-maintainer-mode; \
    make; \


