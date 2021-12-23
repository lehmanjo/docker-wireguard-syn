# docker-wireguard-syn
Minimal Alpine docker image with wireguard/wireguard-go.  Designed to be used on a Synology device with Docker support but without kernel wireguard support.  Offers no functionality aside from starting a container that is automatically connected to a remote wireguard VPN server.

## Tested on
- Synology 1618+ 
- DSM 6.2.4
- Docker 20.10.3 from Synology Package Center
- Git Server 2.33.0 from Synology Package Center (for building only)

## Build

To build and run
```
docker-wireguard-syn$ cmd/build; cmd/run
```
To stop, rebuild and run
```
docker-wireguard-syn$ cmd/stop; cmd/clean; cmd/build; cmd/run
```
To open shell into running container
```
docker-wireguard-syn$ cmd/bash
```
To check gateways (host and container)
```
docker-wireguard-syn$ cmd/ip
Host Gateway: 116.121.42.170
Container Gateway: 93.192.42.41
```

## Run

Modify location of your wireguard configuration (e.g. wg0.conf).  Must be an absolute path.
```
docker-wireguard-syn$ vi cmd/run
WGCONF="${HOME}/my-vpn-wg0.conf"
```

Modify your local subnet.  VPN will be bypassed to access this subnet.
```
docker-wireguard-syn$ vi cmd/run
LOCAL_SUBNET="192.168.0.0/24"
```

Modify the container's timezone
```
TIMEZONE="Asia/Hong_Kong"
```
