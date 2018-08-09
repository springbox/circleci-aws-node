FROM node:8-alpine

# Standard useful tools
RUN \
  apt-get update && \
  apt-get install -y jq zip build-essential curl && \
  apt-get clean

# Python
RUN \
  apt-get update && \
  apt-get install -y python2.7 python2.7-dev && \
  apt-get clean && \
  ln /usr/bin/python2.7 /usr/bin/python2 && \
  curl -O https://bootstrap.pypa.io/get-pip.py && \
  python2.7 get-pip.py && \
  rm get-pip.py

# AWS CLI Install
RUN \
  pip install awscli
