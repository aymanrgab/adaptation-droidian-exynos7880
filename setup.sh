#!/bin/sh
echo "Droidian Adaptation for Exynos7880 devices"
echo "Made by Ayman"
umount /mnt/
mount /data/rootfs.img /mnt/
cd droidian
cp -r * /mnt/
chroot /mnt/ /bin/bash -c 'export PATH="$PATH:/usr/bin:/usr/sbin" && systemctl enable samsung-hwc && dpkg -i /tmp/debs/*.deb && rm -rf /tmp/debs'
umount /mnt/
echo "Done!"
echo "It is recommended to run these command once Droidian is booted;"
echo "sudo apt update && sudo apt upgrade && sudo apt dist-upgrade"
