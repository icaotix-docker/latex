FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /data
WORKDIR /data

RUN apt-get update -q \
    && apt-get install -qy tar perl wget \
    && rm -rf /var/lib/apt/lists/*

ARG SCHEME

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && mkdir /install-tl-unx \
    && tar -xvf install-tl-unx.tar.gz -C /install-tl-unx --strip-components=1 \
    && rm install-tl-unx.tar.gz \
    && echo "selected_scheme scheme-${SCHEME}" >> /install-tl-unx/texlive.profile \
    && /install-tl-unx/install-tl -profile /install-tl-unx/texlive.profile \
    && rm -r /install-tl-unx

ENV PATH="/usr/local/texlive/2020/bin/x86_64-linux:${PATH}"
