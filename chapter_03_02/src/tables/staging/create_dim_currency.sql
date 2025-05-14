CREATE TABLE IF NOT EXISTS staging.dim_currency (
    currency_code VARCHAR(3) PRIMARY KEY
    , country VARCHAR(50)
    , currency VARCHAR(50)
    , font_code TEXT
    , font_arial TEXT
    , unicode_decimal TEXT
    , unicode_hex TEXT
);