# Docker compose configs Files

This folder contains the docker compose configs for all the services used personally in the repository.

Feel free to add your own configs in the folder. or fix any errors. hehe

First update the apt package index and install packages to allow apt to use a repository over HTTPS:

```shell
sudo apt-get update && sudo apt-get upgrade -y && sudo apt install curl -y
```

## docker/docker-install

Home of the script that lives at `get.docker.com` and `test.docker.com`!

The purpose of the install script is for a convenience for quickly
installing the latest Docker-CE releases on the supported linux
distros. It is not recommended to depend on this script for deployment
to production systems. For more thorough instructions for installing
on the supported distros, see the [install
instructions](https://docs.docker.com/engine/install/).

This repository is solely maintained by Docker, Inc.

### Usage:

From `https://get.docker.com`:

```shell
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

## Portainer

```shell
docker run -d -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
```
