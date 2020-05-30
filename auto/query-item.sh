#!bin/bash

cd $(dirname $0)/..

aws dynamodb get-item \
  --table-name Project_Qinyun \
  --key file://config/key.json
