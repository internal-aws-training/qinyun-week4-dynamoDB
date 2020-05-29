# AWS Training - DynamoDB

### SQL 和 NoSQL 的区别

- **SQL** 

> Structured Query language (SQL) is the standard language for dealing with Relational Databases. A relational database defines relationships in the form of tables.

- **NoSQL**

> NoSQL is a non-relational DMS, that does not require a fixed schema, avoids joins, and is easy to scale. NoSQL database is used for distributed data stores with humongous data storage needs. 

| Parameter | SQL | NoSQL |
| --- | --- | --- |
| 定义 | SQL数据库主要称为RDBMS或关系数据库 | NoSQL数据库主要被称为非关系数据库或分布式数据库 |
| 设计 | 传统的RDBMS使用SQL语法和查询来分析和获取数据 | NoSQL数据库系统由各种数据库技术组成。这些数据库是为满足现代应用程序开发需求而开发的 |
| 查询语言 | SQL | 没有声明的查询语言 |
| 类型 | SQL数据库是基于表的数据库 | NoSQL数据库可以是基于文档、键值对或图形数据库 |
| Schema | SQL数据库具有预定义的架构 | NoSQL数据库对非结构化数据采用动态schema |
| 扩展能力 | SQL数据库可以垂直扩展 | NoSQL数据库可水平扩展 |
| Best suited for | 适合复杂密集型查询 | 不适合复杂查询 |
| 分层数据存储 | SQL数据库不适用于分层数据存储 | 它支持键值对方法，因此更适合分层数据存储 |
| Variations | 一种类型，变化不大 | 许多不同的类型，包括键值存储，文档数据库和图形数据库 |
| 最适合 | RDBMS数据库是解决ACID问题的正确选择 | NoSQL是解决数据可用性问题的最佳选择 |
| 侧重点 | 当数据有效性非常重要时应使用它 | 当快速拥有数据比正确数据更重要时使用 |
| Best option | 需要支持动态查询时 | 需要根据不断变化的需求进行扩展时使用 |
| ACID vs. BASE Model | Atomicity, Consistency, Isolation, and Durability | Basically Available, Soft state, Eventually Consistent |


### DynamoDB 概念

- #### Table
  
  A table is a collection of data.

  ![avatar](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/images/HowItWorksPeople.png)

- #### Items

  Each table contains zero or more items. An item is a group of attributes that is uniquely identifiable among all of the other items. In a People table, each item represents a person. 

- #### Attributes

  Each item is composed of one or more attributes. An attribute is a fundamental data element, something that does not need to be broken down any further. For example, an item in a People table contains attributes called PersonID, LastName, FirstName, and so on.

- #### Primary Key

  When you create a table, in addition to the table name, you must specify the primary key of the table. The primary key uniquely identifies each item in the table, so that no two items can have the same key.

  - Partition key (Hash Key)

    DynamoDB uses the partition key's value as input to an internal hash function. The output from the hash function determines the partition (physical storage internal to DynamoDB) in which the item will be stored.

  - Partition key and sort key (Range Key)

    DynamoDB uses the partition key value as input to an internal hash function. The output from the hash function determines the partition (physical storage internal to DynamoDB) in which the item will be stored. All items with the same partition key value are stored together, in sorted order by sort key value.

- #### Secondary Indexes

  A secondary index lets you query the data in the table using an alternate key, in addition to queries against the primary key. 

  DynamoDB supports two kinds of indexes:

  - Global secondary index – An index with a partition key and sort key that can be different from those on the table.

  - Local secondary index – An index that has the same partition key as the table, but a different sort key.

- #### DynamoDB Streams

  DynamoDB Streams is an optional feature that captures data modification events in DynamoDB tables. The data about these events appear in the stream in near-real time, and in the order that the events occurred.

  Each event is represented by a stream record. If you enable a stream on a table, DynamoDB Streams writes a stream record whenever one of the following events occurs:

  A new item is added to the table: The stream captures an image of the entire item, including all of its attributes.

  An item is updated: The stream captures the "before" and "after" image of any attributes that were modified in the item.

  An item is deleted from the table: The stream captures an image of the entire item before it was deleted.

### DynamoDB 数据类型

  - ### Scalar Types (纯量)
  
    - Number
    - String
    - Binary
    - Boolean
    - Null

  - ### Document Types

    The document types are list and map. These data types can be nested within each other, to represent complex data structures up to 32 levels deep.

    - List

      ```
      FavoriteThings: ["Cookies", "Coffee", 3.14159]
      ```
    - Map

      ```
      {
        Day: "Monday",
        UnreadEmails: 42,
        ItemsOnMyDesk: [
            "Coffee Cup",
            "Telephone",
            {
                Pens: { Quantity : 3},
                Pencils: { Quantity : 2},
                Erasers: { Quantity : 1}
            }
          ]
      }
      ```

  - ### Set

  A set type can represent multiple scalar values. The set types are string set, number set, and binary set.
  ```
  ["Black", "Green", "Red"]

  [42.2, -19, 7.5, 3.14]

  ["U3Vubnk=", "UmFpbnk=", "U25vd3k="] 
  ```

### DynamoDB 数据一致性

  - Eventually Consistent Reads

    When you read data from a DynamoDB table, the response might not reflect the results of a recently completed write operation. The response might include some stale data. If you repeat your read request after a short time, the response should return the latest data.

  - Strongly Consistent Reads

    When you request a strongly consistent read, DynamoDB returns a response with the most up-to-date data, reflecting the updates from all prior write operations that were successful.
