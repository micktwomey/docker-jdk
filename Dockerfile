# Base Sun JDK build
FROM ubuntu:13.10
MAINTAINER Michael Twomey, mick@twomeylee.name

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu saucy main " > /etc/apt/sources.list.d/jdk.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    ca-certificates \
    ca-certificates-java \
    oracle-java7-installer \
    oracle-java7-set-default \
    && apt-get autoremove \
    && apt-get clean

RUN update-java-alternatives -s java-7-oracle
