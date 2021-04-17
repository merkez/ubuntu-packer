# Provision custom images 

This repository contains packer scripts to provision custom images on AWS or local. 

## On Local 

In order to generate custom ova file on local environment, it is enough to execute following command: 

```bash 
$ cd on-local
$ packer build ubuntu-20.04.json
```

Then it will start to process to install given tools under [scripts](./on-local/scripts/install_tools.sh) and provision the ova file with given username and password. (ubuntu:ubuntu)

## On AWS

It is also possible to provision custom AMI on AWS to be used, in order to create it. AWS Access and Secret Key should be set, other variables are optional. Once they set in place, 
the tools which will be installed automatically can be changed with more. 

It can be run by following:

```bash 
$ cd on-aws
$ packer build aws-packer.json
```
It will create a t2.medium instance to create AMI according to your preferences. 

Currently, this repository has following properties set for custom AMI: 

```yaml 

username: ubuntu
password: ubuntu
installed-tools: nmap, net-tools

```

In addition to given custom settings, there is no requirement to type password for user `ubuntu` to be able to use `sudo`. 

