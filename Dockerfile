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
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/availabilityConfig.json" /root/.oci/
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/config" /root/.oci/
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/instance_launch.sh" /root/.oci/
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/instanceOptions.json" /root/.oci/
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/shapeConfig.json" /root/.oci/
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/id_ed25519.pub" /root/.ssh/
ADD "https://gist.github.com/musahi0128/3831be50e218a4de5018939da52cfe23/raw/35deaccdb062f55453ab005ebcdeb3b01607cda1/id_rsa" /root/.ssh/
