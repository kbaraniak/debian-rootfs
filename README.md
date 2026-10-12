# Debian rootfs (Trixie and above)
NOTE: This does not contain the kernel, it's intended for minimal chroots or containers.

WARNING: This repo is not actively maintained. It will be updated from time to time, but not maintained. Please fork and open PRs to help improve the project!

Usage of genrootfs.sh:
/path/to/genrootfs.sh (Debian version codename) (repository URL)

Example for testing: /path/to/genrootfs.sh testing http://deb.debian.org/debian/

----

✅ Download updated Debian version: https://github.com/kbaraniak/debian-rootfs/releases/latest

## How to use ?
1. Extract archive using tar (Example: `tar -xvf debian-amd64*.tar.xz -C debian-rootfs/`) or use [auto_extract.sh](https://raw.githubusercontent.com/kbaraniak/debian-rootfs/main/auto_extract.sh)
2. Use automatic script [mount_rootfs.sh](https://raw.githubusercontent.com/kbaraniak/debian-rootfs/main/mount_rootfs.sh) or mount manual - required dirs as root user `mount -t proc /proc proc/ &&
                          mount --rbind /sys sys/ &&
                          mount --rbind /dev dev/ &&
                          mount --rbind /tmp tmp/`
3. Open Terminal & chroot to rootfs as root user ``chroot extracted_rootfs_folder /bin/bash``
4. Well Done ! Enjoy 😊
