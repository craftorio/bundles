#!/usr/bin/env bash
set -x
set -e
REGION_MAX_DISTANCE=1
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1; }
./stop.sh

if [[ -d  worlds/world/dimensions/twilightforest/twilightforest/region ]]; then
  cd worlds/world/dimensions/twilightforest/twilightforest/region
  ls | awk -F\. '{ if ($2 < -'${REGION_MAX_DISTANCE}' || $3 < -'${REGION_MAX_DISTANCE}' || $2 > '${REGION_MAX_DISTANCE}' || $3 > '${REGION_MAX_DISTANCE}') { print $0; }  }' | xargs rm
  cd -
fi

if [[ -d worlds/world/dimensions/twilightforest/skylight_forest/region ]]; then
cd worlds/world/dimensions/twilightforest/skylight_forest/region
ls | awk -F\. '{ if ($2 < -'${REGION_MAX_DISTANCE}' || $3 < -'${REGION_MAX_DISTANCE}' || $2 > '${REGION_MAX_DISTANCE}' || $3 > '${REGION_MAX_DISTANCE}') { print $0; }  }' | xargs rm
cd -
fi

if [[ -d worlds/world/dimensions/rats/ratlantis/region ]]; then
cd worlds/world/dimensions/rats/ratlantis/region
ls | awk -F\. '{ if ($2 < -'${REGION_MAX_DISTANCE}' || $3 < -'${REGION_MAX_DISTANCE}' || $2 > '${REGION_MAX_DISTANCE}' || $3 > '${REGION_MAX_DISTANCE}') { print $0; }  }' | xargs rm
cd -
fi

if [[ -d worlds/world/DIM-1/region ]]; then
cd worlds/world/DIM-1/region
ls | awk -F\. '{ if ($2 < -'${REGION_MAX_DISTANCE}' || $3 < -'${REGION_MAX_DISTANCE}' || $2 > '${REGION_MAX_DISTANCE}' || $3 > '${REGION_MAX_DISTANCE}') { print $0; }  }' | xargs rm
cd -
fi

./start.sh
