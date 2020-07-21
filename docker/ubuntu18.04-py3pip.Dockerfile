# image
FROM ubuntu:18.04

# settings
ENV DEBIAN_FRONTEND noninteractive

# initialize
RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y

# install python packages
RUN apt-get install python3 python3-pip -y
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
RUN pip install jupyter

# clean
RUN apt-get autoremove -y && apt-get clean -y

# set up user mode
RUN apt-get install sudo
RUN useradd -ms /bin/bash KE && usermod -aG sudo KE
USER KE
WORKDIR /home/KE