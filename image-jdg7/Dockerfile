# JBoss JDG 7 Image for demos
FROM jboss-demo/jdk:8
# Maintainer details
MAINTAINER Serhat Dirik<serhat@redhat.com>

ADD . /tmp/host
RUN chmod -R 777 /tmp/host \
 && mkdir /opt/jboss/jdg \
 && /usr/bin/unzip -q /tmp/host/install/jboss-datagrid-7.0.0-server.zip -d /opt/jboss/jdg \
 #Add admin User
 && /opt/jboss/jdg/jboss-datagrid-7.0.0-server/bin/add-user.sh admin redhat1! --silent \
 && cp /tmp/host/support/start*.sh /opt/jboss/jdg/jboss-datagrid-7.0.0-server/bin \
 && cp /tmp/host/support/jdg.sh /etc/profile.d \
 && rm -rf /tmp/host/* \
 # Change group & rights
 && chgrp -R 0 /opt/jboss \
 && chmod -R 777 /opt/jboss

ENV JDG_HOME "/opt/jboss/jdg/jboss-datagrid-7.0.0-server"
VOLUME ["/opt/jboss/jdg/jboss-datagrid-7.0.0-server/standalone","/opt/jboss/jdg/jboss-datagrid-7.0.0-server/domain"]
EXPOSE 16162/udp 16163 7080 7600 57600 3528 3529 8080 8443 8009 45700/udp 45688/udp 55200/udp 54200/udp 23364/udp 4712 4713  9990 9993 9999 8787 11211 11222 11223 16163
CMD /opt/jboss/jdg/jboss-datagrid-7.0.0-server/bin/startJdgClustered.sh
