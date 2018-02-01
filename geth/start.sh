#!/bin/bash

set -e
cd /root/eth-net-intelligence-api
perl -pi -e "s/XXX/$(hostname)/g" app.json
/usr/bin/pm2 start ./app.json
sleep 3
geth --datadir=/root/.ethereum init "/root/genesis.json"
sleep 3
BOOTSTRAP_IP=`getent hosts bootnode | cut -d" " -f1`
GETH_OPTS=${@/XXX/$BOOTSTRAP_IP}
geth $GETH_OPTS
