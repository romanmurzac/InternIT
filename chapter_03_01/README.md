# Data Warehousing

## Scenario
You are a Data Engineer in the InternIT company. The InternIT company is a Romanian StartUp in **online banking** and offers banking services for the customers.

## Business requirements
InternIT company provides a financial platform for currency transactions and provides financial consultance for their customers.

### Core Business Goals
1. **Currencies analysis** - Aggregate currencies evolution.
2. **Currencies insights** - Track trends in currencies demand.
3. **Prices trends** - Provide benchmarks for different currencies.
4. **Currencies popularity** - Determine which currencies are most in demand.

#### Reports
Buy transactions by currency.\
Sell transactions by currency.\
Price evolution of top 10 currencies.

#### Dashboards
Current RON price vs other currencies.\
Maximum and minum price on current day of the RON.\
Historical price evolution of the RON.

#### KPIs
Total currencies transactions.\
Average transaction amount.\
Top 10 amount transactions on buy.\
Top 10 amount transaction on sell.

## Data Warehouse Design
It has a server `InternIT` and a database named `internit_db`.

### Sources
The data sources for the company are:
- InterIT - Own Platform data.
- [ExchangeRate](https://www.exchangerate-api.com/) - Partner Platform for today traditional currencies rates.
- [XE](https://www.xe.com/symbols/) - Partner Platform for currencies names and symbols.

#### InternIT source
`internit_data`

| Column Name | Data Type | Description |
| ----- | ----- | ----- |
| transaction_id | VARCHAR(50) | Unique identifier of the transaction |
| first_name | VARCHAR(255) | Customer first name |
| last_name | VARCHAR(255) | Customer last name |
| user_id | VARCHAR(20) | Platform user identifier name |
| personal_number | INT | Personal numerical identifier |
| birth_date | DATE | Birth date |
| city | VARCHAR(50) | User's city |
| iban | VARCHAR(25) | Bank account number |
| amount | INT | Amount of money of the transaction |
| currency_code | VARCHAR(3) | Currency code used in the transaction |
| currency_to | VARCHAR(3) | Currency code used in the exchange transaction |
| type | VARCHAR(15) | Type of the transaction |
| time | TIMESTAMP | Transaction time |

#### ExchangeRate source
`exchange_data`

| Column Name | Data Type | Description |
| ----- | ----- | ----- |
| time_last_update_unix | INT | Unix timestamp from when data are avilable |
| time_next_update_unix | INT | Unix timestamo until when data are available |
| currency_code | VARCHAR(3) | Standard currency code |
| currency_rate | DECIMAL | Price of the currency vs reference currency |

#### XE source
`xe_data`

| Column Name | Data Type | Description |
| ----- | ----- | ----- |
| country_and_currency | VARCHAR(50) | Country and currency name |
| currency_code | VARCHAR(3) | Standard currency code |
| font_code | TEXT | Symbol of the currency in Code 2000 |
| font_arial | TEXT | Symbol of the currency in Arial |
| unicode_decimal | TEXT | Decimal unicode of the currency |
| unicode_hex | TEXT | Hex unicode of the currency |

## Resources
[What is a Data Warehouse? by IBM](https://www.ibm.com/topics/data-warehouse)\
[Evolution of the Modern Data Warehouse by Paige Roberts on Medium](https://medium.com/@paigeonthewing/evolution-of-the-modern-data-warehouse-f8b8d616149d)\
[Top 6 Data Warehouses and Best Picks for a Modern Data Stack on Weld Blog](https://weld.app/blog/top-5-data-warehouses)\
[Data Lake vs Data Warehouse vs Data Mart - Difference Between Cloud Storage Solutions by AWS](https://aws.amazon.com/compare/the-difference-between-a-data-warehouse-data-lake-and-data-mart/)\
[OLAP vs. OLTP: The Differences by Snowflake](https://www.snowflake.com/guides/olap-vs-oltp)\
[Data Warehouse Concepts: Kimball vs. Inmon Approach on Astera](https://www.astera.com/type/blog/data-warehouse-concepts/)