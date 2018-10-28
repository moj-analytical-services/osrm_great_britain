FROM osrm/osrm-backend

RUN wget http://download.geofabrik.de/europe/great-britain/wales-latest.osm.pbf

RUN osrm-extract -p /opt/car.lua wales-latest.osm.pbf
RUN osrm-partition wales-latest.osrm
RUN osrm-customize wales-latest.osrm

# Start the server
CMD osrm-routed --port 80 --algorithm mld wales-latest.osrm
