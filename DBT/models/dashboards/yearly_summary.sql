{{ config(
    materialized='table'
) }}

SELECT

year,

COUNT(*) AS total_applications,

SUM(loan_amount) AS total_loan_amount,

AVG(rate_of_interest) AS average_interest_rate

FROM {{ source('silver','silver_credit_application') }}

GROUP BY year