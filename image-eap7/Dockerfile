# JBoss EAP 7 Image for demos
FROM jboss-demo/jdk:8
# Maintainer details
MAINTAINER Serhat Dirik<serhat@redhat.com>
ADD . /tmp/host

RUN  chmod -R 777 /tmp/host \
 # Install EAP
 && mkdir /opt/jboss/eap \
 && /usr/bin/unzip -q /tmp/host/install/jboss-eap-7.0.0.zip -d /opt/jboss/eap \
 # Update Patches
 && /opt/jboss/eap/jboss-eap-7.0/bin/jboss-cli.sh --command="patch apply /tmp/host/install/jboss-eap-7.0.3-patch.zip --override-all" \
 #Add admin User
 && /opt/jboss/eap/jboss-eap-7.0/bin/add-user.sh admin redhat1! --silent \
 && cp /tmp/host/support/start*.sh /opt/jboss/eap/jboss-eap-7.0/bin \
 && cp /tmp/host/support/eap.sh /etc/profile.d \
 # Remove temporary files
 && rm -r /tmp/host/* \
 # Change group & rights
 && chgrp -R 0 /opt/jboss \
 && chmod -R 777 /opt/jboss

ENV JBOSS_HOME "/opt/jboss/eap/jboss-eap-7.0"
ENV EAP_HOME "/opt/jboss/eap/jboss-eap-7.0"
VOLUME ["/opt/jboss/eap/jboss-eap-7.0/standalone","/opt/jboss/eap/jboss-eap-7.0/domain"]
EXPOSE 16162/udp 16163 7080 7600 57600 3528 3529 8080 8443 8009 45700/udp 45688/udp 55200/udp 54200/udp 23364/udp 4712 4713  9990 9999 9993 8787
CMD ["/opt/jboss/eap/jboss-eap-7.0/bin/startEapStandalone.sh"]
