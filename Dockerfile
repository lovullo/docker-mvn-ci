FROM selenium/standalone-chrome
ARG DEBIAN_FRONTEND=noninteractive
USER root
RUN \
  apt-get update && \
  apt-get install -o Dpkg::Options::=--force-confdef -y  openjdk-8-jdk-headless  && \
  apt-get install -o Dpkg::Options::=--force-confdef -y  maven
