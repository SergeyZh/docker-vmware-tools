#!/bin/sh

trap "/etc/vmware-tools/init/vmware-tools-services stop; killall tail; exit 0" SIGINT SIGTERM SIGHUP

/etc/vmware-tools/init/vmware-tools-services start

touch /var/log/container.log
tail -F /var/log/container.log &

wait

