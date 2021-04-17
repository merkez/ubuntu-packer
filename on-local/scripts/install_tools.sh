#!/bin/bash -eux

## install nmap
echo "==> Installing nmap and net-tools"
apt update -y
apt install net-tools -y
apt update -y
apt install install nmap -y

## install ubuntu-desktop gnome
echo "==> Installing ubuntu-desktop gnome "
apt update -y
apt install ubuntu-desktop -y


## install xrdp
echo "==> Installing xrdp"
apt update -y
apt install xrdp -y

