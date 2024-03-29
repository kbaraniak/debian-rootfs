# Debian rootfs (bookworm)
![image](https://user-images.githubusercontent.com/90936580/213817109-ac8c4562-de13-4582-b7c1-06d46db02a7a.png)

✅ Download updated Debian version: https://github.com/kbaraniak/debian-rootfs/releases/latest

📑 Installed software on this release: https://github.com/kbaraniak/debian-rootfs/blob/main/PACKAGES

## How to use ?
1. Extract archive using tar (Example: `tar -xvf debian-amd64*.tar.xz -C debian-rootfs/`) or use [auto_extract.sh](https://raw.githubusercontent.com/kbaraniak/debian-rootfs/main/auto_extract.sh)
2. Use automatic script [mount_rootfs.sh](https://raw.githubusercontent.com/kbaraniak/debian-rootfs/main/mount_rootfs.sh) or mount manual - required dirs as root user `mount -t proc /proc proc/ &&
                          mount --rbind /sys sys/ &&
                          mount --rbind /dev dev/ &&
                          mount --rbind /tmp tmp/`
3. Open Terminal & chroot to rootfs as root user ``chroot extracted_rootfs_folder /bin/bash``
4. Well Done ! Enjoy 😊
