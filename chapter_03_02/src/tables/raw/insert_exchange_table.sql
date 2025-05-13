INSERT INTO raw.exchange_data (
    time_last_update_unix
    , time_next_update_unix
    , currency_code
    , currency_rate
) VALUES (
    %s
    ,%s
    ,%s
    ,%s
);