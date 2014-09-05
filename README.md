docker-vmware-tools
===================

VMWare tools for CoreOS in Docker image

This image is intended to provide VMWare Tools for CoreOS running under *VMWare ESXi* without modification of CoreOS.
You have run it in privileged mode to give access to the host system and I prefere to run it with 
option --net=host to see all IP addresses of host in vSphere client.

### Done
* Quiesce file system to make consistent snapshots
* vSphere can "see" all VM properties from CoreOS: hostname, IP addresses, etc...

### Not done yet
* You can't graceful shutdown the CoreOS system from vSphere client. I've made script `send-host-to-shutdown.sh` 
which run when you try "Shutdown Guest" but it still empty because I don't know how to shutdown Docker host from container.

## Usage
```
docker run -d --net=host --privileged sergeyzh/vmware-tools
```