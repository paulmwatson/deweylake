WITH cleaned_data AS (
  SELECT
    *,
    LENGTH("Phone 1") >= 10 AS phone_valid,
    TRY_CAST("Subscription Date" AS DATE) AS sub_date_cleaned
  FROM
    deweylake.customers
),
month_summary AS (
  SELECT
    Country,
    STRFTIME('%m', sub_date_cleaned) AS month_num,
    STRFTIME('%B', sub_date_cleaned) AS month_name,
    COUNT(*) AS new_customers,
    COUNT(*) FILTER (
      WHERE
        phone_valid
    ) AS valid_phones
  FROM
    cleaned_data
  WHERE
    sub_date_cleaned IS NOT NULL
  GROUP BY
    Country,
    month_num,
    month_name
)
SELECT
  *
FROM
  month_summary
ORDER BY
  Country,
  month_num;