INSERT INTO staging.data_pii (transaction_id, user_id, first_name, last_name,
    personal_number, birth_date, city, iban, transaction_type, amount_ron,
    currency_code,currency_name, time, currency_rate, valid_from, valid_to)
SELECT DISTINCT
  ind.transaction_id
  , ind.user_id
  , ind.first_name
  , ind.last_name
  , ind.personal_number
  , ind.birth_date
  , ind.city
  , ind.iban
  , ind.type
  , (ind.amount * exd.currency_rate)
  , ind.currency_code
  , xed.country_and_currency
  , ind.time
  , exd.currency_rate
  , TO_TIMESTAMP(exd.time_last_update_unix)
  , TO_TIMESTAMP(exd.time_next_update_unix)
FROM
  raw.internit_data ind
LEFT JOIN raw.exchange_data exd ON ind.currency_code = exd.currency_code
LEFT JOIN raw.xe_data xed ON ind.currency_code = xed.currency_code
WHERE
  ind.transaction_id IS NOT NULL
  AND ind.user_id IS NOT NULL
  AND first_name IS NOT NULL
  AND last_name IS NOT NULL
  AND personal_number IS NOT NULL
  AND birth_date IS NOT NULL
  AND ind.city IS NOT NULL
  AND iban IS NOT NULL
  AND ind.type IS NOT NULL
  AND ind.amount IS NOT NULL
  AND exd.currency_rate IS NOT NULL
  AND ind.currency_code IS NOT NULL
  AND xed.country_and_currency IS NOT NULL
  AND ind.time IS NOT NULL
  AND exd.currency_rate IS NOT NULL
  AND exd.time_last_update_unix IS NOT NULL
  AND exd.time_next_update_unix IS NOT NULL