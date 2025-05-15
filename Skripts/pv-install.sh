#!/bin/bash

mkdir /docker
mkdir /docker/portainer
mkdir /docker/evcc/
mkdir /docker/evcc/.evcc
mkdir /docker/iobroker
mkdir /docker/iobroker/iobroker-data
mkdir /docker/iobroker/redis-data
mkdir /docker/iobroker/influx-data
mkdir /docker/iobroker/influx-data/influxdb_v1
mkdir /docker/iobroker/influx-data/influxdb_v2
mkdir /docker/iobroker/influx-data/influxd_conf
mkdir /docker/filebrowser
touch /docker/evcc/evcc.yaml

/usr/bin/docker volume create --driver local --opt type=none --opt device=/docker/portainer --opt o=bind portainer_data

/usr/bin/docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

/usr/bin/docker ps -a