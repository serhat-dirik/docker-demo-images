#!/bin/bash
IPADDR=$(ip a s | sed -ne '/127.0.0.1/!{s/^[ \t]*inet[ \t]*\([0-9.]\+\)\/.*$/\1/p}')
_HOST_NAME="$(cat /etc/hostname)"
/opt/jboss/eap/jboss-eap-7.0/bin/domain.sh -b $IPADDR -bmanagement $IPADDR -Djboss.node.name=$_HOST_NAME 
