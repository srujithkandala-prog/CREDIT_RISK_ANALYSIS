SELECT *
FROM {{ ref('fact_credit_application') }}
WHERE credit_score < 300
   OR credit_score > 850