# gb_mysql_db
Project based on an assignment of the Foundations of Data Management course in George Brown College's  Applied A.I. Solutions Development postgraduate program.

## Overview
This project is a simple example of using a relational database to store data from a datasource (here represented as an Excel spreadsheet), and utilizing the resulting tables to generate reports through SQL.

## Requirements
- docker
- Python
- Jupiter notebook

## Original data
The original dataset was provided in the file `Sample - Superstore.xls`. The file has 3 sheets with data that can be stored in a relational database.

## Relational database
The chosen database was MySQL, which we will be creating with docker.

For this, we can run the simple command

    docker run --name mysql-db -e MYSQL_ROOT_PASSWORD=1234 -d -p 3306:3306 mysql

We wll be creating tables that follow (but not strictly) the [Third normal form](https://en.wikipedia.org/wiki/Third_normal_form).

To create the tables we will be utilizing a simple Python Jupyter Notebook called [mysql.ipynb](https://github.com/GabsAki/gb_mysql_db/blob/main/mysql.ipynb) that contains all the CREATE TABLE schemas.

## Loading data into the tables
For this, we will utilize the Python Jupyter Notebook called [etl.ipynb](https://github.com/GabsAki/gb_mysql_db/blob/main/etl.ipynb). This file utilized `pandas` to read the data from Excel, do some basic treatment, format it to the desired schema, and upload it to Mysql.

## Querying the data
Finally, we create a sample query in the file [op_report.sql](https://github.com/GabsAki/gb_mysql_db/blob/main/op_report.sql) that can be used to aggregate the data inserted into our tables and generate an operational report.

We can us this query in any type of data manipulation tool that can connect to our docker MySQL instance, such as [Dbeaver](https://dbeaver.io/) or [MySQL Workbench](https://www.mysql.com/products/workbench/).
