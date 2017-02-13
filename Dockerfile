FROM ubuntu:16.04
LABEL maintainer Basix <jsrtyu1120@gmail.com>

# Node.js and Node.js native compilation Installation
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential && npm install -g node-gyp

# Install Wiki.js

# curl -s https://api.github.com/repos/Requarks/wiki/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4
# https://github-cloud.s3.amazonaws.com/releases/65848095/d6793462-f13a-11e6-8a0f-ff8208b403e1.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170213%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170213T163936Z&X-Amz-Expires=300&X-Amz-Signature=92bfc36d586b795cd6690d195f1ecbf2589099eb1714021be2c95f09dca8da46&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=attachment%3B%20filename%3Dwiki-js.tar.gz&response-content-type=application%2Foctet-stream

RUN wget -O /var/www/wiki-js.tar.gz https://github-cloud.s3.amazonaws.com/releases/65848095/d6793462-f13a-11e6-8a0f-ff8208b403e1.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170213%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170213T163936Z&X-Amz-Expires=300&X-Amz-Signature=92bfc36d586b795cd6690d195f1ecbf2589099eb1714021be2c95f09dca8da46&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=attachment%3B%20filename%3Dwiki-js.tar.gz&response-content-type=application%2Foctet-stream
RUN tar -xzvf /var/www/wiki-js.tar.gz /var/www/
WORKDIR /var/www
