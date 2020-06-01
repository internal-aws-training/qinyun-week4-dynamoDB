#!/bin/bash

cd $(dirname $0)/..

aws dynamodb scan \
  --table-name Project_Qinyun \
  --index-name memberName
  