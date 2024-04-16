FROM ubuntu:latest

ENV ANSIBLE_VERSION 2.9.17

RUN apt-get update; \
    apt-get install -y gcc python3; \
    apt-get install -y python3-pip; \
    apt-get clean all

RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible

WORKDIR /ansible

VOLUME ["/ansible"]

RUN apt-get update; \
    apt-get install -y curl; \
    apt-get install -y wget; \
    apt-get install -y nodejs; \
    apt-get install -y npm; \
    apt install lxc -y; \
    apt install openssh-client -y; \
    apt install openssh-server -y; \
    apt install snapd -y; \
    Snap install lxd -y; \
    apt-get clean all


RUN wget https://deb.nodesource.com/setup_20.x
RUN chmod +x setup_20.x
RUN ./setup_20.x


