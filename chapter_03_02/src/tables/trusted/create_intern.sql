CREATE TABLE IF NOT EXISTS trusted.intern (
    transaction_id VARCHAR(50) NOT NULL
    , first_name VARCHAR(255) NOT NULL
    , last_name VARCHAR(255) NOT NULL
    , city VARCHAR(50) NOT NULL
    , currency VARCHAR(50) NOT NULL
    , amount_standard BIGINT NOT NULL
    , type VARCHAR(15) NOT NULL
    , time TIMESTAMP NOT NULL
);