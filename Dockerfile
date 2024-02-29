FROM ubuntu:latest

ENV TZ="Asia/Jakarta" DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt upgrade -yq && \
    apt install -yq aria2 curl ffmpeg fuse3 htop jq mkvtoolnix nano ncdu openssh-client openssh-server parallel postgresql-client qbittorrent-nox rename speedtest-cli tmux tmate unzip python3-pip && \
    apt autoremove --purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl https://rclone.org/install.sh | bash && \
    curl -sL -o /usr/local/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.4/ttyd.x86_64 && chmod a+x /usr/local/bin/ttyd && \
    service ssh start
