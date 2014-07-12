#!/bin/bash

set -e

if [ ! -f /.influx_db_configured ]; then
  /configure_influxdb.sh
fi

echo "=> Starting and running Influxdb..."
/usr/bin/influxdb -config=/config/config.toml
