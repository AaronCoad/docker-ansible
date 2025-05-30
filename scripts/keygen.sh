#!/bin/bash
test -f ~/.ssh/id_rsa || ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N "" && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
service ssh start
ssh-keyscan "127.0.0.1" >> ~/.ssh/known_hosts
ssh-keyscan "0.0.0.0" >> ~/.ssh/known_hosts
ssh-keyscan "localhost" >> ~/.ssh/known_hosts
