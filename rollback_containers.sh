#!/bin/sh
for i in wily trusty
do
    lxc-stop -n $i
    zfs umount zroot/lxc/$i
    zfs rollback zroot/lxc/$i@setup
    zfs mount zroot/lxc/$i
    lxc-start -n $i
done
