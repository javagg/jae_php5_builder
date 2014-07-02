FROM ubuntu:lucid
MAINTAINER Alex Lee <lu.lee05@gmail.com>

RUN apt-get -q update

# Install packages that JAE has provided
RUN apt-get -q -y install curl wget gcc g++ make unzip bzip2 automake autoconf libtool bison flex

# Install packages need for compiling php runtime (JAE provides)
RUN apt-get -q -y install libgd2-noxpm-dev libmysqlclient-dev libxml2-dev

# Install packages need for compiling php runtime (JAE doesn't provides)
RUN apt-get -q -y install libmcrypt-dev

# Add patched file
ADD gd_io.h gd_io.h

ADD build build 
CMD ./build
