FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /data

RUN apt-get update -q && apt-get install -qy \
    texlive-base biber\
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*
