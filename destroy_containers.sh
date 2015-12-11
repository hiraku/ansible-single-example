#!/bin/sh
for i in wily trusty
do
    lxc-stop -n $i
    lxc-destroy -n $i
done
