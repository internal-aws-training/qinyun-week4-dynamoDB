#!/bin/bash

cd $(dirname $0)/..

aws dynamodb create-table \
  --table-name Project_Qinyun \
  --attribute-definitions file://config/attributes.json \
  --key-schema file://config/key-schema.json \
  --billing-mode PAY_PER_REQUEST
