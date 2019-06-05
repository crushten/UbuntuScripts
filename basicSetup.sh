#!/bin/sh
# your code goes here

TOMCAT_VERSION="9.0.20"
JENKINS_INSTALL_LOCATION="~/jenkins"

sudo apt install openjdk-8-jdk -y

sudo apt-get install mysql-server -y

wget http://www.trieuvan.com/apache/tomcat/tomcat-9/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz

tar -xzvf apache-tomcat-$TOMCAT_VERSION.tar.gz
mv apache-tomcat-$TOMCAT_VERSION/ ~/tomcat/
rm ./apache-tomcat-$TOMCAT_VERSION.tar.gz

sudo cp ./tomcat9 /etc/init.d/tomcat9

chmod 755 /etc/init.d/tomcat9
update-rc.d tomcat9 defaults

sudo apt-get install ssh -y



# Jenkins WAR file
mkdir $JENKINS_INSTALL_LOCATION
wget --directory-prefix=$JENKINS_INSTALL_LOCATION http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# sed -i 's/8080/8081/g' /etc/default/jenkins

# Duplicity
apt-get install ncftp python-paramiko python-pycryptopp lftp python-boto python-dev librsync-dev

apt install duplicity