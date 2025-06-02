#!/bin/bash
if [ -f /authorized_keys/authorized_keys ]; then
    cp /authorized_keys/authorized_keys /root/.ssh
    chmod 600 /root/.ssh/authorized_keys
    chmod 700 /root/.ssh
fi
service ssh start
exec tail -f /dev/null