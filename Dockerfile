# Dockerfile for Rust.
# See http://rust-lang.org/

# DOCKER-VERSION 1.0.0

## Start from CentOS 7.
#----------------------
FROM centos:centos7

## Install development tools and dependencies.
#---------------------------------------------
RUN yum install -y git make gcc-c++ python perl curl tar sudo

## Install both Rust and Cargo.
#------------------------------
RUN curl www.rust-lang.org/rustup.sh | bash

## Configure the container.
#--------------------------
ENV LD_LIBRARY_PATH /usr/local/lib/
CMD /bin/bash
VOLUME [ "/project" ]
WORKDIR /project
