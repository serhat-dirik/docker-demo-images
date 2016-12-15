#!/bin/bash
IPADDR=$(ip a s | sed -ne '/127.0.0.1/!{s/^[ \t]*inet[ \t]*\([0-9.]\+\)\/.*$/\1/p}')
_HOST_NAME="$(cat /etc/hostname)"

/opt/jboss/jdg/jboss-datagrid-7.0.0-server/bin/domain.sh -b $IPADDR -bmanagement $IPADDR \
  -Djboss.node.name=$_HOST_NAME \
  --debug 8787 \
  -Djava.net.preferIPv4Stack=true
