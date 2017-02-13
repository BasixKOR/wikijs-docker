FROM ubuntu:16.04
LABEL maintainer Basix <jsrtyu1120@gmail.com>

# Node.js and Node.js native compilation Installation
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential && npm install -g node-gyp

# Install Wiki.js
# curl -s https://api.github.com/repos/Requarks/wiki/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4
