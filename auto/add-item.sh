#!bin/bash

cd $(dirname $0)/..

aws dynamodb put-item \
  --table-name Project_Qinyun \
  --item file://config/put-item.json \
  --return-values ALL_OLD
