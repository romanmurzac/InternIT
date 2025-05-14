CREATE TABLE IF NOT EXISTS staging.fact_transaction (
    transaction_id VARCHAR(50) PRIMARY KEY
    , user_id VARCHAR(20) REFERENCES staging.dim_user(user_id)
    , currency_id VARCHAR(3) REFERENCES staging.dim_currency(currency_code)
    , rate_id VARCHAR(3) REFERENCES staging.dim_rate(currency_code)
    , amount INT
    , currency_to VARCHAR(3)
    , type VARCHAR(15)
    , time TIMESTAMP
);