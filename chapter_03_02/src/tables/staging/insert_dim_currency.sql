INSERT INTO staging.dim_currency (currency_code, country, currency, font_code, font_arial, unicode_decimal, unicode_hex)
SELECT DISTINCT
currency_code
, SUBSTRING(country_and_currency, 1, 15)
, SUBSTRING(country_and_currency, 16, 50)
, font_code
, font_arial
, unicode_decimal
, unicode_hex
FROM
    raw.xe_data
WHERE
    currency_code IS NOT NULL
ON CONFLICT (currency_code) DO NOTHING;