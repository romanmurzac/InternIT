INSERT INTO staging.fact_transaction (transaction_id, user_id, currency_id, rate_id, amount, currency_to, type, time)
SELECT DISTINCT
    id.transaction_id
    , id.user_id
    , xd.currency_code
    , ed.currency_code
    , id.amount
    , id.currency_to
    , id.type
    , id.time
FROM
    raw.internit_data id
LEFT JOIN raw.exchange_data ed ON id.currency_code = ed.currency_code
LEFT JOIN raw.xe_data xd ON id.currency_code = xd.currency_code;