# packer-cloudsploit

Packer, Ansible, Serverspec, build to create a Docker image running Cloudsploit.

## Requirements

- Packer
- Ansible
- [Serverspec](https://serverspec.org/): gem install serverspec
- [docker-api](https://github.com/swipely/docker-api/releases): gem install docker-api

## Install
```shell
git clone https://github.com/apolloclark/packer-cloudsploit
cd ./packer-cloudsploit

# set your Docker hub username
export DOCKER_USERNAME="apolloclark" # $(whoami)

# ./all.sh
./build_packer_docker.sh
```

## Build Details

```shell
Cloudsploit
https://github.com/cloudsploit/scans
```