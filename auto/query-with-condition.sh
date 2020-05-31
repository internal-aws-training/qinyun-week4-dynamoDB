#!/bin/bash

cd $(dirname $0)/..

aws dynamodb query \
  --table-name Project_Qinyun \
  --key-conditions file://config/key-conditions.json \
  --query-filter file://config/query-filter.json
