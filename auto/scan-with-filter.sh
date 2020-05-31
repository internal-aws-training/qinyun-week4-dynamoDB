#!/bin/bash

cd $(dirname $0)/..

aws dynamodb scan \
  --table-name Project_Qinyun \
  --scan-filter file://config/scan-filter.json
