# automation-flow

This repository contains:
 - the definition of a docker image to feed a PostgresSQL database with Open Street Map data
 - a docker stack file one can use to set up
    - a PostgresSQL database with the PostGIS extension
    - a script to sync the database with open street map data
    - a script to draw some data from the database and upload it to Mapbox service. This script has [its own repository](https://github.com/Citykleta/postgis-to-mapbox)

You'll find the relevant environment variables in the db-stack directory.

## usage

Once you have copied the **db-stack** folder and changed the env files to match your configuration run
1. ``docker-compose up db`` to start the db
2. ``docker-compose up sync`` whenever you want to update your database with Open Street Map data
3. ``docker-compose up mapbox`` when you want to upload the data to a tileset

