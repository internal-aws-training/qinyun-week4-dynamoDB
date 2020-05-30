#!bin/bash

# 1.create table
aws dynamodb create-table \
  --table-name Project_Qinyun \
  --attribute-definitions file://config/attributes.json \
  --key-schema file://config/key-schema.json \
  --billing-mode PAY_PER_REQUEST

# 2. Add item
aws dynamodb put-item \
  --table-name Project_Qinyun \
  --item file://config/put-item.json \
  --return-values ALL_OLD