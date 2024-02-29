FROM ubuntu:latest

ENV TZ="Asia/Jakarta" DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt upgrade -yq && \
    apt install -yq curl openssh-client openssh-server python3 sudo
RUN curl -sL -o /tmp/oci-install.sh https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh && \
    sudo /bin/bash /tmp/oci-install.sh --accept-all-defaults && \
    rm /tmp/oci-install.sh
RUN apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
