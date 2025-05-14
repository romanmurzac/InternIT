CREATE TABLE IF NOT EXISTS staging.dim_user (
    user_id VARCHAR(20) PRIMARY KEY
    , first_name VARCHAR(255)
    , last_name VARCHAR(255)
    , personal_number BIGINT
    , birth_date DATE
    , city VARCHAR(50)
    , iban VARCHAR(25)
);