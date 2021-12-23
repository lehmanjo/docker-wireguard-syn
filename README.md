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
