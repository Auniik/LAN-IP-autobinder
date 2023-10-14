#!/bin/bash

NET_WATCHER_DIR=/etc/NetworkManager/dispatcher.d/pre-up.d

if [ ! -d $NET_WATCHER_DIR ]; then
    echo "NetworkManager $NET_WATCHER_DIR is not available"
    exit
fi

cp ./update_hosts.sh.blueprint "$NET_WATCHER_DIR/update_hosts.sh"

chmod +x $NET_WATCHER_DIR/update_hosts.sh
chown root:root $NET_WATCHER_DIR/update_hosts.sh
