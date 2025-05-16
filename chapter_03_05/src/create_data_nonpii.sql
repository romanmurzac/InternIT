CREATE TABLE IF NOT EXISTS staging.data_nonpii (
    transaction_id VARCHAR(50)
    , user_id VARCHAR(20)
    , first_name VARCHAR(255)
    , last_name VARCHAR(255)
    , personal_number BIGINT
    , birth_date DATE
    , city VARCHAR(50)
    , iban VARCHAR(25)
    , transaction_type VARCHAR(15)
    , amount_ron BIGINT
    , currency_code VARCHAR(3)
    , currency_name VARCHAR(50)
    , time TIMESTAMP
    , currency_rate DECIMAL
    , valid_from TIMESTAMP
    , valid_to TIMESTAMP
);