#!/bin/bash
term_handler() {
    echo "Caught SIGTERM, exiting..."
    exit 0
}

trap term_handler SIGTERM

while true; do
    sleep 1
done
