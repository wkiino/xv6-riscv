FROM ubuntu:latest

LABEL varsion="1.0"

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update &&  apt -y upgrade 
RUN apt-get -y install  git build-essential gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu \
    iputils-ping net-tools iproute2 \
    wget 


# -- install gef
RUN wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
# to avoid text encoding error in gef 
RUN apt-get -y install locales
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale-gen
ENV PYTHONIOENCODING utf-8
ENV LC_CTYPE=C.UTF-8
# --

