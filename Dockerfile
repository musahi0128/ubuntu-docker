FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ Asia/Jakarta
ENV TERM xterm

RUN apt update && apt install -qy openssh-client nano tmux tmate rename aria2 mkvtoolnix jq htop ncdu parallel qbittorrent-nox
