FROM ubuntu:bionic
ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update && \
  apt-get install -o Dpkg::Options::=--force-confdef -y  chromium-browser chromium-chromedriver  && \
  apt-get install -o Dpkg::Options::=--force-confdef -y  openjdk-8-jdk-headless  && \
  apt-get install -o Dpkg::Options::=--force-confdef -y  maven && \
  ln -s /usr/lib/chromium-browser/chromedriver /usr/bin/chromedriver && \
  mkdir /usr/src/mymaven

WORKDIR /usr/src/mymaven

