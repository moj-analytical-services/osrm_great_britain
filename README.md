# osrm_great_britain
Open Streetmap Routing for Great Britain

Currently testing Wales only because it's much quicker to build
```
docker build -t osrm .
docker run -d -p 80:80 osrm
```

```
https://osrm-great-britain.apps.alpha.mojanalytics.xyz/route/v1/driving/-3.9528905,51.6197292;-3.1631493,51.4823679?steps=true
```