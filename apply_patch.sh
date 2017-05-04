#!/bin/bash

DIR=`dirname $0`

#nova servers _get_servers patching

NOVASERVERS='/usr/lib/python2.7/dist-packages/nova/api/openstack/compute/servers.py'

#backing up

cp -n $NOVASERVERS $NOVASERVERS.backup

patch -N $NOVASERVERS ${DIR}/nova_all_states.patch
