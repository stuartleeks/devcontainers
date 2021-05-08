#!/bin/bash

OS=linux
ARCH=amd64
LATEST_VERSION=$(curl --silent "https://api.github.com/repos/lawrencegripper/azbrowse/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')

if [[ -d ~/.local/bin ]]; then
    mkdir -p ~/.local/bin
    echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc
fi

wget -O /tmp/azbrowse.tar.gz https://github.com/lawrencegripper/azbrowse/releases/download/${LATEST_VERSION}/azbrowse_${OS}_${ARCH}.tar.gz 
tar -C ~/.local/bin/ -zxvf /tmp/azbrowse.tar.gz azbrowse
chmod +x ~/.local/bin/azbrowse

rm /tmp/azbrowse.tar.gz

echo "source <(~/.local/bin/azbrowse completion bash)" >> ~/.bashrc