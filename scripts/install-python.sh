#!/bin/bash
apt-get update && \
apt update && \
apt-get install -y gcc python2-dev libkrb5-dev && \
apt-get install python3-pip -y && \
pip3 install --upgrade pip && \
pip3 install --upgrade virtualenv && \
pip3 install pywinrm[kerberos] && \
apt install krb5-user -y && \ 
pip3 install pywinrm