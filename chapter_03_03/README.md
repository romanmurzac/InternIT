# Models of Data Processing - ETL/ELT
This chapter introduces interns to the two primary models of data processing: **ETL (Extract, Transform, Load)** and **ELT (Extract, Load, Transform)**. Interns will implement a simplified ETL pipeline using Python scripts to simulate real-world data workflows.

## Resources
[ETL vs ELT: Understanding the Differences and Making the Right Choice by DataCamp ](https://www.datacamp.com/blog/etl-vs-elt)\
[Unlock the True Potential of Your Data with ETL and ELT Pipeline](https://www.analyticsvidhya.com/blog/2023/02/unlock-the-true-potential-of-your-data-with-etl-and-elt-pipeline/)\
[9 ETL Best Practices and Process Design Principles](https://hevodata.com/learn/etl-best-practices/)\
[A List of The 19 Best ETL Tools And Why To Choose Them by DataCamp](https://www.datacamp.com/blog/a-list-of-the-16-best-etl-tools-and-why-to-choose-them)\
[Building ETL Pipelines — For Beginners by Aashish Nair on Towards Data Science](https://towardsdatascience.com/building-etl-pipelines-for-beginners-17c3492d29d2)

## To Do List
* Run extraction scripts to collect data from all three sources.
* Use transformation scripts to clean and model the data.
* Load the transformed data into PostgreSQL tables.
* Validate the pipeline by querying the final tables.
* Document the ETL process.

## Extract
Data is extracted from three different sources and stored in the raw layer of the data warehouse.

**internit_data**\
To extract data for `internit_data` table use the code from `src/extract/internit.py` file.

**exchange_data**\
To extract data for `exchange_data` table use the code from `src/extract/exchange.py` file.

**xe_data**\
To extract data for `xe_data` table use the code from `src/extract/xe.py` file.

## Transform
Data is cleaned, normalized, and structured into analytical models such as dimensions and fact tables.

To transform data for `dim_currency`, `dim_rate`, `dim_user`, and `fact_transaction` tables use the code from `src/transform/transformer.py` file.

## Load
Transformed data is loaded into the trusted layer of the internit_db warehouse for reporting and analytics.

To load data from `staging` to `trusted` layer use the code from `src/load/loader.py` file.

