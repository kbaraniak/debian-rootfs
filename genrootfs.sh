#!/bin/bash
set -euo pipefail
sudo apt update
sudo apt install debootstrap gzip tar -y
sudo mkdir rootfs-working
sudo debootstrap $1 rootfs-working/ $2
sudo tar -cvpf rootfs.tar -C rootfs-working/ .
sudo gzip rootfs.tar
sudo rm -rf rootfs-working/
sudo chown $USER:$USER rootfs.tar.gz
echo "All done!"
echo "A Debian rootfs file has been created with the name 'rootfs.tar.gz' in the current directory."
