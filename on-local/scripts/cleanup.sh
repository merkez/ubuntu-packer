#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-ubuntu}

# Apt cleanup.
echo "==> Autoremove clean"
apt autoremove
apt update


echo "==> Cleaning up tmp"
rm -rf /tmp/*


# Remove Bash history
unset HISTFILE
rm -f /root/.bash_history
rm -f /home/${SSH_USER}/.bash_history

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
