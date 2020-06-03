import boto3
from flask import make_response

dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:4569")

def create_table():
  table = dynamodb.create_table(TableName='Project_Qinyun', 
    KeySchema=[
      {
        "AttributeName": "projectName",
        "KeyType": "HASH"
      },
      {
        "AttributeName": "projectType",
        "KeyType": "RANGE"
      }
    ],
    AttributeDefinitions=[
      {
        "AttributeName": "projectName",
        "AttributeType": "S"
      },
      {
        "AttributeName": "projectType",
        "AttributeType": "S"  
      }
    ],
    ProvisionedThroughput={
      'ReadCapacityUnits': 10,
      'WriteCapacityUnits': 10
    })
  print("Table status:", table)
  return make_response(table.table_status, 201)

def get_item(project_name, project_type):
  table = dynamodb.Table("Project_Qinyun")
  try:
    response = table.get_item(Key={'projectName': project_name, 'projectType': project_type})
  except ClientError as e:
    print(e.response['Error']['Message'])
  else:
    return response['Item']
