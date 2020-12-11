#!/bin/bash

echo "####INSTALLING NODE####"
apt-get update -y

echo "###TESTING NPM VERSION#####"
node --version
npm --version


echo "###TESTING JAVA###"
java -version

echo "##INSTALLING NODE##"
apt-get update 
 npm install
 npm install jasmine-node
 


docker.build("my-image:${env.BUILD_ID}");
docker.build("my-image:${env.BUILD_NUMBER}");
echo "####done####"
