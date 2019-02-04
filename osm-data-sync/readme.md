# Citykleta/osm-data-sync

This image load a data set from [overpass-api](https://overpass-api.de/) bound to a bounding box.
It defaults to a bounding box around the city of La Habana - Cuba.

Note it is meant for small data set (like cities), and will recreate the database anytime it runs.

La Habana is about 10Mb (gzip)

It uses behind the scene:
- [Curl](https://en.wikipedia.org/wiki/CURL) for downloading the data set
- [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) to import the data into a [PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) (with the [PostGIS](https://en.wikipedia.org/wiki/PostGIS) extension) database

## Usage

You can define the bounding box through the environment variables:
- **BB_WEST** (default to -82.4932)
- **BB_NORTH** (default to 23.0241)
- **BB_EAST** (default to -82.1740)
- **BB_SOUTH** (default to 23.2003)

### Postgres connection info

It uses the same environment variables than the official [Postgres image](https://hub.docker.com/_/postgres):
- POSTGRES_PORT
- POSTGRES_DB
- POSTGRES_USER
- POSTGRES_HOST
- POSTGRES_PASSWORD

### example

``docker run --rm -e POSTGRES_USER=docker -e POSTGRES_PASSWORD=docker -e POSTGRES_DB=osm citykleta/osm-data-sync``

Alternatively you can directly use it with a database service through docker-compose.

See the set up in the [github repository](https://github.com/Citykleta/automation-flow/tree/master/db-stack)
