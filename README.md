# Debian rootfs (bookworm)
![image](https://user-images.githubusercontent.com/90936580/213817109-ac8c4562-de13-4582-b7c1-06d46db02a7a.png)

✅ Updated Debian version download from: https://github.com/kbaraniak/debian-rootfs/releases/latest

📑 Installed software on this release: https://github.com/kbaraniak/debian-rootfs/blob/main/PACKAGES

## How to use ?
1. Extract archive using tar (Example: `tar -xzvf file_name.tar.xz`)
2. Mount required dirs as root user `mount -t proc /proc proc/ &&
                          mount --rbind /sys sys/ &&
                          mount --rbind /dev dev/`
3. Open Terminal & chroot to rootfs ``chroot extracted_rootfs_folder /bin/bash``
4. Well Done ! Enjoy 😊
