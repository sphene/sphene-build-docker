FROM debian:buster

RUN dpkg --add-architecture i386

RUN apt-get update && \
    apt-get install -y software-properties-common wget ca-certificates git build-essential gcc-multilib g++-multilib 

VOLUME /build
WORKDIR /build