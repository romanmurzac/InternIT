# Data Governance 

## Create non-PII / PII data 
Same table will have non-PII and PII versions named as `data_pii` and `data_nonpii`.

### Create non-PII data
To create non-PII version of the table `data_nonpii` use the code from `src/create_data_nonpii.sql` file.
To insert non-PII data to the table use the code from `src/insert_data_nonpii.sql` file.
To select non-PII data from the table use the code from `src/select_data_nonpii.sql` file.

### Create PII data
To create PII version of the table `data_pii` use the code from `src/create_data_nonpii.sql` file.
To insert PII data to the table use the code from `src/insert_data_pii.sql` file.
To select PII data from the table use the code from `src/select_data_pii.sql` file.

## Establish Data Life Cycle
To create archive version of the data for `dim_rate` table use the code from `src/create_archive_rate.sql` file.
To delete archived data from `dim_rate` table use the code from `src/delete_dim_rate,sql` file.
To select archived data from `dim_rate_archive` table use the code from `src/select_current_rate.sql` file.

## Measure Data Quality
Updated `src/insert_data_nonpii.sql` and `src/insert_data_pii.sql` files to ensure data quality by removing records that contain NULL values.

## Check Data Security
See [chapter_03_04](../chapter_03_04/src/roles/).

## Resources
[What is Data Governance? by Google Cloud](https://cloud.google.com/learn/what-is-data-governance)\
[Ensure Good Data Ethics and Governance](https://www.datatopolicy.org/considerations/ensure-good-data-ethics-and-governance)\
[Data Ownership and Data Stewardship: Understanding the Difference by Sumit Mudliar on Medium](https://medium.com/data-quality-beyond/data-ownership-and-data-stewardship-understanding-the-difference-77c9961b21e0)\
[Data quality management: What, why, how, and best practices on Data Ladder](https://dataladder.com/data-quality-management/)\
[Introduction to Data Governance: Setting Standards and Policies](https://www.ciopages.com/data-governance/)\
[A step-by-step guide to setting up a data governance program](https://www.ibm.com/blog/a-step-by-step-guide-to-setting-up-a-data-governance-program/)\
[Effective Data Governance Program & Strategy: Plus Guides on Analytics8 ](https://www.analytics8.com/blog/how-to-build-an-effective-data-governance-program-and-strategy/)