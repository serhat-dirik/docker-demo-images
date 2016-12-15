# Base JDK Image for demos
FROM fedora
# Maintainer details
MAINTAINER Serhat Dirik<serhat@redhat.com>

RUN dnf update -y \
 #Install necessary files
 && dnf -y install xmlstarlet saxon augeas bsdtar unzip java-1.8.0-openjdk-devel hostname git which sudo rsync iputils iproute httpd-tools wget tar findutils telnet initscripts nss_wrapper gettext \
 && dnf clean all \
 # Create a home for demos
 && mkdir /opt/jboss \
 # Change group & rights
 && chgrp -R 0 /opt/jboss \
 && chmod -R 777 /opt/jboss \
 #Install Maven
 && curl -sSL http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | tar xzf - -C /usr/share \
 && mv /usr/share/apache-maven-3.3.9 /usr/share/maven \
 && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

COPY support/settings.xml /usr/share/maven/conf/settings.xml

ENV MAVEN_VERSION 3.3.9
ENV JAVA_HOME /usr/lib/jvm/java
ENV M2_HOME /usr/share/maven

CMD ["/bin/bash"]
