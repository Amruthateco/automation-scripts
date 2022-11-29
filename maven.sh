#!/bin/bash

#delete privous existing repo folder, so that fresh copy can be clone
rm -rf build_demo

#cloning the central repo to local workspace
git clone https://github.com/Amruthateco/automation-scripts.git

#get in to the git repo directory
cd  build_demo
 
#before bulding java and maven need to be pre-installed
#run the maven package command to build .war file
mvn package

#copy the .war file to webapps under tomcat server in root directory
#cp -r  target/build_demo.war  /opt/tomcat10v/webapps/

#switch to bin to restart tomcat server
#cd /opt/tomcat10v/bin

#restart the tomcat server
#sudo ./shutdown.sh
#sudo ./startup.sh

