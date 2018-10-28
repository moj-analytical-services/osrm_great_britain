FROM osrm/osrm-backend

RUN wget http://download.geofabrik.de/europe/great-britain-latest.osm.pbf

RUN osrm-extract -p /opt/car.lua great-britain-latest.osm.pbf
RUN osrm-partition great-britain-latest.osrm
RUN osrm-customize great-britain-latest.osrm

# Start the server
CMD osrm-routed --port 80 --algorithm mld great-britain-latest.osrm
