FROM centos:latest as Base

WORKDIR /installation-files

COPY . .

RUN yum install -y wget

WORKDIR /installation-files/centos/centos-8.x/centos-8.3-hpc

RUN ./init.sh

WORKDIR /installation-files/centos/centos-8.x/common

RUN ./install_utils.sh

WORKDIR /installation-files/centos/centos-8.x/centos-8.3-hpc

ENV TOP_DIR=../../..
ENV COMMON_DIR=../../../common
ENV EST_DIR=../../../tests

RUN ./install_gcc.sh
