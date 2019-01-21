#!/bin/sh
set -e

curl --compress https://overpass-api.de/api/map?bbox=-82.4932,23.0241,-82.1740,23.2003 -o /osm-data/la-habana.osm

exec "$@"
