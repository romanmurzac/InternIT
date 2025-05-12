# Data Warehousing

## Scenario
You are a Data Engineer in the InternIT company. The InternIT company is a Romanian StartUp that created a crypto-currency InterCoin and offers fast and secure transaction for the customers.

## Business requirements
InternIT company sell InterCoin crypto-currency through existing crypto exchanges and provides financial consultance for their customers.

### Core Business Goals
1. **Crypto currencies analysis** - Aggregate crypto currencies evolution.
2. **Crypto currencies insights** - Track trends in crypto currencies demand.
3. **Prices trends** - Provide benchmarks for different crypto currencies.
4. **Crypto currencies popularity** - Determine which crypto currencies are most in demand.

#### Reports
Buy Transactions by currency vs InterCoin.\
Sell Transactions by currency vs InterCoin.\
Price Evolution of top 10 currencies vs InterCoin.

#### Dashboards
Current InterCoin price vs other currencies.\
Maximum and minum price on current day of the InterCoin.\
Historical price evolution of the InterCoin.

#### KPIs
Total crypto currencies transactions.\
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
`To be completed...`

#### ExchangeRate source
`exchange_rate`
* time_last_update_unix TIMESTAMP
* time_next_update_unix TIMESTAMP
* base_code VARCHAR(3)
* rates:
   * currency_code VARCHAR(3)
   * currency_rate DECIMAL

#### XE source
`xe_data`

`To be completed...`

## Resources
[What is a Data Warehouse? by IBM](https://www.ibm.com/topics/data-warehouse)\
[Evolution of the Modern Data Warehouse by Paige Roberts on Medium](https://medium.com/@paigeonthewing/evolution-of-the-modern-data-warehouse-f8b8d616149d)\
[Top 6 Data Warehouses and Best Picks for a Modern Data Stack on Weld Blog](https://weld.app/blog/top-5-data-warehouses)\
[Data Lake vs Data Warehouse vs Data Mart - Difference Between Cloud Storage Solutions by AWS](https://aws.amazon.com/compare/the-difference-between-a-data-warehouse-data-lake-and-data-mart/)\
[OLAP vs. OLTP: The Differences by Snowflake](https://www.snowflake.com/guides/olap-vs-oltp)\
[Data Warehouse Concepts: Kimball vs. Inmon Approach on Astera](https://www.astera.com/type/blog/data-warehouse-concepts/)