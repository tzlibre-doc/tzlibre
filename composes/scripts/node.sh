#!/usr/bin/env bash

if [ ! -f /root/.tzlibre-node/identity.json ]; then
    echo "Generating identity..."
    /tzlibre/tzlibre-node identity generate 26
fi

/tzlibre/tzlibre-node run --bootstrap-threshold=0 --net-addr=0.0.0.0:9732 --rpc-addr=0.0.0.0:8732 --history-mode full
