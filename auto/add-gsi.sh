#!/bin/bash

cd $(dirname $0)/..

aws dynamodb update-table \
  --attribute-definitions file://config/attributes-update.json \
  --table-name Project_Qinyun \
  --global-secondary-index-updates file://config/gsi-update.json
  