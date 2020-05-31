#!/bin/bash

cd $(dirname $0)/..

aws dynamodb update-item \
  --table-name Project_Qinyun \
  --key file://config/key.json \
  --attribute-updates file://config/attribute-update.json \
  --return-values ALL_NEW

aws dynamodb update-item \
  --table-name Project_Qinyun \
  --key file://config/key-2.json \
  --attribute-updates file://config/attribute-update.json \
  --return-values ALL_NEW

aws dynamodb update-item \
  --table-name Project_Qinyun \
  --key file://config/key-3.json \
  --attribute-updates file://config/attribute-update.json \
  --return-values ALL_NEW
  