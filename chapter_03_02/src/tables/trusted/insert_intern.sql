INSERT INTO trusted.intern (transaction_id, first_name, last_name, city, currency, amount_standard, type, time)
    SELECT DISTINCT
        transaction_id
        , first_name
        , last_name
        , city
        , currency
        ,(amount * currency_rate) AS amount_standard
        , type
        , time
    FROM
        staging.fact_transaction ft
    LEFT JOIN staging.dim_rate dr ON ft.rate_id = dr.currency_code
    LEFT JOIN staging.dim_user du ON ft.user_id = du.user_id
    LEFT JOIN staging.dim_currency dc ON ft.currency_id = dc.currency_code
    WHERE transaction_id IS NOT NULL
        AND first_name IS NOT NULL
        AND last_name IS NOT NULL
        AND city IS NOT NULL
        AND currency IS NOT NULL
        AND amount IS NOT NULL
        AND currency_rate IS NOT NULL
        AND type IS NOT NULL
        AND time IS NOT NULL;