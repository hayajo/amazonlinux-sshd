#!/bin/bash

env > /tmp/env.txt
env | grep AWS_ >> /root/.ssh/environment

root_pw=${ROOT_PW:-rooooot}

# generate host keys if not present
ssh-keygen -A

echo "root:$root_pw" | chpasswd

/usr/sbin/sshd "$@"

sleep INF
