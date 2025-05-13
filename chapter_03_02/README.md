# Architecture of Data Warehousing and Normalization

## Architecture of Data Warehousing
In `internit_db` database are created 3 layers:
* **raw** --> source data
* **staging** --> transformed data
* **trusted** --> consumtion data

### Raw layer

#### Create layer
To create `raw` layer use the SQL query from `src/schemas/raw.sql` file.

#### Extract data

**internit_data**\
To extract data for `internit_data` table use the code from `src/extract/internit.py` file.

**exchange_data**\
To extract data for `exchange_data` table use the code from `src/extract/exchange.py` file.

**xe_data**\
To extract data for `xe_data` table use the code from `src/extract/xe.py` file.


### Staging layer


### Trusted layer

## Normalization

## Resources
[Data Warehouse Architecture Layers, Principles & Practices to Know on StreamSets](https://streamsets.com/blog/data-warehouse-architecture-explained/)\
[Modern Data Warehouses: Functions, Architecture, & Examples on Estuary](https://estuary.dev/modern-data-warehouse/)\
[How to evaluate and optimize data warehouse performance on TechTarget](https://www.techtarget.com/searchdatamanagement/tip/How-to-evaluate-and-optimize-data-warehouse-performance)\
[What is Normalization in DBMS (SQL)? 1NF, 2NF, 3NF Example on guru99.com](https://www.guru99.com/database-normalization.html)\
[The Problem of Redundancy in Database on GeeksforGeeks](https://www.geeksforgeeks.org/the-problem-of-redundancy-in-database/)\
[Anomalies in Relational Model on GeeksforGeeks](https://www.geeksforgeeks.org/anomalies-in-relational-model/)\
[Data Cleaning Challenge: Scale and Normalize Data on Kaggle](https://www.kaggle.com/code/rtatman/data-cleaning-challenge-scale-and-normalize-data)