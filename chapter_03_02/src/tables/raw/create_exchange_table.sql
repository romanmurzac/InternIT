CREATE TABLE IF NOT EXISTS raw.exchange_data (
    time_last_update_unix INT
    , time_next_update_unix INT
    , currency_code VARCHAR(3)
    , currency_rate DECIMAL
)