FROM debian:stretch-slim

# Deps
RUN apt-get update && apt-get install -y --fix-missing \
make \
cmake \
g++ \
libboost-dev \
libboost-system-dev \
libboost-filesystem-dev \
libexpat1-dev \
zlib1g-dev \
libbz2-dev \
libpq-dev \
libproj-dev \
lua5.2 \
liblua5.2-dev \
git-core \
curl

# build osm2pgsql
RUN cd /tmp \
&& git clone https://github.com/openstreetmap/osm2pgsql.git \
&& mkdir -p osm2pgsql/build \
&& cd osm2pgsql/build \
&& cmake .. \
&& make install

COPY entrypoint /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint

ENV BB_WEST=-82.4932 BB_NORTH=23.0241 BB_EAST=-82.1740 BB_SOUTH=23.2003 CACHE_SIZE=500

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/local/bin/entrypoint"]
