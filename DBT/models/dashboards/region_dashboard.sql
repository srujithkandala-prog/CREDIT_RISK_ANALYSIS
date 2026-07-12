{{ config(
    materialized='table'
) }}

SELECT

region,

COUNT(*) total_applications,

SUM(loan_amount) total_loan_amount,

AVG(loan_amount) average_loan_amount,

AVG(rate_of_interest) average_interest_rate,

SUM(CASE WHEN application_status='1' THEN 1 ELSE 0 END)
approved,

SUM(CASE WHEN application_status='0' THEN 1 ELSE 0 END)
rejected

FROM {{ source('silver','silver_credit_application') }}

GROUP BY region