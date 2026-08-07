# Debian rootfs (Trixie and above)
NOTE: I do not own the original repo. I just forked it to update it for Trixie.

NOTE 2: This does not contain the kernel, it's intended for minimal chroots or containers.

WARNING: This will no longer be actively maintained by ayoKolossos. If you would like to maintain it yourself, please fork this repo and make an issue linking to it.
Usage of genrootfs.sh:
/path/to/genrootfs.sh (Debian version codename) (repository URL)

Example for testing: /path/to/genrootfs.sh testing http://deb.debian.org/debian/

Original README:

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
