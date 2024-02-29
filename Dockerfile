FROM ubuntu:latest

ENV TZ="Asia/Jakarta" DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt upgrade -yq && \
    apt install -yq curl openssh-client openssh-server sudo tmux tmate unzip && \
    apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sL -o oci-install.sh https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh && \
    chmod a+x oci-install.sh && \
    oci-install.sh --accept-all-defaults && \
    service ssh start
