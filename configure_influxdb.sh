#!/bin/bash
set -e

if [ -f /.influx_db_configured ]; then
  echo "=> InfluxDB has been configured!"
  exit 0
fi

echo "=> Configuring InfluxDB"

sed -i \
  -e "s/<--GRAPHITE_ENABLED-->/${GRAPHITE_ENABLED}/g" \
  -e "s/<--GRAPHITE_PORT-->/${GRAPHITE_PORT}/g"  \
  -e "s/<--GRAPHITE_DATABASE-->/${GRAPHITE_DATABASE}/g" \
  -e "s/<--GRAPHITE_UDP_ENABLED-->/${GRAPHITE_UDP_ENABLED}/g" \
  /config/config.toml

touch /.influx_db_configured

echo "=> InfluxDB has been configured as follows:"
echo "   InfluxDB GRAPHITE_ENABLED:      ${GRAPHITE_ENABLED}"
echo "   InfluxDB GRAPHITE_PORT:         ${GRAPHITE_PORT}"
echo "   InfluxDB GRAPHITE_DATABASE:     ${GRAPHITE_DATABASE}"
echo "   InfluxDB GRAPHITE_UDP_ENABLED:  ${GRAPHITE_UDP_ENABLED}"
echo "   ** Please check your environment variables if you find something is misconfigured. **"
echo "=> Done!"
