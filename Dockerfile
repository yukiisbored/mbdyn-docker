FROM ubuntu:latest
MAINTAINER Kaisar Arkhan (Yuki) <ykno@protonmail.com>

ENV DEBIAN_FRONTEND=noninteractive MBDYN_VERSION=1.7.1

# Update repositories
RUN apt-get update

# Install required packages
RUN apt-get install -y build-essential libmetis-dev libumfpack5.7.1 \
                       libsuitesparse-dev libarpack++2-dev libarpack2-dev \
                       libopenmpi-dev libginac-dev curl

# Download and compile MBDyn
RUN curl https://www.mbdyn.org/userfiles/downloads/mbdyn-$MBDYN_VERSION.tar.gz \
         -o /tmp/mbdyn.tar.gz && \
    mkdir /tmp/mbdyn-src && \
    tar xf /tmp/mbdyn.tar.gz --strip 1 -C /tmp/mbdyn-src && \
    cd /tmp/mbdyn-src && \
    /tmp/mbdyn-src/configure --prefix=/usr && \
    make && \
    make install &&
    cd / && rm -rf /tmp/mbdyn-src
