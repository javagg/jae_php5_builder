FROM ubuntu:lucid
MAINTAINER Alex Lee <lu.lee05@gmail.com>

RUN apt-get -q update

# Install packages that JAE has provided
RUN apt-get -q -y install curl wget gcc g++ make unzip bzip2 automake autoconf libtool bison flex

ADD build build 
CMD ./build
