# Dockerfile for Rust.
# See http://rust-lang.org/

# DOCKER-VERSION 1.0.0

## Start from Phusion's baseimage.
#---------------------------------
FROM phusion/baseimage:0.9.12

## Initial configuration.
#------------------------
ENV HOME /root
CMD [ "/sbin/my_init" ]

## Install development tools and dependencies.
#---------------------------------------------
RUN apt-get update && apt-get install -y curl build-essential git

## Download and install the Rust and Cargo nightly builds.
#---------------------------------------------------------
RUN curl www.rust-lang.org/rustup.sh | bash

## Clean up.
#-----------
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

## Additionnal configuration.
#----------------------------
VOLUME [ "/root/project" ]
WORKDIR /root/project
