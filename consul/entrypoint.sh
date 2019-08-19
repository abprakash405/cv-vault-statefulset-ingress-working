#!/bin/sh
export CONSUL_HTTP_ADDR=http://localhost:8500
/usr/bin/consul "$@"
