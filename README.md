# osrm_great_britain
Open Streetmap Routing for Great Britain

Currently testing Wales only because it's much quicker to build
```
docker build -t osrm .
docker run -d -p 80:80 osrm
```
