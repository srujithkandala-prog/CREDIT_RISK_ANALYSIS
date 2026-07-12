SELECT *
FROM {{ ref('fact_credit_application') }}
WHERE rate_of_interest < 0