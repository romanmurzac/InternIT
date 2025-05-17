# Data Warehousing
Introduce interns to the fundamentals of data warehousing and its role in supporting analytical decision-making in a financial context.

## Resources
[What is a Data Warehouse? by IBM](https://www.ibm.com/topics/data-warehouse)\
[Evolution of the Modern Data Warehouse by Paige Roberts on Medium](https://medium.com/@paigeonthewing/evolution-of-the-modern-data-warehouse-f8b8d616149d)\
[Top 6 Data Warehouses and Best Picks for a Modern Data Stack on Weld Blog](https://weld.app/blog/top-5-data-warehouses)\
[Data Lake vs Data Warehouse vs Data Mart - Difference Between Cloud Storage Solutions by AWS](https://aws.amazon.com/compare/the-difference-between-a-data-warehouse-data-lake-and-data-mart/)\
[OLAP vs. OLTP: The Differences by Snowflake](https://www.snowflake.com/guides/olap-vs-oltp)\
[Data Warehouse Concepts: Kimball vs. Inmon Approach on Astera](https://www.astera.com/type/blog/data-warehouse-concepts/)

## To Do List
* Learn the core concepts of data warehousing, including OLAP vs OLTP, and dimensional modeling.
* Explore how data warehouses are used in banking to store and analyze large volumes of transaction data.
* Design the source tables and the raw schema (e.g., `internit_data`, `exchange_data`, `xe_data`).
* Use SQL to simulate loading data into a warehouse and perform basic analytical queries.
* Understand how data warehousing supports InternIT’s business goals such as currency trend analysis and transaction reporting.

## Business requirements
**InternIT** is a Romanian fintech startup offering a digital platform for **currency transactions** and **financial** consultancy. The platform supports real-time trading, historical analysis, and personalized insights for customers engaging in foreign exchange operations.

### Core Business Goals
1. **Currencies analysis** - Aggregate and analyze the evolution of various currencies over time.
2. **Currencies insights** - Identify and track trends in currency demand and usage.
3. **Prices trends** - Provide historical and real-time benchmarks for currency prices.
4. **Currencies popularity** - Determine which currencies are most frequently traded or requested.

#### Reports
* **Buy Transactions by Currency** - Breakdown of all buy-side transactions grouped by currency.
* **Sell Transactions by Currency** - Breakdown of all sell-side transactions grouped by currency.
* **Price Evolution of Top 10 Currencies** - Historical price trends for the most traded currencies.

#### Dashboards
* **Current RON Price vs Other Currencies** - Real-time comparison of the Romanian Leu (RON) against major currencies.
* **Max/Min RON Price Today** - Daily high and low values of RON across all tracked currencies.
* **Historical RON Price Evolution** - Time-series visualization of RON’s performance over time.

#### KPIs
* **Total Currency Transactions** - Total number of buy and sell transactions across all currencies.
* **Average Transaction Amount** - Mean value of all currency transactions.
* **Top 10 Buy Transactions** - Highest-value buy-side transactions.
* **Top 10 Sell Transactions** - Highest-value sell-side transactions.

## Data Warehouse Design
Design the foundational structure of InternIT’s data warehouse, which will serve as the central repository for analytical data used in currency transactions and financial insights. It has a server `InternIT` and a database named `internit_db`.

### Sources
The data sources for the company are:
- **InternIT** - Internal platform generating transactional data (buy/sell operations, customer activity).
- **[ExchangeRate](https://www.exchangerate-api.com/)** - External partner providing daily exchange rates for traditional currencies.
- **[XE](https://www.xe.com/symbols/)** - External partner offering metadata such as currency names and symbols.

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
| time_last_update_unix | INT | Unix timestamp from when data are available |
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