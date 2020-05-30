#!bin/bash

cd $(dirname $0)/..

aws dynamodb batch-write-item \
  --request-items file://config/batch-write-item.json
