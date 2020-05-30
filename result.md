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