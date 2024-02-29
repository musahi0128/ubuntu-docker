FROM ubuntu:latest

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt upgrade -yq && \
    apt install -yq curl openssh-client openssh-server python3-pip sudo && \
    curl -sL -o /tmp/oci-install.sh https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh && \
    sudo /bin/bash /tmp/oci-install.sh --accept-all-defaults && \
    rm /tmp/oci-install.sh && \
    apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
