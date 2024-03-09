#!/bin/bash
BIN=bin/thalos-server

DIR=$(dirname $(realpath $0))
cd "$DIR"

date
./stop.sh
timestamp=`date +%s`
$BIN -p ./thalos.pid 2> out.log &

sleep 1

tail -f out.log logs/*.log