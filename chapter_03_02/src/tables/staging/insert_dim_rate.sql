INSERT INTO staging.dim_rate (currency_code, valid_from, valid_to, currency_rate)
SELECT DISTINCT
    currency_code
    , TO_TIMESTAMP(time_last_update_unix)
    , TO_TIMESTAMP(time_next_update_unix)
    , currency_rate
FROM
    raw.exchange_data
WHERE
    currency_code IS NOT NULL
ON CONFLICT (currency_code) DO NOTHING;
