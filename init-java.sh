#!/bin/bash

BASE_DIR=~/environment
cd $BASE_DIR
yum-config-manager --enable epel
yum update -y
wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
yum update -y
yum install -y apache-maven
yum install -y java-1.8.0-openjdk-devel
alternatives --config java
alternatives --config javac
