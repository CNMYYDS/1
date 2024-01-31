#!/bin/bash
docker run -d \
  --name dashdot \
  --restart=always \
  --log-opt max-size=1m \
  -p 3000:3001 \
  -v /:/mnt/host:ro \
  --privileged \
  -eDASHDOT_ALWAYS_SHOW_PERCENTAGES=true
  -e DASHDOT_PAGE_TITLE=title 
  mauricenino/dashdot