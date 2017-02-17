FROM jenkins:2.32.2-alpine
MAINTAINER kctigerhawk

# Set the environment
ENV TZ=America/Chicago
ENV JAVA_OPTS="-Xmx8192m"
#ENV JENKINS_OPTS="--prefix=/jenkins"
#ENV JENKINS_HOME=/var/lib/jenkins/master/home

# Copy files
#COPY config.groovy /usr/share/jenkins/ref/init.groovy.d/config.groovy.overwrite
#COPY install.sh /tmp/install.sh
#COPY jenkins.sh /usr/local/bin/jenkins.ev.new.sh
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#COPY plugins /usr/share/jenkins/ref/plugins

# Run the install script
USER root
#RUN /tmp/install.sh && rm -f /tmp/install.sh

USER jenkins
