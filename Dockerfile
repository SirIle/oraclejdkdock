# Create a docker base image for Oracle JRE 1.7 and a few essentials
FROM sirile/ubuntu:0.2
MAINTAINER Ilkka Anttonen version: 0.2

# Add the repositories
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/oracle.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN apt-get update

# Install Oracle JDK 1.7
RUN apt-get install -y oracle-jdk7-installer
