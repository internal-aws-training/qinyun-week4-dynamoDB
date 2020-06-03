from flask import Flask
import dynamodb

app = Flask(__name__)

@app.route('/create-table', methods=['PUT'])
def create_table():
    return dynamodb.create_table()

@app.route('/project/<project>/type/<type>', methods=['GET'])
def get_item():
    return dynamodb.get_item(project, type)

if __name__ == '__main__':
    app.run()
