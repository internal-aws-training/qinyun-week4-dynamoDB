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
