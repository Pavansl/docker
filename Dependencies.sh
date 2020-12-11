#!/bin/bash

echo "####INSTALLING NODE####"
apt-get update -y
apt-get install curl -y
apt-get purge --auto-remove nodejs -y
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install g++ build-essential -y && \
    apt-get -qqy install nodejs -y && \

echo "###TESTING NPM VERSION#####"
node --version
npm --version

echo "####INSTALL JAVA###"
apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install -y &&\
    apt-get install openjdk-8-jre openjdk-8-jdk -y &&\
    ca-certificates \
    tzdata \
    zip \
    unzip \
    curl \
    wget \
    libqt5webkit5 \
    libgconf-2-4 \
    xvfb \
    gnupg \
    salt-minion \
  && rm -rf /var/lib/apt/lists/*
echo "###TESTING JAVA###"
java -version

echo "##INSTALLING NODE##"
apt-get update && apt-get -y install sudo
sudo npm install

# echo "##INSTALLING IMAP##"
# apt-get update && apt-get install -y
# libc-client-dev libkrb5-dev && rm -r /var/lib/apt/lists/*
sudo npm install
    
docker-php-ext-configure imap --with-kerberos --with-imap-ssl && docker-php-ext-install -j$(nproc) imap
docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
docker run --detach --name test dockertest

docker.build("my-image:${env.BUILD_ID}");
docker.build("my-image:${env.BUILD_NUMBER}");
echo "####done####"
