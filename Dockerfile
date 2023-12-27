FROM ubuntu:latest

RUN apt update && apt install -qy curl openssh-client nano tmux tmate rename aria2 mkvtoolnix jq htop ncdu parallel qbittorrent-nox
