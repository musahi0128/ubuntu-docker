FROM ubuntu:latest

ENV TZ="Asia/Jakarta" DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt upgrade -yq && \
    apt install -yq curl openssh-client openssh-server python3-pip sudo
RUN suo /bin/bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
RUN apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
