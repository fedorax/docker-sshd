FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server
RUN echo 'root:password' | chpasswd
RUN sed -i 's/#PasswordAuthentication yes/PermitRootLogin yes/' /etc/ssh/sshd_config && \
 sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN mkdir -p /run/sshd


