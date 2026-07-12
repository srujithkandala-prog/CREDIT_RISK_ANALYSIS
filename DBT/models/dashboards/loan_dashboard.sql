{{ config(
    materialized='table'
) }}

SELECT

loan_type,

COUNT(*) total_applications,

SUM(loan_amount) total_loan_amount,

AVG(rate_of_interest) average_interest_rate,

AVG(loan_amount) average_loan_amount

FROM {{ source('silver','silver_credit_application') }}

GROUP BY loan_type