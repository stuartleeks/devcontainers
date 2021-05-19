#!/bin/bash 
set -e
DIR=$(cd `dirname $0` && pwd)
source $DIR/.lib.sh

start "Podman"

. /etc/os-release
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O /tmp/release.key
sudo apt-key add - < /tmp/release.key
rm /tmp/release.key
sudo apt-get update -qq
sudo apt-get -qq -y install podman

end 'podman' '--version'