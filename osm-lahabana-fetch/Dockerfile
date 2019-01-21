FROM debian:stretch-slim

RUN apt-get update \
      && apt-get install -y curl \
      && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

RUN mkdir /osm-data

ENTRYPOINT ["curl"]
#CMD ["--compress", "https://overpass-api.de/api/map?bbox=-82.4932,23.0241,-82.1740,23.2003"]
