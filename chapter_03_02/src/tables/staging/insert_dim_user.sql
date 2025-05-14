INSERT INTO staging.dim_user (user_id, first_name, last_name, personal_number, birth_date, city, iban)
SELECT DISTINCT
    user_id
    , first_name
    , last_name
    , personal_number
    , birth_date
    , city
    , iban
FROM
    raw.internit_data
WHERE
    user_id IS NOT NULL
ON CONFLICT (user_id) DO NOTHING;