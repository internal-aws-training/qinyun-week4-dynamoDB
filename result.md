## Create Table

```json
{
    "TableDescription": {
        "AttributeDefinitions": [
            {
                "AttributeName": "projectName",
                "AttributeType": "S"
            },
            {
                "AttributeName": "projectType",
                "AttributeType": "S"
            }
        ],
        "TableName": "Project_Qinyun",
        "KeySchema": [
            {
                "AttributeName": "projectName",
                "KeyType": "HASH"
            },
            {
                "AttributeName": "projectType",
                "KeyType": "RANGE"
            }
        ],
        "TableStatus": "CREATING",
        "CreationDateTime": 1590826579.443,
        "ProvisionedThroughput": {
            "NumberOfDecreasesToday": 0,
            "ReadCapacityUnits": 0,
            "WriteCapacityUnits": 0
        },
        "TableSizeBytes": 0,
        "ItemCount": 0,
        "TableArn": "arn:aws:dynamodb:ap-southeast-1:494526681395:table/Project_Qinyun",
        "TableId": "e31c4999-8309-461f-b347-62078c7ce007",
        "BillingModeSummary": {
            "BillingMode": "PAY_PER_REQUEST"
        }
    }
}
```

## Query Item
```json
{
    "Item": {
        "startDate": {
            "M": {
                "month": {
                    "N": "3"
                },
                "year": {
                    "N": "2019"
                }
            }
        },
        "projectName": {
            "S": "Rent"
        },
        "projectType": {
            "S": "REA"
        },
        "memberName": {
            "M": {
                "lead": {
                    "S": "Yan Li"
                },
                "frontEnd": {
                    "S": "Yechun Song"
                }
            }
        }
    }
}
```

## After update
```json
{
    "Attributes": {
        "startDate": {
            "M": {
                "month": {
                    "N": "3"
                },
                "year": {
                    "N": "2019"
                }
            }
        },
        "projectName": {
            "S": "Rent"
        },
        "projectType": {
            "S": "REA"
        },
        "memberName": {
            "SS": [
                "Hong Wu",
                "Jiajun",
                "Qinyun",
                "Yan Li",
                "Yechun"
            ]
        }
    }
}
```

## Query with condition for `memberName` field
```json
{
    "Items": [
        {
            "startDate": {
                "M": {
                    "month": {
                        "N": "3"
                    },
                    "year": {
                        "N": "2019"
                    }
                }
            },
            "projectName": {
                "S": "Rent"
            },
            "projectType": {
                "S": "REA"
            },
            "memberName": {
                "SS": [
                    "Hong Wu",
                    "Jiajun",
                    "Qinyun",
                    "Yan Li",
                    "Yechun"
                ]
            }
        }
    ],
    "Count": 1,
    "ScannedCount": 1,
    "ConsumedCapacity": null
}
```

## Scan table with condition
```json
{
    "Items": [
        {
            "startDate": {
                "M": {
                    "month": {
                        "N": "1"
                    },
                    "year": {
                        "N": "2019"
                    }
                }
            },
            "projectName": {
                "S": "Data"
            },
            "projectType": {
                "S": "REA"
            },
            "memberName": {
                "SS": [
                    "Jiaheng",
                    "Shuai",
                    "Wenguang"
                ]
            }
        },
        {
            "startDate": {
                "M": {
                    "month": {
                        "N": "2"
                    },
                    "year": {
                        "N": "2019"
                    }
                }
            },
            "projectName": {
                "S": "Customer"
            },
            "projectType": {
                "S": "REA"
            },
            "memberName": {
                "SS": [
                    "Chenze",
                    "Doudou",
                    "MingMa"
                ]
            }
        }
    ],
    "Count": 2,
    "ScannedCount": 3,
    "ConsumedCapacity": null
}
```

## Update gsi
```json
{
    "TableDescription": {
        "AttributeDefinitions": [
            {
                "AttributeName": "memberName",
                "AttributeType": "S"
            },
            {
                "AttributeName": "projectName",
                "AttributeType": "S"
            },
            {
                "AttributeName": "projectType",
                "AttributeType": "S"
            }
        ],
        "TableName": "Project_Qinyun",
        "KeySchema": [
            {
                "AttributeName": "projectName",
                "KeyType": "HASH"
            },
            {
                "AttributeName": "projectType",
                "KeyType": "RANGE"
            }
        ],
        "TableStatus": "UPDATING",
        "CreationDateTime": 1590826579.443,
        "ProvisionedThroughput": {
            "NumberOfDecreasesToday": 0,
            "ReadCapacityUnits": 0,
            "WriteCapacityUnits": 0
        },
        "TableSizeBytes": 274,
        "ItemCount": 3,
        "TableArn": "arn:aws:dynamodb:ap-southeast-1:494526681395:table/Project_Qinyun",
        "TableId": "e31c4999-8309-461f-b347-62078c7ce007",
        "BillingModeSummary": {
            "BillingMode": "PAY_PER_REQUEST",
            "LastUpdateToPayPerRequestDateTime": 1590826579.443
        },
        "GlobalSecondaryIndexes": [
            {
                "IndexName": "memberName",
                "KeySchema": [
                    {
                        "AttributeName": "memberName",
                        "KeyType": "HASH"
                    }
                ],
                "Projection": {
                    "ProjectionType": "ALL"
                },
                "IndexStatus": "CREATING",
                "Backfilling": false,
                "ProvisionedThroughput": {
                    "NumberOfDecreasesToday": 0,
                    "ReadCapacityUnits": 0,
                    "WriteCapacityUnits": 0
                },
                "IndexSizeBytes": 0,
                "ItemCount": 0,
                "IndexArn": "arn:aws:dynamodb:ap-southeast-1:494526681395:table/Project_Qinyun/index/memberName"
            }
        ]
    }
}
```

## Scan by index
```json
{
    "Items": [
        {
            "startDate": {
                "M": {
                    "month": {
                        "N": "3"
                    },
                    "year": {
                        "N": "2019"
                    }
                }
            },
            "projectName": {
                "S": "Rent"
            },
            "projectType": {
                "S": "REA"
            },
            "memberName": {
                "S": "Yan Li"
            }
        },
        {
            "startDate": {
                "M": {
                    "month": {
                        "N": "2"
                    },
                    "year": {
                        "N": "2019"
                    }
                }
            },
            "projectName": {
                "S": "Customer"
            },
            "projectType": {
                "S": "REA"
            },
            "memberName": {
                "S": "Yan Li"
            }
        },
        {
            "startDate": {
                "M": {
                    "month": {
                        "N": "1"
                    },
                    "year": {
                        "N": "2019"
                    }
                }
            },
            "projectName": {
                "S": "Data"
            },
            "projectType": {
                "S": "REA"
            },
            "memberName": {
                "S": "Zhuowen"
            }
        }
    ],
    "Count": 3,
    "ScannedCount": 3,
    "ConsumedCapacity": null
}
```
