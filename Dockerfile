FROM debian:bullseye

RUN dpkg --add-architecture i386

RUN apt-get update && \
    apt-get install -y software-properties-common wget ca-certificates git build-essential gcc-10-multilib g++-10-multilib ccache

RUN /usr/sbin/update-ccache-symlinks && \
    echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc

VOLUME /build
WORKDIR /build