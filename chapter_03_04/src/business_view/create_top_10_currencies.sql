CREATE VIEW trusted.top_10_currencies AS
    SELECT
        currency,
        SUM(amount_standard) AS total_amount
    FROM
        trusted.intern
    GROUP BY currency
    ORDER BY SUM(amount_standard) DESC
    LIMIT 10;